open Ast
open Lexing
open Parsing

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

let op_to_string = function
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

let type_to_string = function
  | Num(_)    -> "num"
  | String(_) -> "string"
  | Bool(_)   -> "bool"
  | Unit(_)   -> "unit"
;;

let primitive_type_to_string = function
  | TNum    -> "num"
  | TString -> "string"
  | TBool   -> "bool"
  | TUnit   -> "unit"
;;

let rec eval sym_table = function
  | NumLit(x)   -> Num(x)
  | StrLit(s)   -> String(s)
  | BoolLit(b)  -> Bool(b)
  | Unop(op, e) ->
    let res = eval sym_table e in
    (match res, op with
    | Bool(b), Not    -> let x = not b in Bool(x)
    | Num(f), Neg     -> let x = -.f in Num(x)
    | t, Neg | t, Not -> raise (Exceptions.InvalidOperation((type_to_string t), (op_to_string op)))
    | _, _            -> raise (failwith "invalid type and operation"))
  | Binop (e1, op, e2) -> 
    let x1 = eval sym_table e1 and x2 = eval sym_table e2  in
    begin
      match (x1, x2) with
      | Num(v1), Num(v2) ->
        begin
          match op with
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
          | _   -> raise (Exceptions.InvalidOperation("Number", (op_to_string op)))
        end
      | String(s1), String(s2) ->
        begin
          match op with
          | Caret -> String(s1 ^ s2)
          | Lte -> Bool(s1 <= s2)
          | Gte -> Bool(s1 >= s2)
          | Equals -> Bool(s1 = s2)
          | Lt  -> Bool(s1 < s2)
          | Gt  -> Bool(s1 > s2)
          | Neq -> Bool(s1 != s2)
          | _     -> raise (Exceptions.InvalidOperation("String", (op_to_string op)))
        end
      | Bool(b1), Bool(b2) ->
        begin
          match op with
          | And -> Bool(b1 && b2)
          | Or  -> Bool(b1 || b2)
          | Lte -> Bool(b1 <= b2)
          | Gte -> Bool(b1 >= b2)
          | Equals -> Bool(b1 = b2)
          | Lt  -> Bool(b1 < b2)
          | Gt  -> Bool(b1 > b2)
          | Neq -> Bool(b1 != b2)
          | _   -> raise (Exceptions.InvalidOperation("Bool", (op_to_string op)))
        end
      | Unit(u1), Unit(u2) -> 
        begin
          match op with
          | Lte -> Bool(u1 <= u2)
          | Gte -> Bool(u1 >= u2)
          | Equals -> Bool(u1 = u2)
          | Lt  -> Bool(u1 < u2)
          | Gt  -> Bool(u1 > u2)
          | Neq -> Bool(u1 != u2)
          | _ -> raise (Exceptions.InvalidOperation("Unit", (op_to_string op)))
        end
      | t1, t2 -> raise (Exceptions.MismatchedTypes(type_to_string t1, type_to_string t2))
    end
  | Val(s) -> 
    (try Hashtbl.find sym_table s
     with Not_found -> raise (Exceptions.Undefined s))
  | Assign(s, t, e) ->
    if Hashtbl.mem sym_table s 
    then raise (Exceptions.AlreadyDefined(s))
    else let v = eval sym_table e in 
      (match t, v with
       | TNum, Num(_) 
       | TString, String(_) 
       | TBool, Bool(_)
       | TUnit, Unit(_) -> Hashtbl.add sym_table s v; v
       | t1, t2         -> raise (Exceptions.MismatchedTypes(primitive_type_to_string t1, type_to_string t2)))
  | Seq(e1, e2) ->
    let _ = eval sym_table e1 in 
    eval sym_table e2 
;;

(* the "main" function *)
let _ =                                                              
  let sym_table = Hashtbl.create 100 in
  let filename = if Array.length Sys.argv > 1
    then Sys.argv.(1)
    else raise (failwith "Error: please provide a filename. Usage: ./jsjs.out filename")
  in
  let lexbuf = Lexing.from_channel (open_in filename) in
  try 
    let expr = Parser.expr Scanner.token lexbuf in
    let result = eval sym_table expr in 
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
