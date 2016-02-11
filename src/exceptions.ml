(* Exceptions used in the JSJS compiler *)

(* Scanner *)
exception IllegalCharacter of string * int * int

(* SAST *)
exception Undefined of string
exception InvalidOperation of string * string
