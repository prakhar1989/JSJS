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
  | TSome   -> ""
  | TUnit   -> "unit"
  | T(c)    -> Printf.sprintf "%c" c
  | TList(p) -> "list " ^ (string_of_type p)
  | TFunGeneric(f, _) ->
    let args, t = f in
    let s = String.concat  " -> " ((List.map string_of_type args) @ [string_of_type t]) in
    "/\\ []" ^ s
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
  | Call(s, args) -> let ss = List.map string_of_expr args in
    String.concat " " [s; "("; (String.concat ", " ss); ")"]
  | ModuleLit(s, e) -> s ^ "." ^ (string_of_expr e)
  | FunLit(decl) ->
    let fargs = String.concat ", " (List.map (fun (id, typ) -> id ^ " : " ^ string_of_type typ) decl.formals) in
    let fsig = "(" ^ fargs ^ ")" ^ " : " ^ (string_of_type decl.return_type) in
    let fbody = string_of_expr decl.body in
    String.concat " " ["/\\"; fsig; "="; "{"; fbody; "}"]
;;
