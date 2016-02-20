
(* The type of tokens. *)

type token = 
  | VAL
  | UNIT
  | TRUE
  | THINARROW
  | THEN
  | STR_LIT of (string)
  | STRING
  | SEMICOLON
  | RSQUARE
  | RPAREN
  | RBRACE
  | PLUS
  | OR
  | NUM_LIT of (float)
  | NUM
  | NOT
  | NEQ
  | MULTIPLY
  | MODULUS
  | MODULE_LIT of (string)
  | MINUS
  | LTE
  | LT
  | LSQUARE
  | LPAREN
  | LIST
  | LBRACE
  | IF
  | ID of (string)
  | GTE
  | GT
  | FATARROW
  | FALSE
  | EQUALS
  | EOF
  | ELSE
  | DOT
  | DIVIDE
  | DEF
  | COMMA
  | COLON
  | CARET
  | BOOL
  | ASSIGN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
