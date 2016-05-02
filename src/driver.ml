open Ast
open Lexing
open Parsing
open Core.Std
open Codegen

type action = Compile | GenAST

let generate_stdlib file_path module_name =
  let lexbuf = Lexing.from_channel (open_in file_path) in
  let program = Parser.program Scanner.token lexbuf in
  let inferred_program = try Typecheck.type_check program
    with
    | Exceptions.TypeError(s) -> print_endline s; exit 1
    | e -> Printf.printf "%s" (Exn.to_string e); exit 1
  in
  let map = Lib.ModuleMap.find module_name Lib.modules in
  let js_exprs = List.fold_left inferred_program
      ~f:(fun acc aexpr -> (js_of_aexpr module_name map aexpr) :: acc)
      ~init: []
  in
  let string_of_stdlib = String.concat ~sep:"\n" (List.rev js_exprs) in
  let template = format_of_string "
%s
" in
  Printf.sprintf template string_of_stdlib
;;

(* creates intermediate JS *)
let dump_javascript filename str =
  let template = format_of_string "'use strict'
%s
%s
%s
var num_to_string = function (x) { return x.toString(); };
var print_string = console.log;
var print_num = console.log;
var print_bool = console.log;
var print = console.log;
// generated code follows
%s" in
  let stdlib = [("List", "lib/list.jsjs"); ("Map", "lib/map.jsjs")] in
  let module_names = String.concat ~sep:"" (List.map
      ~f: (fun (x, _) -> Printf.sprintf "let %s = {};" x) stdlib)
  in
  let js_of_stdlib = List.fold_left ~init: "" stdlib
      ~f: (fun acc (name, path) -> acc ^ (generate_stdlib path name)) in
  let outc = Out_channel.create filename in
  Printf.fprintf outc template Lib.immutable module_names js_of_stdlib str;
  Out_channel.close outc
;;

let driver filename axn =
  let lexbuf = try Lexing.from_channel (open_in filename) with
    | Sys_error(s) -> Printf.printf "Error: %s\n" s; exit 1
  in
  let program = try Parser.program Scanner.token lexbuf with
    | Sys_error(s) -> Printf.printf "Error: %s\n" s; exit 1
  in
  (* TODO: Fix this error catching *)
  let inferred_program = try Typecheck.type_check program
    with
    | Exceptions.TypeError(s) -> Printf.printf "%s\n" s; exit 1
    | e -> Printf.printf "Error: %s\n" (Exn.to_string e); exit 1
  in

  (* JS -> AST -> JS *)
  let print_ast () =
    List.iter inferred_program
      ~f:(fun t -> print_endline (Stringify.string_of_aexpr t));
  in

  (* Compile *)
  let compile_to_js () =
    let js_exprs = List.fold_left inferred_program
        ~f:(fun acc aexpr -> (js_of_aexpr "" NameMap.empty aexpr) :: acc)
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
