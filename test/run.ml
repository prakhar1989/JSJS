let test_location = "test/compiler-tests/"

type test_kind = Pass | Fail

let run cmd =
  let chan = Unix.open_process_in cmd in
  let res = ref ([] : string list) in
  let rec aux () =
    let line = input_line chan in
    res := line :: !res;
    aux () in
  try aux ()
  with End_of_file ->
    let status = (match Unix.close_process_in chan with
      | Unix.WEXITED(c) -> if c == 0 then Pass else Fail
      | _ -> Fail) in
    (List.rev !res, status)
;;

let run_testcase fname =
  let test_type, test_name = 
    match (Str.split (Str.regexp "-") fname) with
    | "fail" :: x :: [] -> Fail, x
    | "pass" :: x :: [] -> Pass, x
    | _ -> raise (failwith "Invalid file format") in
  let fpath = Filename.concat test_location fname in
  let cmd = Printf.sprintf "./jsjs.out %s" fpath in
  let cmd_output, status = run cmd in
  match test_type, status with
  | Pass, Pass -> true
  | Fail, Fail -> true
  | _ -> false
;;

let run testcases () = 
  List.iter (fun t -> let _ = run_testcase t in ()) testcases
;;

let testcases = ["fail-assign.jsjs"; "pass-assign2.jsjs"];;

run testcases ();;
