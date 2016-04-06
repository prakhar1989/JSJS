let test_location = "test/compiler-tests/"

type test_kind = Pass | Fail

type color = Grey | Red | Green | White

(* reference: http://misc.flogisoft.com/bash/tip_colors_and_formatting
   returns a string that has been color coded *)
let colorize msg c =
  let pad = match c with
    | Grey -> "90"
    | Red -> "31"
    | Green -> "32"
    | White -> "37" in
  Printf.sprintf "\027[%sm %s" pad msg
;;

(* runs a unix command and returns
   the output as a list and the status code *)
let run_cmd cmd =
  let chan = Unix.open_process_in cmd in
  let res = ref ([] : string list) in
  let rec aux () =
    let line = input_line chan in
    res := line :: !res;
    aux () in
  try aux ()
  with End_of_file ->
    let status = Unix.close_process_in chan in
    let cmd_result = match status with
      | Unix.WEXITED(c) -> if c == 0 then Pass else Fail
      | _ -> Fail in
    (List.rev !res, cmd_result)
;;

(* takes a diff between a list of lines and a filename
   by first dumping the lines to a file
   and then running the `diff` command in unix`
   Returns an option with the diff output *)
let diff_output lines filename =

  (* dumps a list of lines to a file *)
  let dump_to_file lines fname =
    let oc = open_out fname in
    List.iter
      (fun line -> Printf.fprintf oc "%s\n" line)
      lines;
    close_out oc in

  let _ = dump_to_file lines "temp.out" in
  let cmd = Printf.sprintf "diff temp.out %s" filename in
  let diff_output, status = run_cmd cmd in
  begin
    match status with
    | Pass -> None
    | Fail -> Some(String.concat "\n" diff_output)
  end
;;

let run_testcase fname =
  (* determine test type - pass or fail *)
  let test_type, test_name =
    match (Str.split (Str.regexp "-") fname) with
    | "fail" :: x :: [] -> Fail, x
    | "pass" :: x :: [] -> Pass, x
    | _ -> raise (failwith "Invalid file format") in

  (* generate command to run *)
  let fpath = Filename.concat test_location fname in
  let cmd = Printf.sprintf "./jsjs.out %s" fpath in

  (* get output filename and path *)
  let output_filename = Str.replace_first (Str.regexp "jsjs") "out" fname in
  let output_path = Filename.concat test_location output_filename in

  (* run command and pattern match on result *)
  let cmd_output, status = run_cmd cmd in
  match test_type, status with
  (* expected and actual match on test type - both passing *)
  | Pass, Pass -> begin
      (* run the generated file with node and diff output *)
      let node_output, status = run_cmd "node out.js" in
      (match diff_output node_output output_path with
     | None -> Printf.printf "\027[32m✓ %s\n" fname; Pass
     | Some(op) -> begin
         Printf.printf "\027[31m✖ %s\n." fname;
         Printf.printf "\n\027[37m %s\n\n" op;
       end; Fail)
    end

  (* expected and actual match on test type - both failing *)
  | Fail, Fail ->
    (match diff_output cmd_output output_path with
     | None -> Printf.printf "\027[32m✓ %s\n" fname; Pass
     | Some(op) -> begin
         Printf.printf "\027[31m✖ %s\n." fname;
         Printf.printf "\n\027[37m %s\n\n" op;
       end; Fail)

  (* expected pass and got failure *)
  | Pass, Fail -> begin
      Printf.printf "\027[31m✖ %s\n" fname;
      Printf.printf "Expected test case to pass, but it failed";
    end; Fail

  (* expected failure but passed *)
  | Fail, Pass -> begin
      Printf.printf "\027[31m✖ %s\n" fname;
      Printf.printf "Expected test case to fail, but it passed";
    end; Fail
;;

let run testcases () =
  let total = List.length testcases in
  let t_start = Sys.time() in
  let passing = List.fold_left
      (fun acc t ->
         acc + (match run_testcase t with Pass -> 1 | Fail -> 0))
      0 testcases
  in
  let template = format_of_string "\027[37m


    Test Summary
    -------------------------

    All testcases complete.

    Total Testcases : %d
    Total Passing   : %d
    Total Failed    : %d

    Execution time: %fs
      \n" in
  Printf.printf template total passing
    (total-passing)
    (Sys.time() -. t_start)
;;

let get_files dirname =
    let d = Unix.opendir dirname in
    let files = ref ([] : string list) in
    let rec aux () =
      let fname = Unix.readdir d in
      files := fname :: !files;
      aux () in
    try aux ()
    with End_of_file ->
      Unix.closedir d; files
;;

let init () =
  let files = !(get_files test_location) in
  let testcases = List.filter
      (fun f ->
         try ignore (Str.search_forward (Str.regexp ".jsjs") f 0); true
         with Not_found -> false)
      files
  in
  run testcases ()
;;

init ();
