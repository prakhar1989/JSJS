open Ast
open Lexing
open Parsing
open Core.Std

module NameMap = Map.Make(String);;
type nametable = Ast.primitiveValue NameMap.t;;


let dump_javascript filename str = 
  let template = format_of_string "var ast = require('./jsast');
var es = require('escodegen');
var codes = [%s];
var gen = codes.map((c) => es.generate(c));
console.log(gen.join('\\n'))" in
  let outc = Out_channel.create filename in
  Printf.fprintf outc template str;
  Out_channel.close outc
;;


(* JSJS -> AST -> JSJS *)
let print_program filename () =
  let lexbuf = Lexing.from_channel (open_in filename) in
  let exprs, _ = Parser.program Scanner.token lexbuf in

  (*[> print functions <]*)
  (*let fs = List.map Stringify.string_of_func_decl fdecls in*)
  (*List.iter (fun x -> print_endline x) fs;*)

  (*print_endline "";*)

  (*[> print exprs <]*)
  (*let s = List.map Stringify.string_of_expr exprs in*)
  (*List.iter (fun x -> print_endline (x ^ ";")) s;*)

  let js_exprs = List.fold_left exprs
      ~f:(fun acc expr -> (Codegen.js_of_expr expr) :: acc)
      ~init: [] 
  in
  let s = String.concat ~sep:",\n" (List.rev js_exprs) in
  dump_javascript "codegen/out.js" s;
;;

let command =
  Command.basic 
    ~summary: "The JSJS compiler"
    ~readme: (fun () -> "Learn more at http://github.com/prakhar1989/JSJS")
    Command.Spec.(empty +> anon ("filename" %: string))
    print_program
;;

let () =
  Command.run ~version:"0.1" ~build_info:"JSJS" command
;;
