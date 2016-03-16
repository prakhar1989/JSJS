open Ast
open Lexing
open Parsing
open Exceptions
open Stringify


(*
1. re-defined function declarations should raise errors
2. unit assignments with non-unit type should raise errors
*)

module NameMap = Map.Make(String);;
type typesTable = Ast.primitiveType NameMap.t;;
type typeEnv = typesTable * typesTable;;

let build_map (formals: (string * primitiveType) list) =
  List.fold_left
    (fun acc_map (id, t) -> NameMap.add id t acc_map)
    (NameMap.empty) formals
;;

let rec type_of_expr (env: typeEnv) = function
  | UnitLit -> TUnit, env
  | NumLit(_) -> TNum, env
  | BoolLit(_) -> TBool, env
  | StrLit(_) -> TString, env
  | Binop(e1, op, e2) ->
    let t1, _ = type_of_expr env e1 and t2, _ = type_of_expr env e2 in
    if t1 <> t2 then raise (MismatchedOperandTypes (op, t1, t2))
    else begin
      match op with
      | Caret -> if t1 = TString then TString, env
        else raise (InvalidOperation(t1, Caret))
      | And | Or -> if t1 = TBool then TBool, env
        else raise (InvalidOperation(t1, op))
      | Add | Sub | Mul
      | Div | Mod -> if t1 = TNum then TNum, env
        else raise (InvalidOperation(t1, op))
      | Lte | Gte | Neq
      | Equals | Lt | Gt -> TBool, env
      | _ -> raise (InvalidOperation(t1, op))
    end
  | Unop(op, e) -> begin
      let t, _ = type_of_expr env e in
      match (op, t) with
      | Not, TBool -> TBool, env
      | Neg, TNum -> TNum, env
      | _, _ -> raise (InvalidOperation(t, op))
    end
  | ListLit(es) -> begin
      let ts = List.map
          (fun x -> let t, _ = type_of_expr env x in t)
          es
      in
      if List.length ts = 0 then TList(TSome), env
      else let list_type = List.fold_left
          (fun acc t -> if acc = t then acc
            else raise (NonUniformTypeContainer(acc, t)))
          (List.hd ts) (List.tl ts)
        in
        TList(list_type), env
    end
  | Block(es) -> begin
      let locals, globals = env in
      let merged_globals = NameMap.merge (fun k k1 k2 -> match k1, k2 with
          | Some k1, Some k2 -> Some k1
          | None, k2 -> k2
          | k1, None -> k1)
          locals globals in
      let env = NameMap.empty, merged_globals in
      match es with
      | [] -> TSome, env
      | x :: [] -> type_of_expr env x
      | x :: xs ->
        List.fold_left
          (fun (t, acc_env) e ->
             let newt, newenv = type_of_expr acc_env e in
             (newt, newenv))
          (type_of_expr env x) xs
    end
  | If(p, e1, e2) -> begin
      let pt, _ = type_of_expr env p in
      if pt <> TBool
      then raise (MismatchedTypes(TBool, pt))
      else let t1, _ = type_of_expr env e1 and t2, _ = type_of_expr env e2 in
      if t1 = t2 then t2, env else raise (MismatchedTypes(t1, t2))
    end
  | MapLit(kvpairs) -> begin
      match kvpairs with
      | [] -> TSome, env
      | (key, value) :: xs ->
        let start_key_type, _ = type_of_expr env key in
        let key_type = List.fold_left (fun acc (k, _) ->
            let t, _ = type_of_expr env k in
            if t = acc then acc else raise (MismatchedTypes(acc, t)))
            start_key_type xs
        in
        let start_value_type, _ = type_of_expr env value in
        let value_type = List.fold_left (fun acc (_, v) ->
            let t, _ = type_of_expr env v in
            if t = acc then acc else raise (MismatchedTypes(acc, t)))
            start_value_type xs
        in
        TMap(key_type, value_type), env
    end
  | Assign(id, t, e) -> begin
      let locals, globals = env in
      if NameMap.mem id locals then raise (AlreadyDefined(id))
      else
        match e with
        | FunLit(fdecl) ->
          let formaltype = List.map (fun (_, x) -> x) fdecl.formals in
          let functype = TFun(formaltype, fdecl.return_type) in
          let _ = match t with
            | TSome -> functype
            | t -> if t = functype then t else raise (MismatchedTypes(t, functype))
          in
          let locals = (NameMap.add id functype locals) in
          let etype, _ = type_of_expr (locals, globals) e  in
          if etype = functype
          then TUnit, (locals, globals)
          else raise (MismatchedTypes(functype, etype))
        | _ ->
          let etype, _ = type_of_expr env e in
          let _ = match t with
            | TSome -> etype
            | t -> if t = etype then t else raise (MismatchedTypes(t, etype))
          in
          let locals = (NameMap.add id etype locals) in
          TUnit, (locals, globals)
    end
  | Val(s) -> begin
      let locals, globals = env in
      if NameMap.mem s locals
      then NameMap.find s locals, env
      else if NameMap.mem s globals
      then NameMap.find s globals, env
      else raise (Undefined(s))
    end
  | FunLit(fdecl) -> begin
      let locals, globals = env in
      let formals_map = build_map fdecl.formals in
      let merged_globals = NameMap.merge (fun k k1 k2 -> match k1, k2 with
          | Some k1, Some k2 -> Some k1
          | None, k2 -> k2
          | k1, None -> k1)
          locals globals in
      let env = formals_map, merged_globals in
      let t, _ = match fdecl.body with
        | Block (es) -> begin
            match es with
            | [] -> TSome, env
            | x :: [] -> type_of_expr env x
            | x :: xs ->
              List.fold_left
                (fun (t, acc_env) e ->
                   let newt, newenv = type_of_expr acc_env e in
                   (newt, newenv))
                (type_of_expr env x) xs
          end
        | e -> type_of_expr env e
      in
      if t = fdecl.return_type
      then
        let formaltype = List.map (fun (_, x) -> x) fdecl.formals in
        TFun(formaltype, fdecl.return_type), env
      else raise (MismatchedTypes(fdecl.return_type, t))
    end 
  | Call(id, es) -> begin
      let t, _ = type_of_expr env (Val(id)) in
      (match t with
      | TFun(formals_type, return_type) ->
        let args_type = List.map
            (fun e -> let t, _ = type_of_expr env e in t) es
        in
        let l1 = List.length args_type and l2 = List.length formals_type in
        if l1 <> l2
        then raise (MismatchedArgCount(l2, l1))
        else List.iter2 (fun ft at -> if ft = at then ()
                     else raise (MismatchedTypes(ft, at)))
          formals_type args_type;
        return_type, env
      | _ -> raise (failwith "unreachable state reached"))
    end
  | ModuleLit(id, e) -> begin
      match e with
      | Call(_) -> type_of_expr env e
      | _ -> raise (UndefinedProperty(id, string_of_expr e))
    end
