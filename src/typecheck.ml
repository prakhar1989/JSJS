open Ast
open Lexing
open Exceptions
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
let type_variable = (ref ['D']);;

(* maintains a set of js keywords *)
let keywords = ["break"; "case"; "class"; "catch"; "const"; "continue";
                "debugger"; "default"; "delete"; "do"; "else";
                "export"; "extends"; "finally"; "for"; "function"; "if";
                "import"; "in"; "instanceof"; "new"; "return"; "super";
                "switch"; "this"; "throw"; "try"; "typeof"; "var"; "void";
                "while"; "with"; "yield"; "val"; ];;

let js_keywords_set = List.fold_left (fun acc x -> KeywordsSet.add x acc)
    KeywordsSet.empty keywords;;

let get_new_type () =
  let rec aux (cs: char list): char list =
    let ys = match List.rev cs with
      | [] -> ['A']
      | 'Z' :: xs -> 'A' :: List.rev (aux (List.rev xs))
      | x :: xs -> (Char.chr ((Char.code x) + 1)) :: xs
    in List.rev ys
  in
  let curr_type_var = !type_variable in
  type_variable := aux (curr_type_var);
  T(String.concat "" (List.map Char.escaped curr_type_var))
;;

let modules = Lib.modules;;

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
      else raise (Undefined(id)) in
    AVal(id, typ), env

  | FunLit(ids, e, t) -> begin

      (* check if JS keywords are passed as arguments *)
      List.iter (fun i -> if KeywordsSet.mem i js_keywords_set
                  then raise (CannotRedefineKeyword(i)) else ()) ids;

      match t with
      | TFun(arg_types, ret_type) ->

        (* annotates arguments with user-defined or new placeholders *)
        let annotated_args = List.map (fun (it, at) ->
            match at with
            | TAny | T(_) -> (it, get_new_type ())
            | _ -> (it, at))
            (List.combine ids arg_types) in

        (* merge locals and globals *)
        let locals, globals = merge_env env in

        (* augment local scope with fn args *)
        let new_locals = ListLabels.fold_left ~init: locals
            annotated_args ~f: (fun map (it, at) ->
                if NameMap.mem it map
                then raise (AlreadyDefined(it))
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
      then raise (AlreadyDefined(id))
      else if KeywordsSet.mem id js_keywords_set
      then raise (CannotRedefineKeyword(id))
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

  | Block(es) -> begin
      let new_env = merge_env env in
      let aes, new_env = ListLabels.fold_left ~init: ([], new_env) es
          ~f: (fun (aes, env) e -> let ae, env = annotate_expr e env in (ae :: aes, env))
      in ABlock(List.rev aes, get_new_type ()), env
    end

  | Throw(e) -> AThrow(fst (annotate_expr e env), TExn), env

  | TryCatch(t, s, c) ->
    let at, _ = annotate_expr t env in
    let locals, globals = merge_env env in
    let new_locals = NameMap.add s TString locals in
    let ct, _ = annotate_expr c (new_locals, globals) in
    ATryCatch(at, s, ct, get_new_type ()), env

  | ModuleLit(id, e) ->
    if ModuleMap.mem id modules
    then
      let locals, globals = env in
      (* user defintions that use the same name
         as module definitions should be local scope
         whereas module defs should be in global scope *)
      let _, new_globals = merge_env (globals, ModuleMap.find id modules) in
      let new_env = (locals, new_globals) in
      AModuleLit(id, fst (annotate_expr e new_env), get_new_type ()), env
    else raise (ModuleNotFound(id))
;;

let rec type_of (aexpr: aexpr): primitiveType =
  match aexpr with
  | AUnitLit(t)           -> t
  | ANumLit(_, t)         -> t
  | ABoolLit(_, t)        -> t
  | AStrLit(_, t)         -> t
  | ABinop(_, _, _, t)    -> t
  | AUnop(_, _, t)        -> t
  | AListLit(_, t)        -> t
  | AMapLit(_, t)         -> t
  | ABlock(_, t)          -> t
  | AAssign(_, _, _, t)   -> t
  | AVal(_, t)            -> t
  | AIf(_, _, _, t)       -> t
  | ACall(_, _, t)        -> t
  | AFunLit(_, _, _, t)   -> t
  | AModuleLit(_, _, t)   -> t
  | AThrow(_, t)          -> t
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
          (* write something here *)
          | TList(x) -> [(et1, x); (t, et2)]
          | T(_) -> [(et2, TList(et1)); (t, TList(et1))]
          | _ -> raise (NonUniformTypeContainer(et1, et2)))
      | _ -> raise (InvalidOperation(et1, op)) in
    (collect_expr ae1) @ (collect_expr ae2) @ opc

  | AUnop(op, ae, t) ->
    let et = type_of ae in
    let opc = (match op with
        | Not -> [(et, TBool); (t, TBool)]
        | Neg -> [(et, TNum); (t, TNum)]
        | _ -> raise (InvalidOperation(et, op))) in
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
    let elem_conts = List.map (fun ae -> (list_type, type_of ae)) aes in
    (List.flatten (List.map collect_expr aes)) @ elem_conts

  (* remember to restrict key types to be TNum, TBool and TString,
     will require another type check *)
  | AMapLit(kvpairs, t) ->
    let kt, vt = match t with
      | TMap(kt, vt) -> kt, vt
      | _ -> raise (failwith "unreachable state reached")
    in
    let klist = List.map fst kvpairs in
    let vlist = List.map snd kvpairs in
    let k_conts = List.map (fun k -> (kt, type_of k)) klist in
    let v_conts = List.map (fun v -> (vt, type_of v)) vlist in
    (List.flatten (List.map collect_expr klist)) @
    (List.flatten (List.map collect_expr vlist)) @ k_conts @ v_conts

  | ABlock(aes, t) ->
    let last_type = (match List.hd (List.rev aes) with
    | AAssign(id, _, _, _) -> raise (InvalidReturnExpression(id))
    | ae -> type_of ae ) in
    (List.flatten (List.map collect_expr aes)) @ [(t, last_type)]

  | AAssign(id, t, ae, _) -> (collect_expr ae) @ [(t, type_of ae)]

  | AFunLit(_, ae, _, t) -> (match t with
      | TFun(_, ret_type) -> (collect_expr ae) @ [(type_of ae, ret_type)]
      | _ -> raise (failwith "unreachable state reached"))

  | ACall(afn , aargs, t) ->
    let typ_afn = (match afn with
        | AVal(_) | AFunLit(_) -> type_of afn
        | _ -> raise (failwith "unreachable state reached")) in
    let sign_conts = (match typ_afn with
        | TFun(arg_types, ret_type) -> begin
            let l1 = List.length aargs and l2 = List.length arg_types in
            if l1 <> l2
            then raise (MismatchedArgCount(l1, l2))
            else let arg_conts = List.map2 (fun ft at -> (ft, type_of at)) arg_types aargs in
              arg_conts @ [(t, ret_type)]
          end
        | T(_) -> [(typ_afn, TFun(List.map type_of aargs, t))]
        | _ -> raise (failwith "unreachable state reached")) in
    (collect_expr afn) @ (List.flatten (List.map collect_expr aargs)) @ sign_conts

  | AModuleLit(id, ae, t) ->
    let definitions = ModuleMap.find id modules in
    (match ae with
     | AVal(prop, ts) -> let prop_type = if NameMap.mem prop definitions
       then NameMap.find prop definitions
       else raise (UndefinedProperty(id, prop)) in
       (collect_expr ae) @ [(t, prop_type)]
     | ACall(afn, aargs, call_t) ->
       let prop = (match afn with
           | AVal(s, _) -> s
           |  _ -> raise (failwith "unreachable state")) in
       let prop_type = if NameMap.mem prop definitions
       then NameMap.find prop definitions
       else raise (UndefinedProperty(id, prop)) in
       (match prop_type with
       | TFun(_, ret_type) -> let new_call = ACall(afn, aargs, ret_type) in
         (collect_expr new_call) @ [(t, ret_type)]
       | _ -> raise(failwith "unreachable state"))
     | _ -> raise (failwith "unreachable state"))

  | AThrow(ae, t) -> collect_expr ae @ [(t, TExn)]

  | ATryCatch(atry, id, acatch, t) ->
    let ttry = type_of atry and tcatch = type_of acatch in
    if tcatch = TExn then raise (failwith "Can't throw in a catch block") else
    (collect_expr atry) @ (collect_expr acatch) @ [(ttry, tcatch); (t, tcatch)]

