open Ast
open Lexing
open Parsing

module NameMap = Map.Make(String)
module GenericMap = Map.Make(Char)
module ModuleMap = Map.Make(String)
module KeywordsSet = Set.Make(String)


(* types *)

type typesTable = Ast.primitiveType NameMap.t
type environment = typesTable * typesTable

type substitutions = (id * primitiveType) list
type constraints = (primitiveType * primitiveType) list


(* mutable state *)
let type_variable = ref (Char.code 'A')

(* maintains a set of js keywords *)
let keywords = ["break"; "case"; "class"; "catch"; "const"; "continue";
                "debugger"; "default"; "delete"; "do"; "else";
                "export"; "extends"; "finally"; "for"; "function"; "if";
                "import"; "in"; "instanceof"; "new"; "return"; "super";
                "switch"; "this"; "throw"; "try"; "typeof"; "var"; "void";
                "while"; "with"; "yield" ];;
let js_keywords_set = List.fold_left (fun acc x -> KeywordsSet.add x acc)
    KeywordsSet.empty keywords;;

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

      (* check if JS keywords are passed as arguments *)
      List.iter (fun i -> if KeywordsSet.mem i js_keywords_set
                  then raise (failwith "cannot define keywords") else ()) ids;

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
      else if KeywordsSet.mem id js_keywords_set
      then raise (failwith "cannot define keywords")
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


let rec collect_expr (ae: aexpr): constraints =
  match ae with
  | AUnitLit(_) | ANumLit(_) | ABoolLit(_) | AStrLit(_) -> []
  | AVal(_) -> []
  | ABinop(ae1, op, ae2, t) -> 
    let et1 = type_of ae1 and et2 = type_of ae2 in

    let opc = match op with
      | Add | Sub | Mul | Div | Mod -> [(et1, TNum); (et2, TNum); (t, TNum)]
      | Caret -> [(et1, TString); (et2, TString); (t, TString)]
      | And | Or  -> [(et1, TBool); (et2, TBool); (t, TBool)]
      | Lte | Gte | Neq | Equals | Lt | Gt -> [(et1, et2); (t, TBool)]
      | Cons -> (match et2 with
          (* write somethign here *)
          | TList(x) -> [(et1, x); (t, et2)] 
          | T(_) -> [(et2, t); (et2, TList(et1)); (t, TList(et1))]
          | _ -> raise (failwith "lists have to be same type something")) 
      | _ -> raise (failwith "not a binary operator") in
    (collect_expr ae1) @ (collect_expr ae2) @ opc

  | AUnop(op, ae, t) ->
    let et = type_of ae in 
    let opc = (match op with
        | Not -> [(et, TBool); (t, TBool)]
        | Neg -> [(et, TNum); (t, TNum)]
        | _ -> raise (failwith "not a binary operator")) in
    (collect_expr ae) @ opc

  | AIf(ap, ae1, ae2, t) ->
    let pt = type_of ap and et1 = type_of ae1 and  et2 = type_of ae2 in
    let cons = [(pt, TBool); (et1, et2); (t, et1)] in
    (collect_expr ap) @ (collect_expr ae1) @ (collect_expr ae2) @ cons

  | AListLit(aes, t) ->
    let list_type = match t with
      | TList(x) -> x
      | _ -> raise (failwith "unreachable state reached")
    in
    let elem_conts = List.map (fun a -> (type_of ae, list_type)) aes in
    (List.flatten (List.map collect_expr aes)) @ elem_conts


  | _ -> []
;;
