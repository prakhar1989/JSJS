open Ast
open Stringify

module NameMap = Map.Make(String);;

(* helper functions to generate templates *)
let block_template (return_expr: string) (body: string option) : string =
  match body with
  | None ->
    let template = format_of_string "(function() { return %s })()"
    in Printf.sprintf template return_expr
  | Some(exprs) ->
    let template = format_of_string "
    (function() {
        %s
        return %s
    })()"
    in Printf.sprintf template exprs return_expr
;;

let if_template (pred_expr: string) (if_expr: string) (else_expr: string): string =
  let id = "res_" ^ string_of_int(Random.int 1000000)
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
  Printf.sprintf template id pred_expr id if_expr id else_expr id
;;

let try_catch_template (try_expr: string) (msg: string) (catch_expr: string) =
  let id = "res_" ^ string_of_int(Random.int 1000000)
  and template = format_of_string "
    (function() {
        let %s
        try {
            %s = %s
        } catch(%s) {
            %s = %s
        }
        return %s
    })()"
  in
  Printf.sprintf template id id try_expr msg id catch_expr id
;;

(* removes all ? from string and replaces with __. used for codegen
 * since JS doesnt support ? in var names *)
let remove_qmark (s: string) =
  Str.global_replace (Str.regexp_string "?") "__" s
;;

(* generates a js version of an expression
   takes the name of the module and a module map along with the expression *)
let rec js_of_expr (module_name: string) (map:'a NameMap.t) (expr: expr) =
  match expr with
  | NumLit(x) -> Printf.sprintf "%s" (string_of_float x)
  | StrLit(s) -> Printf.sprintf "\"%s\"" s
  | BoolLit(b) -> Printf.sprintf "%s" (string_of_bool b)
  | UnitLit -> "null"

  | Unop(o, e) ->
    let s1 = string_of_op o and s2 = js_of_expr module_name map e in
    Printf.sprintf "%s%s" s1 s2

  | Binop(e1, o, e2) ->
    let s2 = js_of_expr module_name map e1
    and s3 = js_of_expr module_name map e2 in
    (match o with
      | Cons -> Printf.sprintf "(%s).insert(0, %s)" s3 s2
      | Caret -> Printf.sprintf "(%s + %s)" s2 s3
      | _ -> Printf.sprintf "(%s %s %s)" s2 (string_of_op o) s3)

  | Throw(e) -> Printf.sprintf "(function() { throw %s })()" (js_of_expr module_name map e)

  | TryCatch(e1, s, e2) ->
    let s1 = js_of_expr module_name map e1 and s2 = js_of_expr module_name map e2 in
    try_catch_template s1 s s2

  | Val(s) ->
    if NameMap.mem s map
    then Printf.sprintf "%s.%s" module_name (remove_qmark s)
    else (remove_qmark s)

  | Assign(id, _, e) ->
    if NameMap.mem id map
    then Printf.sprintf "%s.%s = %s" module_name (remove_qmark id) (js_of_expr module_name map e)
    else Printf.sprintf "let %s = %s" (remove_qmark id) (js_of_expr module_name map e)

  | Block(es) ->
    let es = List.rev (List.map (fun e -> js_of_expr module_name map e) es) in
    (match es with
    | [] -> "" (* will never be reached *)
    | x :: [] -> block_template x None
    | x :: xs ->
      let es = String.concat "\n" (List.rev xs) in
      block_template x (Some es))

  | If(p, e1, e2) ->
    let pred_s = js_of_expr module_name map p
    and s1 = js_of_expr module_name map e1
    and s2 = js_of_expr module_name map e2 in
    if_template pred_s s1 s2

  | FunLit(ids, body, t) ->
    let string_forms = String.concat "," ids in
    let string_body = js_of_expr module_name map body in
    let template = format_of_string "(function(%s) { return (%s) })" in
    Printf.sprintf template string_forms string_body

  | Call(e, es) ->
    let id = match e with
      | Val(s) -> if NameMap.mem s map
        then Printf.sprintf "%s.%s" module_name (remove_qmark s)
        else (remove_qmark s)
      | FunLit(_) -> js_of_expr module_name map e
      | _ -> raise (failwith "not a function call") in
    let es = List.map (fun e -> js_of_expr module_name map e) es in
    (match id with
     | "print_num" | "print_bool" | "print"
     | "print_string" -> Printf.sprintf "console.log(%s)" (String.concat "," es)
     | "hd" -> Printf.sprintf "(%s).get(0)" (List.hd es)
     | "tl" -> Printf.sprintf "(%s).delete(0)" (List.hd es)
     | "empty__" -> Printf.sprintf "(%s).isEmpty()" (List.hd es)
     | "get" -> Printf.sprintf "(%s).get((%s).toString())" (List.hd es) (List.nth es 1)
     | "set" -> Printf.sprintf "(%s).set((%s).toString(), %s)" (List.hd es) (List.nth es 1) (List.nth es 2)
     | "has__" -> Printf.sprintf "(%s).has((%s).toString())" (List.hd es) (List.nth es 1)
     | "keys" -> Printf.sprintf "Immutable.fromJS(Array.from((%s).keys()))" (List.hd es)
     | "del" -> Printf.sprintf "(%s).remove((%s).toString())" (List.hd es) (List.nth es 1)
     | _ -> Printf.sprintf "%s(%s)" id (String.concat "," es))

  | ListLit(es) -> let es = String.concat ", " (List.map (fun e -> js_of_expr module_name map e) es) in
    Printf.sprintf "Immutable.List.of(%s)" es

  | ModuleLit(id, e) -> Printf.sprintf "%s.%s" id (js_of_expr module_name map e)

  | MapLit(kvpairs) ->
    let pairs = List.map (fun (k, v) ->
        Printf.sprintf "%s:%s" (js_of_expr module_name map k)
          (js_of_expr module_name map v)) kvpairs in
    Printf.sprintf "Immutable.Map({ %s })" (String.concat "," pairs)
;;
