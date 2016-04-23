open Ast
open Lexing
open Parsing

module NameMap = Map.Make(String)
module GenericMap = Map.Make(Char)
module ModuleMap = Map.Make(String)
module KeywordsSet = Set.Make(String)

type typesTable = Ast.primitiveType NameMap.t
type id = string
type environment = typesTable * typesTable

(* maintains a set of js keywords *)
let keywords = ["break"; "case"; "class"; "catch"; "const"; "continue";
                "debugger"; "default"; "delete"; "do"; "else";
                "export"; "extends"; "finally"; "for"; "function"; "if";
                "import"; "in"; "instanceof"; "new"; "return"; "super";
                "switch"; "this"; "throw"; "try"; "typeof"; "var"; "void";
                "while"; "with"; "yield" ];;
let js_keywords_set = List.fold_left (fun acc x -> KeywordsSet.add x acc)
    KeywordsSet.empty keywords;;

type substitutions = (id * primitiveType) list

let type_variable = ref (Char.code 'A')

let get_new_type () =
  let c = !type_variable in
  incr type_variable;
  T(Char.chr c)
;;

let merge_env (env: environment) : environment =
  let locals, globals = env in
  let merged_globals = NameMap.merge (fun k k1 k2 -> match k1, k2 with
      | Some k1, Some k2 -> Some k1
      | None, k2 -> k2
      | k1, None -> k1)
      locals globals in
  NameMap.empty, merged_globals
;;

let rec annotate_expr (e: expr) (env: environment) : (aexpr * environment) =
  match e with
  | UnitLit -> AUnitLit(TUnit), env
  | NumLit(n) -> ANumLit(n, TNum), env
  | BoolLit(b) -> ABoolLit(b, TBool), env
  | StrLit(s) -> AStrLit(s, TString), env
  | Binop(e1, op, e2) -> 
    let ae1, _ = annotate_expr e1 env
    and ae2, _= annotate_expr e2 env
    and new_type = get_new_type () in
    ABinop(ae1, op, ae2, new_type), env
  | Unop(op, e) -> let ae, _ = annotate_expr e env in
    let new_type = get_new_type () in
    AUnop(op, ae, new_type), env

  | Val(id) -> 
    let locals, globals = env in
    let typ = if NameMap.mem id locals
      then NameMap.find id locals
      else if NameMap.mem id globals
      then NameMap.find id globals
      else raise (failwith "undefined") in
    AVal(id, typ), env

  | FunLit(ids, e, t) -> begin
      match t with
      | TFun(arg_types, ret_type) ->

        (* annotates arguments with user-defined or new placeholders *)
        let annotated_args = List.map (fun (it, at) ->
            if at = TAny then (it, get_new_type ()) else (it, at))
            (List.combine ids arg_types) in

        (* merge locals and globals *)
        let locals, globals = merge_env env in

        (* augment local scope with fn args *)
        let new_locals = ListLabels.fold_left ~init: locals
            annotated_args ~f: (fun map (it, at) -> 
                if NameMap.mem it map
                then raise (failwith "cant reuse arg names")
                else NameMap.add it at map) in 

        (* prepare AFunLit *)
        let ae, _ = annotate_expr e (new_locals, globals) in
        let ret_type = if ret_type = TAny then get_new_type () else ret_type in
        let arg_types = List.map snd annotated_args in
        AFunLit(ids, ae, t, TFun(arg_types, ret_type)), env
      | _ -> raise (failwith "unreachable state")
    end

  | Call(fn, args) -> begin
      let afn, _  = annotate_expr fn env in 
      let aargs = List.map (fun arg -> fst (annotate_expr arg env)) args in
      ACall(afn, aargs, get_new_type ()), env 
    end

  | Assign(id, t, e) -> begin
      let locals, globals = env in

      (* do not allow reassignment *)
      if NameMap.mem id locals
      then raise (failwith "cannot redefine existing variable")

      (* annotate t with user-provided type or new placeholder *)
      else let t = if t = TAny then get_new_type () else t in
        let new_locals = NameMap.add id t locals in
        let ae, _ = match e with 
          (* to allow recursion, we need to add pass new environment *)
          | FunLit(_) -> annotate_expr e (new_locals, globals)
          | _ -> annotate_expr e env
        in AAssign(id, t, ae, TUnit), (new_locals, globals)
    end

  | ListLit(es) ->
    let aes = List.map (fun e -> fst (annotate_expr e env)) es in
    AListLit(aes, TList(get_new_type ())), env

  | MapLit(kvpairs) ->
    let akvpairs = List.map (fun (k, v) -> 
        let ak = fst (annotate_expr k env) 
        and av = fst (annotate_expr v env) in ak, av) 
        kvpairs 
    in AMapLit(akvpairs, TMap(get_new_type (), get_new_type ())), env

  | If(p, e1, e2) -> 
    let ap = fst (annotate_expr p env)
    and ae1 = fst (annotate_expr e1 env)
    and ae2 = fst (annotate_expr e2 env)
    in AIf(ap, ae1, ae2, get_new_type ()), env

  | Block(es) ->
      let new_env = merge_env env in
      let aes, new_env = ListLabels.fold_left ~init: ([], new_env) es
          ~f: (fun (aes, env) e -> let ae, env = annotate_expr e env in (ae :: aes, env))
      in ABlock(List.rev aes, get_new_type ()), env

  | _ -> AUnitLit(TUnit), env
;;

let rec type_of (aexpr: aexpr): primitiveType =
  match aexpr with
  | AUnitLit(t) -> t
  | ANumLit(_, t) -> t
  | ABoolLit(_, t) -> t
  | AStrLit(_, t) -> t
  | ABinop(_, _, _, t) -> t
  | AUnop(_, _, t) -> t
  | AListLit(_, t) -> t
  | AMapLit(_, t) -> t
  | ABlock(_, t) -> t
  | AAssign(_, _, _, t) -> t
  | AVal(_, t) -> t
  | AIf(_, _, _, t) -> t
  | ACall(_, _, t) -> t
  | AFunLit(_, _, _, t) -> t
  | AModuleLit(_, _, t) -> t
  | AThrow(_, t) -> t
  | ATryCatch(_, _, _, t) -> t
;;