;;

let rec substitute (u: primitiveType) (x: id) (t: primitiveType) : primitiveType =
  match t with
  | TNum | TBool | TString | TUnit | TAny | TExn -> t
  | T(c) -> if c = x then u else t
  | TFun(t1, t2) -> TFun(List.map (substitute u x) t1, substitute u x t2)
  | TList(t) -> TList(substitute u x t)
  | TMap(kt, vt) -> TMap(substitute u x kt, substitute u x vt)
;;

let apply (subs: substitutions) (t: primitiveType) : primitiveType =
    List.fold_right (fun (x, u) t -> substitute u x t) subs t
;;

let rec unify (constraints: constraints) : substitutions =
  match constraints with
  | [] -> []
  | (x, y) :: xs ->
    (* generate substitutions of the rest of the list *)
    let t2 = unify xs in
    (* resolve the LHS and RHS of the constraints from the previous substitutions *)
    let t1 = unify_one (apply t2 x) (apply t2 y) in
    t1 @ t2

and unify_one (t1: primitiveType) (t2: primitiveType) : substitutions =
  match t1, t2 with
  | TNum, TNum | TBool, TBool | TString, TString | TUnit, TUnit -> []
  | TExn, _ | _, TExn -> []
  | T(x), z | z, T(x) -> [(x, z)]
  | TList(t1), TList(t2) -> unify_one t1 t2
  | TMap(kt1, vt1), TMap(kt2, vt2) -> unify [(kt1, kt2) ; (vt1, vt2)]
  (* This case is particularly useful when you are calling a function that returns a function *)
  | TFun(a, b), TFun(x, y) -> unify ((List.combine a x) @ [(b, y)])
  | _ -> raise (MismatchedTypes(t1, t2))