;;

let type_check (program: Ast.program) =
  let print_string_type = TFun([TString], TUnit) in
  let print_num_type = TFun([TNum], TUnit) in
  let predefined = NameMap.add "print_str" print_string_type NameMap.empty in
  let predefined = NameMap.add "print_num" print_num_type predefined in
  List.fold_left
    (fun env expr ->
       try
         let _, env = type_of_expr env expr in env
       with
       | InvalidOperation(t, op) ->
         let st = string_of_type t and sop = string_of_op op in
         raise (TypeError (Printf.sprintf "Type error: Invalid operation '%s' on type '%s'" sop st))
       | MismatchedTypes(t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 in
         raise (TypeError (Printf.sprintf "Type error: expected value of type '%s', got a value of type '%s' instead" st1 st2))
       | MismatchedOperandTypes(op, t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 and sop = string_of_op op in
         raise (TypeError (Printf.sprintf "Type error: Cannot have types '%s' and '%s' for operator '%s'" st1 st2 sop))
       | NonUniformTypeContainer(t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 in
         raise (TypeError (Printf.sprintf "Type error: Lists can only contain one type. Expected '%s', got a '%s' instead" st1 st2))
       | Undefined(s) ->
         raise (TypeError (Printf.sprintf "Error: value '%s' was used before it was defined" s))
       | AlreadyDefined(s) ->
         raise (TypeError (Printf.sprintf "Error: '%s' cannot be redefined in the current scope" s))
       | UndefinedProperty(module_name, prop) ->
         raise (TypeError (Printf.sprintf "Error: property '%s' is not defined in module '%s'" prop module_name))
       | MismatchedArgCount(l1, l2) ->
         raise (TypeError (Printf.sprintf "Error: Expected number of argument(s): %d, got %d instead." l1 l2)))
    (predefined, NameMap.empty)
    program
;;
