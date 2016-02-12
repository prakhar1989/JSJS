type op =
  | Add | Sub | Mul | Div | Mod             (* num operators *)
  | Caret                                   (* string operators *)
  | And | Or | Not                          (* boolean operators *)
  | Lte | Gte | Neq | Equals | Lt | Gt      (* relational operators *)

type primitiveType = TNum | TString | TBool | TUnit

type primitiveValue = 
  | Num of float 
  | String of string 
  | Bool of bool 
  | Unit of unit
;;

type expr = 
  | Binop of expr * op * expr
  | Unop of op * expr
  | NumLit of float
  | BoolLit of bool
  | StrLit of string
  | Assign of string * primitiveType * expr 
  | Val of string
  | Seq of expr * expr
;;

