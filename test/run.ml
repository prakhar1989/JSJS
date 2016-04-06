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

(* dumps a list of lines to a file *)
let dump_to_file lines fname =
  let oc = open_out fname in
  List.iter
    (fun line -> Printf.fprintf oc "%s\n" line)
    lines;
  close_out oc;
;;

let validate_output output output_fname =
  let _ = dump_to_file output "temp.out" in
  let cmd = Printf.sprintf "diff temp.out %s" output_fname in
  let diff_output, status = run_cmd cmd in
  begin
    match status with
    | Pass -> None
    | Fail -> Some(String.concat "\n" diff_output)
  end
;;

let run_testcase fname =
  let test_type, test_name =
    match (Str.split (Str.regexp "-") fname) with
    | "fail" :: x :: [] -> Fail, x
    | "pass" :: x :: [] -> Pass, x
    | _ -> raise (failwith "Invalid file format") in
  let fpath = Filename.concat test_location fname in
  let cmd = Printf.sprintf "./jsjs.out %s" fpath in
  let output_filename = Str.replace_first (Str.regexp "jsjs") "out" fname in
  let output_path = Filename.concat test_location output_filename in
  let cmd_output, status = run_cmd cmd in
  match test_type, status with
  | Pass, Pass -> print_endline "all passing"; Pass
  | Fail, Fail ->
    (match validate_output cmd_output output_path with
     | None -> Printf.printf "\027[32m✓ %s\n" fname; Pass
     | Some(op) -> Printf.printf "\027[31m✖ %s\n." fname;
       Printf.printf "\n\027[37m %s\n\n" op; Fail)
  | Pass, Fail -> begin
      Printf.printf "\027[31m✖ %s\n" fname;
      Printf.printf "Expected test case to pass, but it failed";
    end; Fail
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

let testcases = ["fail-assign3.jsjs"; "fail-assign1.jsjs"];;

run testcases ()
