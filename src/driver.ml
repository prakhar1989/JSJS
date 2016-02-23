open Ast
open Lexing
open Parsing
open Core.Std

module NameMap = Map.Make(String);;
type nametable = Ast.primitiveValue NameMap.t;;

type action = Compile | GenAST

(* creates intermediate JS *)
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

let driver filename axn =
  let lexbuf = Lexing.from_channel (open_in filename) in
  let exprs, fdecls = Parser.program Scanner.token lexbuf in

  (* JS -> AST -> JS *)
  let print_ast () = 
    let fs = List.map fdecls ~f:Stringify.string_of_func_decl in 
    List.iter fs ~f:(fun x -> print_endline x);
    print_endline "";
    let exps = List.map exprs ~f:Stringify.string_of_expr in
    List.iter exps ~f:(fun x -> print_endline (x ^ ";"));
  in 

  (* Compile *)
  let compile_to_js () = 
    let js_exprs = List.fold_left exprs
        ~f:(fun acc expr -> (Codegen.js_of_expr expr) :: acc)
        ~init: [] 
    in
    let s = String.concat ~sep:",\n" (List.rev js_exprs) in
    dump_javascript "codegen/out.js" s;
    print_endline "Intermediate JS ready. Run `make js` to compile to JS."
  in

  match axn with
  | Compile -> compile_to_js ()
  | GenAST -> print_ast ()
;;

let command =
  Command.basic 
    ~summary: "The JSJS compiler."
    ~readme: (fun () -> "Learn more at http://github.com/prakhar1989/JSJS")
    Command.Spec.(
      empty
      +> anon ("filename" %: file)
      +> flag "-s" no_arg ~doc:" JSJS -> AST -> JSJS"
    )
    (fun filename f1 () -> 
       let axn = match f1 with 
         | true  -> GenAST
         | false -> Compile
       in
       driver filename axn)
;;

let () = Command.run ~version:"0.1" command;;
