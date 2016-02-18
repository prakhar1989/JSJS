open Ast
open Lexing
open Parsing

module NameMap = Map.Make(String);;
type nametable = Ast.primitiveValue NameMap.t;;

(* pretty prints line in file for error reprting *)
let print_error_line line_no char_no fname etype = 
  let in_channel = open_in fname in
  let msg = Printf.sprintf "File: '%s', line %d, character %d:" fname line_no char_no in
  let print_caret line char_at = 
    let s = (String.make (char_at-1) ' ') ^ "^" in
    print_endline ("Error: "  ^ etype);
    print_endline msg;
    print_endline line;
    print_endline s;
  in
  let rec aux c =
    let line = input_line in_channel in 
    if c != line_no then ()
    else print_caret line char_no;
    aux (c + 1)
  in
  try aux 1
  with End_of_file -> close_in in_channel
;;

let rec eval (env: nametable) (exp: Ast.expr) : (Ast.primitiveValue * nametable) = 
  match exp with
  | NumLit(x)   -> Num(x), env
  | StrLit(s)   -> String(s), env
  | BoolLit(b)  -> Bool(b), env
  | Unop(op, e) ->
    let res, env = eval env e in
    (match res, op with
    | Bool(b), Not    -> let x = not b in Bool(x), env
    | Num(f), Neg     -> let x = -.f in Num(x), env
    | t, Neg | t, Not -> raise (Exceptions.InvalidOperation(Stringify.pValue t, Stringify.op op))
    | _, _            -> raise (failwith "invalid type and operation"))
  | Binop (e1, op, e2) -> 
    let x1, env = eval env e1 in
    let x2, env = eval env e2 in
    begin
      match (x1, x2) with
      | Num(v1), Num(v2) -> 
        let res = (match op with
          | Add -> Num(v1 +. v2)
          | Mul -> Num(v1 *. v2)
          | Sub -> Num(v1 -. v2)
          | Div -> Num(v1 /. v2)
          | Mod -> Num(mod_float v1 v2)
          | Lte -> Bool(v1 <= v2)
          | Gte -> Bool(v1 >= v2)
          | Equals -> Bool(v1 = v2)
          | Lt  -> Bool(v1 < v2)
          | Gt  -> Bool(v1 > v2)
          | Neq -> Bool(v1 != v2)
          | _   -> raise (Exceptions.InvalidOperation("num", (Stringify.op op)))) 
        in res, env
      | String(s1), String(s2) -> 
        let res = (match op with
          | Caret  -> String(s1 ^ s2)
          | Lte    -> Bool(s1 <= s2)
          | Gte    -> Bool(s1 >= s2)
          | Equals -> Bool(s1 = s2)
          | Lt     -> Bool(s1 < s2)
          | Gt     -> Bool(s1 > s2)
          | Neq    -> Bool(s1 != s2)
          | _     -> raise (Exceptions.InvalidOperation("string", (Stringify.op op))))
        in res, env
      | Bool(b1), Bool(b2) -> 
        let res = (match op with
          | And -> Bool(b1 && b2)
          | Or  -> Bool(b1 || b2)
          | Lte -> Bool(b1 <= b2)
          | Gte -> Bool(b1 >= b2)
          | Equals -> Bool(b1 = b2)
          | Lt  -> Bool(b1 < b2)
          | Gt  -> Bool(b1 > b2)
          | Neq -> Bool(b1 != b2)
          | _   -> raise (Exceptions.InvalidOperation("bool", (Stringify.op op))))
        in res, env
      | Unit(u1), Unit(u2) -> 
        let res = (match op with
          | Lte -> Bool(u1 <= u2)
          | Gte -> Bool(u1 >= u2)
          | Equals -> Bool(u1 = u2)
          | Lt  -> Bool(u1 < u2)
          | Gt  -> Bool(u1 > u2)
          | Neq -> Bool(u1 != u2)
          | _ -> raise (Exceptions.InvalidOperation("unit", (Stringify.op op))))
        in res, env
      | t1, t2 -> raise (Exceptions.MismatchedTypes(Stringify.pValue t1, Stringify.pValue t2))
    end
  | Val(s) -> 
    (try NameMap.find s env, env
     with Not_found -> raise (Exceptions.Undefined s))
  | Assign(s, t, e) ->
    if NameMap.mem s env
    then raise (Exceptions.AlreadyDefined(s))
    else let v, env = eval env e in 
      (match t, v with
       | TNum, Num(_) 
       | TString, String(_) 
       | TBool, Bool(_)
       | TUnit, Unit(_) -> let m = NameMap.add s v env in (v, m)
       | t1, t2         -> raise (Exceptions.MismatchedTypes(Stringify.pType t1, Stringify.pValue t2)))
  | Seq(e1, e2) ->
    let _, env = eval env e1 in 
    let v, env = eval env e2 in (v, env)
  | If(pred, e2, e3) -> 
    let v, env = eval env pred in
    (match v with
     | Bool(b) -> if b then eval env e2 else eval env e3
     | t -> raise (Exceptions.MismatchedTypes(Stringify.pType TBool, Stringify.pValue t)))
;;

(* the "main" function *)
let _ =                                                              
  let filename = if Array.length Sys.argv > 1
    then Sys.argv.(1)
    else raise (failwith "Error: please provide a filename. Usage: ./jsjs.out filename")
  in
  let lexbuf = Lexing.from_channel (open_in filename) in
  try 
    let expr = Parser.main Scanner.token lexbuf in
    let result, _ = eval NameMap.empty expr in 
    match result with 
    | Num(x)    -> print_endline (string_of_float x)
    | String(s) -> print_endline s
    | Bool(b)   -> print_endline (string_of_bool b)
    | Unit(_)   -> print_endline "unit"
  with
  | Parsing.Parse_error -> 
    let line_no = lexbuf.lex_curr_p.pos_lnum + 1 in
    let char_no = lexbuf.lex_curr_p.pos_cnum - lexbuf.lex_curr_p.pos_bol in
    print_error_line line_no char_no filename "Failed to parse";
  | Exceptions.IllegalCharacter(c, line_no, char_no) -> 
    print_error_line line_no char_no filename "Illegal character";
  | Exceptions.Undefined(s) ->
    print_endline ("Error: value " ^ s ^ " was used before it was defined")
  | Exceptions.InvalidOperation(t, op) ->
    print_endline (Printf.sprintf "Type error: Invalid operation %s on type '%s'" op t)
  | Exceptions.MismatchedTypes(t1, t2) ->
    print_endline (Printf.sprintf "Type error: expected value of type '%s', got a value of type '%s' instead" t1 t2)
  | Exceptions.AlreadyDefined(s) ->
    print_endline ("Error: value '" ^ s ^ "' was already defined.")
;;
