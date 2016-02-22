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

(* concats a list of strings by a separator *)
let rec concat sep = function
  | [] -> ""
  | x :: [] ->  x
  | x :: xs ->  x ^ sep ^ (concat sep xs)
;;

let rec pType = function
  | TNum    -> "num"
  | TString -> "string"
  | TBool   -> "bool"
  | TUnit   -> "unit"
  | T(c)    -> Printf.sprintf "%c" c
  | TList(p) -> "list " ^ (pType p)
  | TFun(f) -> 
    let args, t = f in
    concat " -> " ((List.map pType args) @ [pType t])
  | TMap(k, v) -> 
    "< " ^ pType k ^ " : " ^ pType v ^ " >"
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
  | If(e1, e2, e3) ->
    let fhalf = concat ";\n" (List.map string_of_expr e2) in
    let shalf = concat ";\n" (List.map string_of_expr e3) in
    concat " " ["if"; string_of_expr e1; "then"; "{";
                fhalf; "}"; "else"; "{"; shalf; "}"]
  | ListLit(l) -> 
    let s = concat "," (List.map string_of_expr l) in
    "[" ^ s ^ "]"
  | MapLit(l) -> 
    let pairs = List.map (fun (k, v) -> string_of_expr k ^ ":" ^ string_of_expr v) l in
    "Map(" ^ (concat ",\n" pairs) ^ ")"
  | Call(s, args) -> let ss = List.map string_of_expr args in
    concat " " [s; "("; (concat ", " ss); ")"]
  | ModuleLit(s, e) -> s ^ "." ^ (string_of_expr e)
  | FunLit(args, blk) -> 
    let sargs = concat "," (List.map string_of_expr args) in
    let sblk = concat ";\n" (List.map string_of_expr blk) in
    concat " " ["/\\"; "("; sargs; ")"; "=>"; "{"; sblk; ";};"]
;;

let string_of_func_decl decl = 
    let fname = decl.fname in 
    let fargs = concat ", " (List.map (fun (id, typ) -> id ^ " : " ^ pType typ) decl.formals) in
    let fsig = "(" ^ fargs ^ ")" ^ " : " ^ (pType decl.return_type) in 
    let fbody = concat ";\n" (List.map string_of_expr decl.body) in
    concat " " ["def"; fname; fsig; "="; "{"; fbody; "}"]
;;
