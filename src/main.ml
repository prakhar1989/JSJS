open Ast

let rec eval sym_table = function
  | NumLit(x) -> x 
  | Val(s) -> 
    (try Hashtbl.find sym_table s 
    with Not_found -> failwith "NULL POINTER EXCEPTION. BOOYA! =)")
  | Binop (e1, op, e2) -> 
    let v1 = eval sym_table e1 and v2 = eval sym_table e2 in
    (match op with
    | Add -> v1 +. v2
    | Mul -> v1 *. v2 
    | Sub -> v1 -. v2
    | Div -> v1 /. v2
    | Mod -> mod_float v1 v2)
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
  let lexbuf = Lexing.from_channel stdin in
  let expr = Parser.expr Scanner.token lexbuf in
  let result = eval sym_table expr in 
  print_endline (string_of_float result)
;;

