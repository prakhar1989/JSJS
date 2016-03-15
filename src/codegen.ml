open Ast
open Stringify

let rec js_of_expr = function
  | NumLit(x) -> Printf.sprintf "%s" (string_of_float x)
  | StrLit(s) -> Printf.sprintf "\"%s\"" s
  | Val(s) -> s
  | BoolLit(b) -> Printf.sprintf "%s" (string_of_bool b)
  | Unop(o, e) ->
    let s1 = string_of_op o and s2 = js_of_expr e in
    Printf.sprintf "%s%s" s1 s2
  | Binop(e1, o, e2) ->
    let sop = match o with
      | Caret -> "+"
      | _ -> string_of_op o
    and s2 = js_of_expr e1 and s3 = js_of_expr e2 in
    Printf.sprintf "(%s %s %s)" s2 sop s3
  | Assign(id, _, e) -> Printf.sprintf "let %s = %s;" id (js_of_expr e)
  | _ -> ""
;;
