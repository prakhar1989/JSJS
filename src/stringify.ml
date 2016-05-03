(* utility functions for stringifying the AST *)

open Ast

module CharMap = Map.Make(String)

type genericMap = int CharMap.t

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

let string_of_type (t: Ast.primitiveType) =
  let rec aux (t: primitiveType) (chr: int) (map: genericMap) =
    match t with
    | TNum    -> "num", chr, map
    | TString -> "string", chr, map
    | TBool   -> "bool", chr, map
    | TAny    -> "any", chr, map
    | TExn    -> "exn", chr, map
    | TUnit   -> "unit", chr, map
    | T(x)    ->
      let gen_chr, new_chr, new_map = if CharMap.mem x map
        then Char.escaped (Char.chr (CharMap.find x map)), chr, map
        else
          let c = Char.escaped (Char.chr chr) in
          c, (chr + 1), CharMap.add x chr map
      in
      Printf.sprintf "%s" gen_chr, new_chr, new_map
    | TList(t) ->
      let st, c, m = aux t chr map in
      (Printf.sprintf "list %s" st), c, m
    | TMap(kt, vt) ->
      let st1, c1, m1 = aux kt chr map in
      let st2, c2, m2 = aux vt c1 m1 in
      (Printf.sprintf "<%s:%s>" st1 st2), c2, m2
    | TFun(args_type, ret_type) ->
      let sargs, (c, m) = ListLabels.fold_left args_type ~init: ([], (chr, map))
          ~f: (fun (ts, (c, m)) arg ->
              let argt, c1, m1 = aux arg c m in
              (argt :: ts, (c1, m1))
            ) in
      let rs, c, m = aux ret_type c m in
      let sargs = String.concat ", " sargs in
      Printf.sprintf "(%s) -> %s" sargs rs, c, m
  in
  let s, _, _ = aux t 65 CharMap.empty in s
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
  | AMapLit(kvpairs, t) ->  Printf.sprintf "map < >: %s" (string_of_type t)
  | AIf(ap, ae1, ae2, t) ->  Printf.sprintf "if {} then {} else {}: %s" (string_of_type t)
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
  | AModuleLit(id, e, t) ->
    let se = string_of_aexpr e in
    Printf.sprintf "%s.(%s) : %s" id se (string_of_type t)
  | AThrow(ae, t) ->
    let se = string_of_aexpr ae in
    Printf.sprintf "throw %s: %s" se (string_of_type t)
  | ATryCatch(aetry, id, aecatch, t) ->
    let stry = string_of_aexpr aetry
    and scatch = string_of_aexpr aecatch in
    Printf.sprintf "try%s catch(%s)%s" stry id scatch
;;
