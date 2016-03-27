type op =
  | Add | Sub | Mul | Div | Mod | Neg       (* num operators *)
  | Caret                                   (* string operators *)
  | And | Or | Not                          (* boolean operators *)
  | Lte | Gte | Neq | Equals | Lt | Gt      (* relational operators *)
  | Cons                                    (* list operators *)

type primitiveType =
  | T of char
  | TSome
  | TNum
  | TString
  | TBool
  | TUnit
  | TFunGeneric of funcType * char list
  | TFun of funcType
  | TList of primitiveType
  | TMap of primitiveType * primitiveType
and funcType = primitiveType list * primitiveType

type expr =
  | Binop of expr * op * expr
  | Unop of op * expr
  | NumLit of float
  | BoolLit of bool
  | UnitLit
  | StrLit of string
  | ListLit of expr list
  | MapLit of (expr * expr) list
  | Block of expr list
  | Assign of string * primitiveType * expr
  | Val of string
  | If of expr * expr * expr
  | Call of string * expr list
  | FunLit of func_decl
  | ModuleLit of string * expr
and
func_decl = {
  formals       : (string * primitiveType) list;
  return_type   : primitiveType;
  body          : expr;
  is_generic    : bool;
  generic_types : char list;
};;

type program = expr list;;
