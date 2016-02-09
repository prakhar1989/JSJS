open Ast

let rec eval = function
  | NumLit(x) -> x
  | Val(s) -> max_float
  | Binop (e1, op, e2) -> 
    let v1 = eval e1 and v2 = eval e2 in
    (match op with
    | Add -> v1 +. v2
    | Mul -> v1 *. v2 
    | Sub -> v1 -. v2
    | Div -> v1 /. v2
    | Mod -> mod_float v1 v2)
  | _ -> -10.0
    
let _ =                                                              
  let lexbuf = Lexing.from_channel stdin in
  let expr = Parser.expr Scanner.token lexbuf in
  let result = eval expr in 
  print_endline (string_of_float result)
;;

