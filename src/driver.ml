open Ast
open Lexing
open Parsing
open Codegen
open Core.Std

type action = Compile | GenAST

let generate_stdlib file_path module_name =
  let lexbuf = Lexing.from_channel (open_in file_path) in
  let program = Parser.program Scanner.token lexbuf in
  let _ = try Semantic.type_check program
    with
    | Exceptions.TypeError(s) -> print_endline s; exit 1
    | e -> Printf.printf "%s" (Exn.to_string e); exit 1
  in
  let map = Lib.ModuleMap.find module_name Lib.modules in
  let js_exprs = List.fold_left program
      ~f:(fun acc expr -> (js_of_expr module_name map expr) :: acc)
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
let num_to_string = function (x) { return x.toString(); };
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
    | Sys_error(s) -> Printf.printf "Error: %s" s; exit 1
  in
  let program = try Parser.program Scanner.token lexbuf with
    | Sys_error(s) -> Printf.printf "Error: %s" s; exit 1
  in
  (* TODO: Fix this error catching *)
  let _ = try Semantic.type_check program
    with
    | Exceptions.TypeError(s) -> Printf.printf "%s" s; exit 1
    | e -> Printf.printf "Error: %s" (Exn.to_string e); exit 1
  in

  (* JS -> AST -> JS *)
  let print_ast () =
    let exps = List.map program ~f:Stringify.string_of_expr in
    List.iter exps ~f:(fun x -> print_endline (x ^ ";"));
  in

  (* Compile *)
  let compile_to_js () =
    let js_exprs = List.fold_left program
        ~f:(fun acc expr -> (js_of_expr "" NameMap.empty expr) :: acc)
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
