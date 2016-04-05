let test_location = "test/compiler-tests/"

type test_kind = Pass | Fail

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
    let s = match status with
      | Unix.WEXITED(c) -> if c == 0 then Pass else Fail
      | _ -> Fail in
    (List.rev !res, s)
;;

let dump_to_file lines fname = 
  let oc = open_out fname in
  List.iter 
    (fun line -> Printf.fprintf oc "%s\n" line) 
    lines;
  close_out oc;
;;

let run_testcase fname =
  let test_type, test_name =
    match (Str.split (Str.regexp "-") fname) with
    | "fail" :: x :: [] -> Fail, x
    | "pass" :: x :: [] -> Pass, x
    | _ -> raise (failwith "Invalid file format") in
  let fpath = Filename.concat test_location fname in
  let cmd = Printf.sprintf "./jsjs.out %s" fpath in
  let output_filename = Printf.sprintf "out-%s" test_name in
  let _ = Filename.concat test_location output_filename in
  let cmd_output, status = run_cmd cmd in
  match test_type, status with
  | Pass, Pass -> print_endline "all passing";
  | Fail, Fail -> print_endline "all failing"; dump_to_file cmd_output "temp-out.txt";
  | _ -> print_endline "failing";
;;

let run testcases () =
  List.iter run_testcase testcases;
;;

let testcases = ["fail-assign1.jsjs";];;

run testcases ();;
