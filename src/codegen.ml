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
  and template = format_of_string "(function() {
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
  let s = if s = "_" then s ^ string_of_int (Random.int 100000) else s in
  Str.global_replace (Str.regexp_string "?") "__" s
;;

(* generates a js version of an annotated expression
   takes the name of the module and a module map along with the expression *)
let rec js_of_aexpr (module_name: string) (map:'a NameMap.t) (aexpr: aexpr) =
  match aexpr with
  | ANumLit(x, _) -> Printf.sprintf "%s" (string_of_float x)
  | AStrLit(s, _) -> Printf.sprintf "\"%s\"" s
  | ABoolLit(b, _) -> Printf.sprintf "%s" (string_of_bool b)
  | AUnitLit(_) -> "null"

  | AUnop(o, e, _) ->
    let s1 = string_of_op o and s2 = js_of_aexpr module_name map e in
    Printf.sprintf "%s%s" s1 s2

  | ABinop(e1, o, e2, _) ->
    let s2 = js_of_aexpr module_name map e1
    and s3 = js_of_aexpr module_name map e2 in
    (match o with
      | Cons -> Printf.sprintf "(%s).insert(0, %s)" s3 s2
      | Caret -> Printf.sprintf "(%s + %s)" s2 s3
      | Equals -> (match (Typecheck.type_of e1) with
          | TList(_) | TMap(_) -> Printf.sprintf "(Immutable.is(%s, %s))" s2 s3
          | _ -> Printf.sprintf "(%s %s %s)" s2 (string_of_op o) s3)
      | _ -> Printf.sprintf "(%s %s %s)" s2 (string_of_op o) s3)

  | AThrow(e, t) -> Printf.sprintf "(function() { throw %s })()" (js_of_aexpr module_name map e)

  | ATryCatch(e1, s, e2, t) ->
    let s1 = js_of_aexpr module_name map e1 and s2 = js_of_aexpr module_name map e2 in
    try_catch_template s1 s s2

  | AVal(s, _) ->
    if NameMap.mem s map
    then Printf.sprintf "%s.%s" module_name (remove_qmark s)
    else (remove_qmark s)

  | AAssign(id, _, e, _) ->
    if NameMap.mem id map
    then Printf.sprintf "%s.%s = %s" module_name (remove_qmark id) (js_of_aexpr module_name map e)
    else Printf.sprintf "let %s = %s" (remove_qmark id) (js_of_aexpr module_name map e)

  | ABlock(es, _) ->
    let es = List.rev (List.map (fun e -> js_of_aexpr module_name map e) es) in
    (match es with
    | [] -> "" (* will never be reached *)
    | x :: [] -> block_template x None
    | x :: xs ->
      let es = String.concat "\n" (List.rev xs) in
      block_template x (Some es))

  | AIf(p, e1, e2, _) ->
    let pred_s = js_of_aexpr module_name map p
    and s1 = js_of_aexpr module_name map e1
    and s2 = js_of_aexpr module_name map e2 in
    if_template pred_s s1 s2

  | AFunLit(ids, body, t, _) ->
    let string_forms = String.concat "," ids in
    let string_body = js_of_aexpr module_name map body in
    let template = format_of_string "(function(%s) { return (%s) })" in
    Printf.sprintf template string_forms string_body

  | ACall(e, es, _) ->
    let id = match e with
      | AVal(s, _) -> if NameMap.mem s map
        then Printf.sprintf "%s.%s" module_name (remove_qmark s)
        else (remove_qmark s)
      | AFunLit(_) -> js_of_aexpr module_name map e
      | _ -> raise (failwith "not a function call") in
    let es = List.map (fun e -> js_of_aexpr module_name map e) es in
    (match id with
     | "print_num" | "print_bool" | "print"
     | "print_string" -> Printf.sprintf "%s(%s)" id (String.concat "," es)
     | "hd" -> Printf.sprintf "(%s).get(0)" (List.hd es)
     | "tl" -> Printf.sprintf "(%s).delete(0)" (List.hd es)
     | "empty__" -> Printf.sprintf "(%s).isEmpty()" (List.hd es)
     | "get" -> Printf.sprintf "(%s).get((%s).toString())" (List.hd es) (List.nth es 1)
     | "set" -> Printf.sprintf "(%s).set((%s).toString(), %s)" (List.hd es) (List.nth es 1) (List.nth es 2)
     | "has__" -> Printf.sprintf "(%s).has((%s).toString())" (List.hd es) (List.nth es 1)
     | "keys" -> Printf.sprintf "Immutable.fromJS(Array.from((%s).keys()))" (List.hd es)
     | "del" -> Printf.sprintf "(%s).remove((%s).toString())" (List.hd es) (List.nth es 1)
     | _ -> Printf.sprintf "%s(%s)" id (String.concat "," es))

  | AListLit(es, _) -> let es = String.concat ", " (List.map (fun e -> js_of_aexpr module_name map e) es) in
    Printf.sprintf "Immutable.List.of(%s)" es

  | AModuleLit(id, e, _) -> Printf.sprintf "%s.%s" id (js_of_aexpr module_name map e)

  | AMapLit(kvpairs, _) ->
    let pairs = List.map (fun (k, v) ->
        Printf.sprintf "%s:%s" (js_of_aexpr module_name map k)
          (js_of_aexpr module_name map v)) kvpairs in
    Printf.sprintf "Immutable.Map({ %s })" (String.concat "," pairs)
;;
