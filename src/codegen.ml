open Ast
open Stringify

let block_template exprs ret_expr =
  let template = format_of_string "
      (function() {
        %s
        return %s
      })()"
  in
  Printf.sprintf template exprs ret_expr
;;

let rec js_of_expr = function
  | NumLit(x) -> Printf.sprintf "%s" (string_of_float x)
  | StrLit(s) -> Printf.sprintf "\"%s\"" s
  | Val(s) -> s
  | BoolLit(b) -> Printf.sprintf "%s" (string_of_bool b)
  | UnitLit -> "null"
  | Unop(o, e) ->
    let s1 = string_of_op o and s2 = js_of_expr e in
    Printf.sprintf "%s%s" s1 s2
  | Binop(e1, o, e2) ->
    let sop = match o with
      | Caret -> "+"
      | _ -> string_of_op o
    and s2 = js_of_expr e1 and s3 = js_of_expr e2 in
    Printf.sprintf "(%s %s %s)" s2 sop s3
  | Assign(id, _, e) -> Printf.sprintf "let %s = %s" id (js_of_expr e)
  | Block(es) ->
    let es = List.rev (List.map js_of_expr es) in
    (match es with
    | [] -> "" (* will never be reached *)
    | x :: [] -> block_template "" x
    | x :: xs ->
      let es = String.concat "\n" (List.rev xs) in
      block_template es x)
  | If(p, e1, e2) ->
    let pred_s = js_of_expr p
    and s1 = js_of_expr e1 and s2 = js_of_expr e2
    and template = format_of_string "(function() {
        let %s
        if (%s) {
            %s = %s
        } else {
            %s = %s
        }
        return %s
    })()" in
    let name = "res_" ^ string_of_int(Random.int 1000000) in
    Printf.sprintf template name pred_s name s1 name s2 name
  | FunLit(fdecl) ->
    let formals = List.map (fun (x, _) -> x) fdecl.formals in
    let string_forms = String.concat "," formals in
    let string_body = js_of_expr fdecl.body in
    let template = format_of_string "(function(%s) { return (%s) })" in
    Printf.sprintf template string_forms string_body
  | Call(id, es) ->
    (* TODO: clean this up *)
    let id = (match id with
        | "print_num" | "print_str" -> "console.log"
        | _ -> id)
    in
    let es = String.concat ", " (List.map js_of_expr es) in
    Printf.sprintf "%s(%s)" id es
  | _ -> ""
;;
