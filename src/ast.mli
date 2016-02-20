type op =
  | Add | Sub | Mul | Div | Mod | Neg       (* num operators *)
  | Caret                                   (* string operators *)
  | And | Or | Not                          (* boolean operators *)
  | Lte | Gte | Neq | Equals | Lt | Gt      (* relational operators *)

type primitiveType = 
  | TNum | TString | TBool | TUnit | Fun of funcType
and funcType = primitiveType list * primitiveType
;;

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
  | FuncAssign of string * funcType * string list * expr list
  | Val of string
  | If of expr * expr list * expr list
  | Call of string * expr list
;;

type func_decl = {
  fname       : string;
  formals     : (string * primitiveType) list;
  return_type : primitiveType;
  body        : expr list;
};;

type program = expr list * func_decl list;;
