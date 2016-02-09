type op = Add | Sub | Mul | Div | Mod

type primitiveType = TNum | TString | TBool | TUnit

type primitiveValue = 
  | Num of float 
  | String of string 
  | Bool of bool 
  | Unit of unit
;;

type expr = 
  | Binop of expr * op * expr
  | NumLit of float
  | Assign of string * primitiveType * expr 
  | Val of string
  | Seq of expr * expr
;;

