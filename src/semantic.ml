open Ast
open Lexing
open Parsing

module NameMap = Map.Make(String);;
type nametable = Ast.primitiveValue NameMap.t;;

