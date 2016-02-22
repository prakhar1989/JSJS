open Ast
open Lexing
open Parsing

module NameMap = Map.Make(String);;
type nametable = Ast.primitiveValue NameMap.t;;

(* JSJS -> AST -> JSJS *)
let print_program () =                                                              
  let filename = if Array.length Sys.argv > 1
    then Sys.argv.(1)
    else raise (failwith "Error: please provide a filename. Usage: ./jsjs.out filename")
  in
  let lexbuf = Lexing.from_channel (open_in filename) in
  let exprs, _ = Parser.program Scanner.token lexbuf in

  (*[> print functions <]*)
  (*let fs = List.map Stringify.string_of_func_decl fdecls in*)
  (*List.iter (fun x -> print_endline x) fs;*)

  (*print_endline "";*)

  (*[> print exprs <]*)
  (*let s = List.map Stringify.string_of_expr exprs in*)
  (*List.iter (fun x -> print_endline (x ^ ";")) s;*)

  let s = Codegen.js_of_expr (List.hd exprs) in
  let template = format_of_string "var ast = require('./codegen/jsast');
var es = require('escodegen');
var code = %s;
console.log(es.generate(code));"
  in
  let oc = open_out "jsjs.js" in
  Printf.fprintf oc template s;
  close_out oc;
;;

print_program ();;
