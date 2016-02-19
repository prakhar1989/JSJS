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

(* concats a list of strings by a separator *)
let rec concat sep = function
  | [] -> ""
  | x :: xs ->  x ^ sep ^ (concat sep xs)
;;

(* returns a stringified version of an expression *)
let rec string_of_expr = function
  | Binop(e1, o, e2) ->
    concat " " [string_of_expr e1; op o; string_of_expr e2]
  | Unop(o, e1) -> 
    concat " " [op o; string_of_expr e1]
  | NumLit(x) -> string_of_float x
  | StrLit(s) -> Printf.sprintf "'%s'" s
  | BoolLit(b) -> if b then "true" else "false"
  | Assign(s, t, e) -> 
    concat " " ["val"; s; ":"; pType t; "="; string_of_expr e]
  | Val(s) -> s
  | Seq(e1, e2) -> 
    concat " " [string_of_expr e1; "\n"; string_of_expr e2]
  | If(e1, e2, e3) ->
    concat " " ["if"; string_of_expr e1; "then"; "{";
                string_of_expr e2; "}"; "else"; string_of_expr e3]
;;


