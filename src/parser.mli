type token =
  | EOF
  | PLUS
  | MINUS
  | MULTIPLY
  | DIVIDE
  | MODULUS
  | LT
  | LTE
  | GT
  | GTE
  | EQUALS
  | NEQ
  | AND
  | OR
  | NOT
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | RSQUARE
  | LSQUARE
  | ASSIGN
  | CARET
  | VAL
  | IF
  | THEN
  | ELSE
  | DEF
  | TRUE
  | FALSE
  | NUM
  | LIST
  | BOOL
  | STRING
  | UNIT
  | COLON
  | SEMICOLON
  | DOT
  | FATARROW
  | COMMA
  | THINARROW
  | NUM_LIT of (float)
  | STR_LIT of (string)
  | MOD_LIT of (string)
  | ID of (string)

val expr :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.expr
