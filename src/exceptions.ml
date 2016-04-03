(* Exceptions used in the JSJS compiler *)
open Ast

(* Scanner *)
exception IllegalCharacter of string * int * int

(* Typechecker *)
exception Undefined of string
exception InvalidOperation of primitiveType * op
exception MismatchedTypes of primitiveType * primitiveType
exception AlreadyDefined of string
exception NonUniformTypeContainer of primitiveType * primitiveType
exception MismatchedArgCount of int * int
exception MismatchedOperandTypes of op * primitiveType * primitiveType
exception UndefinedProperty of string * string
exception UndefinedType of char
exception InvalidArgumentType of primitiveType
exception ModuleNotFound of string
exception InvalidReturnExpression of string
exception InvalidKeyType of primitiveType
exception InvalidGenericFunctionDefinition

(* Driver *)
exception TypeError of string