;;

let rec apply_expr (subs: substitutions) (ae: aexpr): aexpr =
  match ae with
  | ABoolLit(b, t)                -> ABoolLit(b, apply subs t)
  | ANumLit(n, t)                 -> ANumLit(n, apply subs t)
  | AStrLit(s, t)                 -> AStrLit(s, apply subs t)
  | AUnitLit(t)                   -> AUnitLit(apply subs t)
  | AVal(s, t)                    -> AVal(s, apply subs t)
  | AAssign(id, t, ae, _)         -> AAssign(id, apply subs t, apply_expr subs ae, TUnit)
  | ABinop(ae1, op, ae2, t)       -> ABinop(apply_expr subs ae1, op, apply_expr subs ae2, apply subs t)
  | AUnop(op, ae, t)              -> AUnop(op, apply_expr subs ae, apply subs t)
  | AListLit(aes, t)              -> AListLit(List.map (apply_expr subs) aes, apply subs t)
  | AMapLit(kvpairs, t)           -> AMapLit(List.map (fun (k, v) -> (apply_expr subs k, apply_expr subs v)) kvpairs, apply subs t)
  | AIf(ap, ae1, ae2, t)          -> AIf(apply_expr subs ap, apply_expr subs ae1, apply_expr subs ae2, apply subs t)
  | ABlock(aes, t)                -> ABlock(List.map (apply_expr subs) aes, apply subs t)
  | AFunLit(ids, ae, t1, t2)      -> AFunLit(ids, apply_expr subs ae, t1, apply subs t2)
  | ACall(afn, aargs, t)          -> ACall(apply_expr subs afn, List.map (apply_expr subs) aargs, apply subs t)
  | AModuleLit(id, ae, t)         -> AModuleLit(id, apply_expr subs ae, apply subs t)
  | AThrow(ae, t)                 -> AThrow(apply_expr subs ae, apply subs t)
  | ATryCatch(atry, s, acatch, t) -> ATryCatch(apply_expr subs atry, s, apply_expr subs acatch, apply subs t)
;;


let infer (expr: expr) (env: environment) : aexpr * environment =
  let aexpr, env = annotate_expr expr env in
  let constraints = collect_expr aexpr in
  let subs = unify constraints in
  let inferred_expr = apply_expr subs aexpr in
  inferred_expr, env
;;

let type_check (program: program) : (aexpr list) =

  (* setting the predefined environment *)
  let predefined = Lib.predefined in
  let env = (predefined, NameMap.empty) in

  (* build the inferred program by inferred each expression one by one
     and updating the environment as we go along *)
  let inferred_program, _ = ListLabels.fold_left program ~init: ([], env)

    ~f: (fun (acc, env) expr ->

          (* get the inferred expression and the updated environment *)
          let inferred_expr, env =
            try infer expr env
            with e -> handle_error e
          in

          (* if expression is assignment, update the environment *)
          let env = match inferred_expr with
            | AAssign(id, _, ae, _) ->
              let locals, globals = env and aet = type_of ae in
              let locals = NameMap.add id aet locals in
              (locals, globals)
            | _ -> env in

          (* save the inferred_expr and return it alongwith the env *)
          (inferred_expr :: acc, env))
  in

  (* returning the inferred program *)
  List.rev inferred_program
;;
