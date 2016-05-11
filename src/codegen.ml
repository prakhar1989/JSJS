open Ast
open Stringify

module NameMap = Map.Make(String);;

(* name environment for program *)
type aliasTable = string NameMap.t
type environment = aliasTable * aliasTable 

let merge_env (env: environment) : environment =
  let locals, globals = env in
  let merged_globals = NameMap.merge (fun k k1 k2 -> match k1, k2 with
      | Some k1, Some k2 -> Some k1
      | None, k2 -> k2
      | k1, None -> k1)
      locals globals in
  NameMap.empty, merged_globals
;;

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
        return %s;
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
let rec js_of_aexpr (module_name: string) (map:'a NameMap.t) (env: environment) (aexpr: aexpr) =
  match aexpr with
  | ANumLit(x, _) -> (Printf.sprintf "%s" (string_of_float x)), env
  | AStrLit(s, _) -> (Printf.sprintf "\"%s\"" s), env
  | ABoolLit(b, _) -> (Printf.sprintf "%s" (string_of_bool b)), env
  | AUnitLit(_) -> "(undefined)", env

  | AUnop(o, e, _) ->
    let s1 = string_of_op o and s2, _ = js_of_aexpr module_name map env e in
    (Printf.sprintf "%s%s" s1 s2), env

  | ABinop(e1, o, e2, _) ->
    let s2, _ = js_of_aexpr module_name map env e1
    and s3, _ = js_of_aexpr module_name map env e2 in
    (match o with
      | Cons -> (Printf.sprintf "(%s).insert(0, %s)" s3 s2)
      | Caret -> (Printf.sprintf "(%s + %s)" s2 s3)
      | Equals -> (match (Typecheck.type_of e1) with
          | TList(_) | TMap(_) -> (Printf.sprintf "(Immutable.is(%s, %s))" s2 s3)
          | _ -> (Printf.sprintf "(%s %s %s)" s2 (string_of_op o) s3))
      | _ -> (Printf.sprintf "(%s %s %s)" s2 (string_of_op o) s3)), env

  | AThrow(e, t) -> (Printf.sprintf "(function() { throw %s })()" (fst (js_of_aexpr module_name map env e))), env

  | ATryCatch(e1, s, e2, t) ->
    let s1, _ = js_of_aexpr module_name map env e1 in
    let locals, globals = merge_env env in
    let new_locals = NameMap.add s s locals in
    let s2, _ = js_of_aexpr module_name map (new_locals, globals) e2 in
    (try_catch_template s1 s s2), env

  | AVal(s, _) ->
      (* top level check if vals are global definitions *)
      (match s with
        | "print_num" | "print_bool" | "print"
        | "print_string" | "hd" | "tl" | "empty__"
        | "get" | "set" | "has__" | "keys" | "del" -> s, env 
        | _ -> if NameMap.mem s map
                then (Printf.sprintf "%s.%s" module_name (remove_qmark s)), env
                else begin
                    let s = remove_qmark s in
                    let locals, globals = env in
                    if NameMap.mem s locals
                    then (NameMap.find s locals), env
                    else if NameMap.mem s globals
                        then (NameMap.find s globals), env
                        else raise (failwith ("not found in globals " ^ s))
                end)

  | AAssign(id, _, e, _) ->
  (* add map here *)
    if NameMap.mem id map
    (* then case occurs only for stdlib codegen, no env info required *)
    then (Printf.sprintf "%s.%s = %s" module_name (remove_qmark id) (fst (js_of_aexpr module_name map env e))), env
    else begin
        let locals, globals = env in
        let name = remove_qmark id in
        let alias = name ^ string_of_int(Random.int 1000000) in
        let new_locals = NameMap.add name alias locals in
        let new_env = new_locals, globals in
        (Printf.sprintf "let %s = %s" alias (fst (js_of_aexpr module_name map new_env e))), new_env
    end

  | ABlock(es, _) ->
    let new_env = merge_env env in
    let es, _ = ListLabels.fold_left ~init: ([], new_env) es
    ~f: (fun (acc, env) e ->
        let js_expr, new_env = (js_of_aexpr module_name map env e) in
        (js_expr :: acc), new_env)
    in
    (match es with
    | [] -> "" (* will never be reached *)
    | x :: [] -> block_template x None
    | x :: xs ->
        let es = String.concat ";\n" (List.rev xs) in
        block_template x (Some es)), env

  | AIf(p, e1, e2, _) ->
    let pred_s, _ = js_of_aexpr module_name map env p
    and s1, _ = js_of_aexpr module_name map env e1
    and s2, _ = js_of_aexpr module_name map env e2 in
    (if_template pred_s s1 s2), env

  | AFunLit(ids, body, t, _) ->
    let locals, globals = merge_env env in
    let aliases = List.map 
    (fun id -> (remove_qmark id) ^ string_of_int(Random.int 1000000)) ids in
    let new_locals = ListLabels.fold_left2 ~init: locals ids aliases
    ~f: (fun locals id alias -> NameMap.add id alias locals) in
    let string_forms = String.concat "," aliases in
    
    let new_env = new_locals, globals in
    let string_body, _ = (match body with
        (* codegen for function blocks *)
        | ABlock(aes, _) -> begin
            let es, _ = ListLabels.fold_left ~init: ([], new_env) aes
            ~f: (fun (acc, env) e -> 
                let js_expr, new_env = (js_of_aexpr module_name map env e) in
                (js_expr :: acc), new_env)
            in
            (match es with
            | [] -> "" (* will never be reached *)
            | x :: [] -> block_template x None
            | x :: xs ->
              let es = String.concat ";\n" (List.rev xs) in
              block_template x (Some es)), new_env 
        end
        | _ -> js_of_aexpr module_name map new_env body) in 
    let template = format_of_string "(function(%s) { return (%s) })" in
    (Printf.sprintf template string_forms string_body), env

  | ACall(e, es, _) ->
    let id = match e with
      | AVal(s, _) -> let name = (remove_qmark s) in
      (match name with
        | "print_num" | "print_bool" | "print"
        | "print_string" | "hd" | "tl" | "empty__"
        | "get" | "set" | "has__" | "keys" | "del" -> name
        | _ -> fst (js_of_aexpr module_name map env e))
      | AFunLit(_) -> fst (js_of_aexpr module_name map env e)
      | _ -> raise (failwith "not a function call") in
    let es = List.map (fun e -> fst (js_of_aexpr module_name map env e)) es in
    let fn_call = (match id with
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
     | _ -> Printf.sprintf "%s(%s)" id (String.concat "," es)) in
    fn_call, env

  | AListLit(es, _) -> let es = String.concat ", " (List.map (fun e ->
          fst (js_of_aexpr module_name map env e)) es) in
    (Printf.sprintf "Immutable.List.of(%s)" es), env

  | AModuleLit(id, e, _) ->
    let js_e = (match e with
         | AVal(prop, _) -> prop
         | ACall(prop, aargs, _) -> let js_args = List.map
           (fun aarg -> fst (js_of_aexpr module_name map env aarg)) aargs in
           let js_args = String.concat "," js_args in
           let prop = (match prop with
           | AVal(id, _) -> id
           | _ -> raise (failwith "mod call can't be funlit or anything else")) in
           Printf.sprintf "%s(%s)" prop js_args
         | _ -> raise (failwith "unreachable state in module codegen")) in
    (Printf.sprintf "%s.%s" id js_e), env

  | AMapLit(kvpairs, _) ->
    let pairs = List.map (fun (k, v) ->
        Printf.sprintf "%s:%s" (fst (js_of_aexpr module_name map env k))
          (fst (js_of_aexpr module_name map env v))) kvpairs in
    (Printf.sprintf "Immutable.Map({ %s })" (String.concat "," pairs)), env
;;
