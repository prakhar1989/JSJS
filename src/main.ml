open Ast
open Lexing

let op_to_string = function
  | Add   -> "+"
  | Mul   -> "*"
  | Sub   -> "-"
  | Div   -> "/"
  | Mod   -> "%"
  | Caret -> "^"
  | And   -> "&&"
  | Or    -> "||"
  | Not   -> "!"
;;

let rec eval sym_table = function
  | NumLit(x) -> Num(x)
  | StrLit(s) -> String(s)
  | BoolLit(b) -> Bool(b)
  | Unop(op, _) -> Bool(false) (* TODO: Broken *)
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
          | _   -> raise (Exceptions.InvalidOperation("Number", (op_to_string op)))
        end
      | String(s1), String(s2) ->
        begin
          match op with
          | Caret -> String(s1 ^ s2)
          | _     -> raise (Exceptions.InvalidOperation("String", (op_to_string op)))
        end
      | Bool(b1), Bool(b2) ->
        begin
          match op with
          | And -> Bool(b1 && b2)
          | Or  -> Bool(b1 || b2)
          | _     -> raise (Exceptions.InvalidOperation("Bool", (op_to_string op)))
        end
      | _, _ -> Unit(())
    end
  | Val(s) -> 
    (try Hashtbl.find sym_table s
     with Not_found -> raise (Exceptions.Undefined s))
  | Assign(s, t, e) ->
    let v = eval sym_table e in 
    Hashtbl.add sym_table s v; 
    v
  | Seq(e1, e2) ->
    let _ = eval sym_table e1 in 
    eval sym_table e2 
;;

(* the "main" function *)
let _ =                                                              
  let sym_table = Hashtbl.create 100 in
  let cin = if Array.length Sys.argv > 1
    then open_in Sys.argv.(1)
    else stdin
  in
  let lexbuf = Lexing.from_channel cin in
  try 
    let expr = Parser.expr Scanner.token lexbuf in
    let result = eval sym_table expr in 
    match result with 
    | Num(x)    -> print_endline (string_of_float x)
    | String(s) -> print_endline s
    | Bool(b)   -> print_endline (string_of_bool b)
    | Unit(_)   -> print_endline "got back unit"
  with
  | Exceptions.IllegalCharacter(c, line_no, char_no) -> 
    print_endline ("Syntax Error: Illegal Character " ^ c ^ " found at line: " 
                   ^ (string_of_int line_no) ^ ", position: " ^ (string_of_int char_no) )
  | Exceptions.Undefined(s) ->
    print_endline ("Error: value " ^ s ^ " was used before it was defined")
  | Exceptions.InvalidOperation(t, op) ->
    print_endline ("Error: Invalid operation '" ^ op ^ "' on type: " ^ t)
;;

