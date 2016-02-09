type op = Add | Sub | Mul | Div | Mod

type primitive = Num | String | Bool | Unit;;

type expr = 
  | Binop of expr * op * expr
  | NumLit of float
  | Assign of string * primitive * expr 
  | Val of string
  | Seq of expr * expr
;;

