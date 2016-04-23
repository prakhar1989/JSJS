(* utility functions for stringifying the AST *)

open Ast

let string_of_op = function
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
  | Equals    -> "==="
  | Lt        -> "<"
  | Gt        -> ">"
  | Cons      -> "::"
;;

let rec string_of_type = function
  | TNum    -> "num"
  | TString -> "string"
  | TBool   -> "bool"
  | TAny    -> "any"
  | TExn    -> "exception"
  | TUnit   -> "unit"
  | T(c)    -> Printf.sprintf "%s" c
  | TList(p) -> "list " ^ (string_of_type p)
  | TFun(f) ->
    let args, t = f in
    String.concat  " -> " ((List.map string_of_type args) @ [string_of_type t])
  | TMap(k, v) ->
    "< " ^ string_of_type k ^ " : " ^ string_of_type v ^ " >"
;;

(* returns a stringified version of an expression *)
let rec string_of_expr = function
  | Binop(e1, o, e2) ->
    String.concat " " [string_of_expr e1; string_of_op o; string_of_expr e2]
  | Unop(o, e1) ->
    String.concat " " [string_of_op o; string_of_expr e1]
  | NumLit(x) -> string_of_float x
  | Throw(e)  -> let s = string_of_expr e in "throw " ^ s
  | TryCatch(e1, s, e2) -> let s1 = string_of_expr e1 and s2 = string_of_expr e2 in
    Printf.sprintf "try %s catch(%s) %s" s1 s s2
  | UnitLit   -> "()"
  | Block(es) -> let ss = String.concat ";\n" (List.map string_of_expr es) in
    "{" ^ ss ^ "}"
  | StrLit(s) -> Printf.sprintf "'%s'" s
  | BoolLit(b) -> if b then "true" else "false"
  | Assign(s, t, e) ->
    let type_str = string_of_type t in
    let id_str = if type_str = "" then type_str else " : " ^ type_str in
    String.concat " " ["val"; s; id_str; "="; string_of_expr e]
  | Val(s) -> s
  | If(e1, b1, b2) ->
    let fhalf = string_of_expr b1 in
    let shalf = string_of_expr b2 in
    String.concat " " ["if"; string_of_expr e1; "then"; fhalf; "else"; shalf;]
  | ListLit(l) ->
    let s = String.concat "," (List.map string_of_expr l) in
    "[" ^ s ^ "]"
  | MapLit(l) ->
    let pairs = List.map (fun (k, v) -> string_of_expr k ^ ":" ^ string_of_expr v) l in
    "{" ^ (String.concat ",\n" pairs) ^ "}"
  | Call(e, args) -> let ss = List.map string_of_expr args in
    String.concat " " [string_of_expr e; "("; (String.concat ", " ss); ")"]
  | ModuleLit(s, e) -> s ^ "." ^ (string_of_expr e)
  | FunLit(ids, body, t) -> begin
      let args_with_types, ret_type = (match t with
          | TFun(args_type, ret_type) -> List.combine ids args_type, ret_type
          | _ -> raise (failwith "not a valid function")) in
      let fargs = String.concat ", " (List.map (fun (id, typ) -> id ^ " : " ^ string_of_type typ) args_with_types) in
      let fsig = "(" ^ fargs ^ ")" ^ " : " ^ (string_of_type ret_type) in
      let fbody = string_of_expr body in
      String.concat " " ["/\\"; fsig; "="; "{"; fbody; "}"]
    end
;;

let rec string_of_aexpr (ae: aexpr) : string =
  match ae with
  | ABoolLit(b, t) -> Printf.sprintf "(%s: %s)" (string_of_bool b) (string_of_type t)
  | ANumLit(x, t) -> Printf.sprintf "(%s: %s)" (string_of_float x) (string_of_type t)
  | AStrLit(s, t) -> Printf.sprintf "(%s: %s)" s (string_of_type t)
  | AUnitLit(t) -> Printf.sprintf "()"
  | AVal(s, t) -> Printf.sprintf "(%s: %s)" s (string_of_type t)
  | ABinop(e1, op, e2, t) ->
    let s1 = string_of_aexpr e1 in let s2 = string_of_aexpr e2 in
    let sop = string_of_op op in let st = string_of_type t in
    Printf.sprintf "(%s %s %s: %s)" s1 sop s2 st
  | AUnop(op, e, t) ->
    let s = string_of_aexpr e in
    let sop = string_of_op op in let st = string_of_type t in
    Printf.sprintf "(%s %s: %s)" s sop st
  | AAssign(id, t1, e, t2) ->
    Printf.sprintf "val %s: %s = %s : %s" id (string_of_type t1) (string_of_aexpr e) (string_of_type t2)
  | AListLit(aes, t) ->
    let s = String.concat "," (List.map string_of_aexpr aes) in
    Printf.sprintf "[%s]:%s" s (string_of_type t)
  | AMapLit(kvpairs, t) ->  "map < >"
  | AIf(ap, ae1, ae2, t) ->  "if"
  | ABlock(aes, t) -> let ss = List.map string_of_aexpr aes in
    Printf.sprintf "{ %s }" (String.concat "\n" ss)
  | AFunLit(ids, body, _, t) -> begin
      let args_with_types, ret_type = (match t with
          | TFun(args_type, ret_type) -> List.combine ids args_type, ret_type
          | _ -> raise (failwith "not a valid function")) in
      let fargs = String.concat ", " (List.map (fun (id, typ) -> id ^ " : " ^ string_of_type typ) args_with_types) in
      let fsig = "(" ^ fargs ^ ")" ^ " : " ^ (string_of_type ret_type) in
      let fbody = string_of_aexpr body in
      String.concat " " ["/\\"; fsig; "="; "{"; fbody; "}"]
    end
  | ACall(afn, aargs, t) ->
    let sfn = string_of_aexpr afn
    and sargs = String.concat "," (List.map string_of_aexpr aargs) in
    Printf.sprintf "%s(%s) : %s" sfn sargs (string_of_type t)

  | _ -> raise (failwith "not yet implemented in stringify")
;;
