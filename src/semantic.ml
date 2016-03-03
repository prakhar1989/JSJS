open Ast
open Lexing
open Parsing
open Exceptions
open Stringify


(*
1. re-defined function declarations should raise errors
2. unit assignments with non-unit type should raise errors
3. top level vals that are re-defined should raise errors
4. vals can be redefined within the scope of a block
5. vals cannot reference a val defined **after** its declaration
*)

module NameMap = Map.Make(String);;
type typesTable = Ast.primitiveType NameMap.t;;
(* A tuple of locals, globals *)
type typeEnv = typesTable * typesTable;;

let rec type_of_expr (env: typeEnv) = function
  | NumLit(_) -> TNum
  | BoolLit(_) -> TBool
  | StrLit(_) -> TString
  | Binop(e1, op, e2) ->
    let t1 = type_of_expr env e1 and t2 = type_of_expr env e2 in
    if t1 <> t2 then raise (MismatchedTypes (t1, t2))
    else begin
      match op with
      | Caret -> if t1 = TString then TString
        else raise (InvalidOperation(t1, Caret))
      | And | Or -> if t1 = TBool then TBool
        else raise (InvalidOperation(t1, op))
      | Add | Sub | Mul
      | Div | Mod -> if t1 = TNum then TNum
        else raise (InvalidOperation(t1, op))
      | Lte | Gte | Neq
      | Equals | Lt | Gt -> TBool
      | _ -> raise (InvalidOperation(t1, op))
    end
  | Unop(op, e) -> begin
      let t = type_of_expr env e in
      match (op, t) with
      | Not, TBool -> TBool
      | Neg, TNum -> TNum
      | _, _ -> raise (InvalidOperation(t, op))
    end
  | ListLit(es) -> begin
      let ts = List.map (fun x -> type_of_expr env x) es in
      if List.length ts = 0 then TList(TSome)
      else let list_type = List.fold_left
          (fun acc t -> if acc = t then acc
            else raise (NonUniformTypeContainer(acc, t)))
          (List.hd ts) (List.tl ts)
        in
        TList(list_type)
    end
  | Block(es) -> begin
      match es with
      | [] -> TSome
      | x  :: xs ->
        List.fold_left (fun _ e -> (type_of_expr env e))
          (type_of_expr env x) xs
    end
  | If(p, e1, e2) -> begin
      let pt = type_of_expr env p in
      if pt <> TBool
      then raise (MismatchedTypes(TBool, pt))
      else let t1 = type_of_expr env e1 and t2 = type_of_expr env e2 in
      if t1 = t2 then t2 else raise (MismatchedTypes(t1, t2))
    end
  | MapLit(kvpairs) -> begin
      match kvpairs with
      | [] -> TSome (* TODO: how to handle blank map? *)
      | (key, value) :: xs ->
        (* check if all keys are of the same type *)
        let key_type = List.fold_left (fun acc (k, _) ->
            let t = type_of_expr env k in
            if t = acc then acc else raise (MismatchedTypes(acc, t)))
            (type_of_expr env key) xs
        in
        let value_type = List.fold_left (fun acc (_, v) ->
            let t = type_of_expr env v in
            if t = acc then acc else raise (MismatchedTypes(acc, t)))
            (type_of_expr env value) xs
        in
        TMap(key_type, value_type)
    end
  | Assign(id, t, e) -> begin
      let etype = type_of_expr env e in
      let _ = match t with
      | TSome -> etype
      | t -> if t = etype then t else raise (MismatchedTypes(t, etype))
      in
      (* TODO: Use idtype and id to update env *)
      TUnit
    end
  | _ -> TNum
;;

let type_check (program: Ast.program) =
  List.fold_left
    (fun env expr ->
       try
         let _ = type_of_expr env expr in env
       with
       | InvalidOperation(t, op) ->
         let st = string_of_type t and sop = string_of_op op in
         raise (TypeError (Printf.sprintf "Type error: Invalid operation %s on type '%s'" sop st))
       | MismatchedTypes(t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 in
         raise (TypeError (Printf.sprintf "Type error: expected value of type '%s', got a value of type '%s' instead" st1 st2))
       | NonUniformTypeContainer(t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 in
         raise (TypeError (Printf.sprintf "Type error: Lists can only contain one type. Expected '%s', got a '%s' instead" st1 st2)))
    (NameMap.empty, NameMap.empty)
    program
;;
