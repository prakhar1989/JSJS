open Ast
open Lexing
open Parsing
open Core.Std

type action = Compile | GenAST

(* creates intermediate JS *)
let dump_javascript filename str =
  let template = format_of_string "'use strict'
let num_to_string = function (x) { return x.toString(); };
%s" in
  let outc = Out_channel.create filename in
  Printf.fprintf outc template str;
  Out_channel.close outc
;;

let driver filename axn =
  let lexbuf = Lexing.from_channel (open_in filename) in
  let program = Parser.program Scanner.token lexbuf in
  (* TODO: Fix this error catching *)
  let _ = try Semantic.type_check program
    with
    | Exceptions.TypeError(s) -> print_endline s; exit 1
    | e -> Printf.printf "%s" (Exn.to_string e); exit 1
  in

  (* JS -> AST -> JS *)
  let print_ast () =
    let exps = List.map program ~f:Stringify.string_of_expr in
    List.iter exps ~f:(fun x -> print_endline (x ^ ";"));
  in

  (* Compile *)
  let compile_to_js () =
    let js_exprs = List.fold_left program
        ~f:(fun acc expr -> (Codegen.js_of_expr expr) :: acc)
        ~init: []
    in
    let s = String.concat ~sep:"\n" (List.rev js_exprs) in
    dump_javascript "out.js" s;
    print_endline "JS file ready - out.js";
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
