(* Exceptions used in the JSJS compiler *)
open Ast

(* Scanner *)
exception IllegalCharacter of string * int * int

(* SAST *)
exception Undefined of string
exception InvalidOperation of primitiveType * op
exception MismatchedTypes of primitiveType * primitiveType
exception AlreadyDefined of string
exception NonUniformTypeContainer of primitiveType * primitiveType 

(* Driver *)
exception TypeError
