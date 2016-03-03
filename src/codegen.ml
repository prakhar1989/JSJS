(* utility functions for stringifying types *)

open Ast
open Stringify

let rec js_of_expr = function
  | NumLit(x) -> Printf.sprintf "ast.literal(%s)" (string_of_float x)
  | StrLit(s) -> Printf.sprintf "ast.literal('%s')" s
  | BoolLit(b) -> Printf.sprintf "ast.literal(%s)" (string_of_bool b)
  | Val(s) -> Printf.sprintf "ast.id('%s')" s
  | Unop(o, e) ->
    let s1 = string_of_op o and s2 = js_of_expr e in
    Printf.sprintf "ast.unop('%s', %s)" s1 s2
  | Binop(e1, o, e2) ->
    let s1 = match o with
      | Caret -> "+"
      | _ -> string_of_op o
    and
    s2 = js_of_expr e1 and s3 = js_of_expr e2 in
    Printf.sprintf "ast.binop('%s', %s, %s)" s1 s2 s3
  | Assign(s, _, e) ->
    let s1 = js_of_expr (Val(s)) in
    let s2 = js_of_expr e in
    Printf.sprintf "ast.assign(%s, %s)" s1 s2
  | Call(s, args) ->
    let s1 = js_of_expr (Val("console.log")) in
    let sargs = List.map js_of_expr args in
    let s2 = String.concat "," sargs in
    Printf.sprintf "ast.call(%s, [%s])" s1 s2
  | _ -> ""
;;
