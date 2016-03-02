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

let rec type_of_expr = function
  | NumLit(_) -> TNum
  | BoolLit(_) -> TBool
  | StrLit(_) -> TString
  | Binop(e1, op, e2) -> 
    let t1 = type_of_expr e1 and t2 = type_of_expr e2 in
    if t1 != t2 then raise (MismatchedTypes (t1, t2))
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
      let t = type_of_expr e in
      match (op, t) with
      | Not, TBool -> TBool
      | Neg, TNum -> TNum
      | _, _ -> raise (InvalidOperation(t, op))
    end
  | ListLit(es) -> begin
      let ts = List.map type_of_expr es in
      if List.length ts = 0 then TSome
      else List.fold_left 
          (fun acc t -> if acc = t then acc
            else raise (NonUniformTypeContainer(acc, t)))
          (List.hd ts) (List.tl ts)
    end 
  | Block(es) -> begin
      match es with
      | [] -> TSome
      | x  :: xs -> 
        List.fold_left (fun _ e -> (type_of_expr e)) 
          (type_of_expr x) xs
    end
  | If(p, e1, e2) -> begin
      let pt = type_of_expr p in 
      if pt != TBool
      then raise (MismatchedTypes(TBool, pt))
      else let t1 = type_of_expr e1 and t2 = type_of_expr e2 in
      if t1 = t2 then t2 else raise (MismatchedTypes(t1, t2))
    end 
  | MapLit(kvpairs) -> begin
      (* 1. Check if all keys of the String type
         2. Keys can be one of string only (since JS allows on string keys)
         3. All the values have to be of the same type 
         which can be of any type.  *)
      match kvpairs with
      | [] -> TSome (* TODO: how to handle blank map? *)
      | (key, value) :: xs ->
        (* check if all keys are of the same type *)
        let key_type = List.fold_left (fun acc (k, v) ->
            let t = type_of_expr k in
            if t != acc then raise (MismatchedTypes(acc, t)) else acc
          ) (type_of_expr key) xs in
        key_type
    end
  | Assign(id, t, e) -> begin
      let etype = type_of_expr e in
      let _ = match t with
      | TSome -> etype
      | t -> if t != etype then raise (MismatchedTypes(t, etype)) else t
      in 
      (* TODO: Use idtype and id to update env *)
      TUnit
    end 
  | _ -> TNum
;;

let type_check exprs = 
  List.iter 
    (fun x -> 
       try let _ = type_of_expr x in () with
       | InvalidOperation(t, op) -> 
         let st = string_of_type t and sop = string_of_op op in
         print_endline (Printf.sprintf "Type error: Invalid operation %s on type '%s'" sop st);
         raise TypeError
       | MismatchedTypes(t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 in
         print_endline (Printf.sprintf "Type error: expected value of type '%s', got a value of type '%s' instead" st1 st2);
         raise TypeError
       | NonUniformTypeContainer(t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 in
         print_endline (Printf.sprintf "Type error: Lists can only contain one type. Expected '%s', got a '%s' instead" st1 st2);
         raise TypeError
       | _ -> raise TypeError)
    exprs
;;
