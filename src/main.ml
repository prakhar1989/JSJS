open Ast
open Lexing

let rec eval sym_table = function
  | NumLit(x) -> Num(x)
  | StrLit(s) -> String(s)
  | Binop (e1, op, e2) -> 
    let x1 = eval sym_table e1 and x2 = eval sym_table e2 in
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
          | _   -> raise (failwith "invalid operation")
        end
      | String(s1), String(s2) ->
        begin
          match op with
          | Caret -> String(s1 ^ s2)
          | _ -> raise (failwith "invalid operation")
        end
      | _, _ -> Unit(())
    end
  | Val(s) -> 
    (try Hashtbl.find sym_table s
    with Not_found -> failwith "NULL POINTER EXCEPTION. BOOYA! =)")
  | Assign(s, t, e) ->
    let v = eval sym_table e in 
    Hashtbl.add sym_table s v; 
    v
  | Seq(e1, e2) ->
    let _ = eval sym_table e1 in 
    eval sym_table e2 
;;

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
;;

