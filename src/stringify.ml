(* utility functions for stringifying types *)

open Ast

let op = function
  | Add       -> "+"
  | Mul       -> "*"
  | Neg | Sub -> "-"
  | Div       -> "/"
  | Mod       -> "%"
  | Caret     -> "^"
  | And       -> "&&"
  | Or        -> "||"
  | Not       -> "!"
  | Lte       -> "<="
  | Gte       -> ">="
  | Neq       -> "!="
  | Equals    -> "=="
  | Lt        -> "<"
  | Gt        -> ">"
;;

let pValue = function
  | Num(_)    -> "num"
  | String(_) -> "string"
  | Bool(_)   -> "bool"
  | Unit(_)   -> "unit"
;;

let pType = function
  | TNum    -> "num"
  | TString -> "string"
  | TBool   -> "bool"
  | TUnit   -> "unit"
;;
