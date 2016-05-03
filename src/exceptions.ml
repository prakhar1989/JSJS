(* Exceptions used in the JSJS compiler *)
open Ast
open Stringify

(* Scanner *)
exception IllegalCharacter of string * int * int

(* Typechecker *)
exception Undefined of string
exception CannotRedefineKeyword of string
exception InvalidOperation of primitiveType * op
exception MismatchedTypes of primitiveType * primitiveType
exception AlreadyDefined of string
exception NonUniformTypeContainer of primitiveType * primitiveType
exception MismatchedArgCount of int * int
exception UndefinedProperty of string * expr
exception ModuleNotFound of string
exception InvalidReturnExpression of string
exception InvalidKeyType of primitiveType

(* Driver *)
exception TypeError of string

let handle_error (e: exn) =
  match e with
  | ModuleNotFound(s) ->
    raise (TypeError (Printf.sprintf "Type error: Module '%s' not defined" s))
  | InvalidReturnExpression(s) ->
    raise (TypeError (Printf.sprintf "Type error: Assignment expressions cannot be returned"))
  | InvalidOperation(t, op) ->
    let st = string_of_type t and sop = string_of_op op in
    raise (TypeError (Printf.sprintf "Type error: Invalid operation '%s' on type '%s'" sop st))
  | MismatchedTypes(t1, t2) ->
    let st1 = string_of_type t1 and st2 = string_of_type t2 in
    raise (TypeError (Printf.sprintf "Type error: expected value of type '%s', got a value of type '%s' instead" st1 st2))
  | NonUniformTypeContainer(t1, t2) ->
    let st1 = string_of_type t1 and st2 = string_of_type t2 in
    raise (TypeError (Printf.sprintf "Type error: Lists can only contain one type. Expected '%s', got a '%s' instead" st1 st2))
  | Undefined(s) ->
    raise (TypeError (Printf.sprintf "Error: value '%s' was used before it was defined" s))
  | AlreadyDefined(s) ->
    raise (TypeError (Printf.sprintf "Error: '%s' cannot be redefined in the current scope" s))
  | UndefinedProperty(module_name, e) ->
    let prop = string_of_expr e in
    raise (TypeError (Printf.sprintf "Error: property '%s' is not defined in module '%s'" prop module_name))
  | CannotRedefineKeyword(keyword) ->
    raise (TypeError (Printf.sprintf "Error: Cannot define Javascript keyword '%s'" keyword))
  | MismatchedArgCount(l1, l2) ->
    raise (TypeError (Printf.sprintf "Error: Expected number of argument(s): %d, got %d instead." l1 l2))
  | InvalidKeyType(t) ->
    raise (TypeError (Printf.sprintf "Type Error: Cannot have '%s' as key type in a Map." (string_of_type t)))
  | e -> raise (TypeError (Printexc.to_string e))
;;
