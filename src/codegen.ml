open Ast
open Stringify

let block_template ret_expr = function
  | None ->
    let template = format_of_string "(function() { return %s })()"
    in Printf.sprintf template ret_expr
  | Some(xs) ->
    let template = format_of_string "
    (function() {
        %s
        return %s
    })()"
    in Printf.sprintf template xs ret_expr
;;

let if_template pred e1 e2 =
  let name = "res_" ^ string_of_int(Random.int 1000000)
  and template = format_of_string "(function() {
        let %s
        if (%s) {
            %s = %s
        } else {
            %s = %s
        }
        return %s
    })()"
  in
  Printf.sprintf template name pred name e1 name e2 name
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
    | x :: [] -> block_template x None
    | x :: xs ->
      let es = String.concat "\n" (List.rev xs) in
      block_template x (Some es))
  | If(p, e1, e2) ->
    let pred_s = js_of_expr p
    and s1 = js_of_expr e1 and s2 = js_of_expr e2 in
    if_template pred_s s1 s2
  | FunLit(fdecl) ->
    let formals = List.map (fun (x, _) -> x) fdecl.formals in
    let string_forms = String.concat "," formals in
    let string_body = js_of_expr fdecl.body in
    let template = format_of_string "(function(%s) { return (%s) })" in
    Printf.sprintf template string_forms string_body
  | Call(id, es) ->
    (* TODO: clean this up *)
    let es = List.map js_of_expr es in
    (match id with
     | "print_num" | "print_str" -> Printf.sprintf "console.log(%s)" (String.concat "," es)
     | "hd" -> Printf.sprintf "(%s).get(0)" (List.hd es)
     | "tl" -> Printf.sprintf "(%s).delete(0)" (List.hd es)
     | _ -> Printf.sprintf "%s(%s)" id (String.concat "," es))
  | ListLit(xs) -> let xs = String.concat ", " (List.map js_of_expr xs) in
    Printf.sprintf "Immutable.List.of(%s)" xs
  | _ -> ""
;;
