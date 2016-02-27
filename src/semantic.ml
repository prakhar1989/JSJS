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
  | _ -> TNum
;;

