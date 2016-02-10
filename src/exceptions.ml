(* Exceptions used in the JSJS compiler *)

(* Scanner *)
exception IllegalCharacter of string * int * int
