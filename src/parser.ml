type token =
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

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 open Lexing 
# 52 "parser.ml"
let yytransl_const = [|
  257 (* PLUS *);
  258 (* MINUS *);
  259 (* MULTIPLY *);
  260 (* DIVIDE *);
  261 (* MODULUS *);
  262 (* LT *);
  263 (* LTE *);
  264 (* GT *);
  265 (* GTE *);
  266 (* EQUALS *);
  267 (* NEQ *);
  268 (* AND *);
  269 (* OR *);
  270 (* NOT *);
  271 (* LPAREN *);
  272 (* RPAREN *);
  273 (* LBRACE *);
  274 (* RBRACE *);
  275 (* RSQUARE *);
  276 (* LSQUARE *);
  277 (* ASSIGN *);
  278 (* CARET *);
  279 (* VAL *);
  280 (* IF *);
  281 (* THEN *);
  282 (* ELSE *);
  283 (* DEF *);
  284 (* TRUE *);
  285 (* FALSE *);
  286 (* NUM *);
  287 (* LIST *);
  288 (* BOOL *);
  289 (* STRING *);
  290 (* UNIT *);
  291 (* COLON *);
  292 (* SEMICOLON *);
  293 (* DOT *);
  294 (* FATARROW *);
  295 (* COMMA *);
  296 (* THINARROW *);
    0|]

let yytransl_block = [|
  297 (* NUM_LIT *);
  298 (* STR_LIT *);
  299 (* MOD_LIT *);
  300 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\000\000"

let yylen = "\002\000\
\000\000\002\000"

let yydefred = "\000\000\
\001\000\000\000\002\000"

let yydgoto = "\002\000\
\003\000"

let yysindex = "\255\255\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000"

let yytablesize = 0
let yytable = "\001\000"

let yycheck = "\001\000"

let yynames_const = "\
  PLUS\000\
  MINUS\000\
  MULTIPLY\000\
  DIVIDE\000\
  MODULUS\000\
  LT\000\
  LTE\000\
  GT\000\
  GTE\000\
  EQUALS\000\
  NEQ\000\
  AND\000\
  OR\000\
  NOT\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  RSQUARE\000\
  LSQUARE\000\
  ASSIGN\000\
  CARET\000\
  VAL\000\
  IF\000\
  THEN\000\
  ELSE\000\
  DEF\000\
  TRUE\000\
  FALSE\000\
  NUM\000\
  LIST\000\
  BOOL\000\
  STRING\000\
  UNIT\000\
  COLON\000\
  SEMICOLON\000\
  DOT\000\
  FATARROW\000\
  COMMA\000\
  THINARROW\000\
  "

let yynames_block = "\
  NUM_LIT\000\
  STR_LIT\000\
  MOD_LIT\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 28 "parser.mly"
                  ( )
# 185 "parser.ml"
               : unit))
(* Entry input *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let input (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : unit)
