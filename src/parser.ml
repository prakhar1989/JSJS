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

open Parsing;;
let _ = parse_error;;
# 1 "src/parser.mly"
 
open Ast
# 54 "src/parser.ml"
let yytransl_const = [|
    0 (* EOF *);
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
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\000\000"

let yylen = "\002\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\002\000\001\000\001\000\001\000\001\000\001\000\006\000\006\000\
\006\000\006\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\011\000\012\000\010\000\013\000\
\014\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\003\000\004\000\005\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yydgoto = "\002\000\
\010\000"

let yysindex = "\255\255\
\029\255\000\000\029\255\218\254\000\000\000\000\000\000\000\000\
\000\000\033\255\075\255\233\254\029\255\029\255\029\255\029\255\
\029\255\029\255\029\255\029\255\029\255\240\254\018\255\018\255\
\000\000\000\000\000\000\075\255\075\255\075\255\062\255\248\254\
\254\254\003\255\019\255\029\255\029\255\029\255\029\255\062\255\
\062\255\062\255\062\255"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\039\000\005\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\001\000\003\000\
\000\000\000\000\000\000\007\000\009\000\020\000\002\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\
\008\000\010\000\011\000"

let yygindex = "\000\000\
\012\000"

let yytablesize = 312
let yytable = "\001\000\
\001\000\019\000\002\000\015\000\009\000\012\000\007\000\016\000\
\008\000\017\000\018\000\022\000\036\000\032\000\011\000\033\000\
\034\000\035\000\037\000\006\000\015\000\016\000\017\000\038\000\
\023\000\024\000\025\000\026\000\027\000\028\000\029\000\030\000\
\031\000\013\000\014\000\015\000\016\000\017\000\020\000\039\000\
\000\000\000\000\003\000\000\000\018\000\019\000\000\000\040\000\
\041\000\042\000\043\000\004\000\000\000\000\000\020\000\000\000\
\005\000\006\000\000\000\000\000\000\000\000\000\013\000\014\000\
\015\000\016\000\017\000\000\000\021\000\007\000\008\000\000\000\
\009\000\018\000\019\000\013\000\014\000\015\000\016\000\017\000\
\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\001\000\001\000\002\000\002\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\001\000\001\000\002\000\002\000\
\009\000\009\000\007\000\007\000\008\000\008\000\001\000\000\000\
\002\000\000\000\009\000\000\000\007\000\000\000\008\000\006\000\
\006\000\000\000\000\000\000\000\001\000\019\000\002\000\015\000\
\009\000\006\000\007\000\016\000\008\000\017\000\018\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000"

let yycheck = "\001\000\
\000\000\000\000\000\000\000\000\000\000\044\001\000\000\000\000\
\000\000\000\000\000\000\035\001\021\001\030\001\003\000\032\001\
\033\001\034\001\021\001\000\000\003\001\004\001\005\001\021\001\
\013\000\014\000\015\000\016\000\017\000\018\000\019\000\020\000\
\021\000\001\001\002\001\003\001\004\001\005\001\000\000\021\001\
\255\255\255\255\014\001\255\255\012\001\013\001\255\255\036\000\
\037\000\038\000\039\000\023\001\255\255\255\255\022\001\255\255\
\028\001\029\001\255\255\255\255\255\255\255\255\001\001\002\001\
\003\001\004\001\005\001\255\255\036\001\041\001\042\001\255\255\
\044\001\012\001\013\001\001\001\002\001\003\001\004\001\005\001\
\255\255\255\255\255\255\022\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\001\001\002\001\001\001\002\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\012\001\013\001\012\001\013\001\
\012\001\013\001\012\001\013\001\012\001\013\001\022\001\255\255\
\022\001\255\255\022\001\255\255\022\001\255\255\022\001\012\001\
\013\001\255\255\255\255\255\255\036\001\036\001\036\001\036\001\
\036\001\022\001\036\001\036\001\036\001\036\001\036\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\036\001"

let yynames_const = "\
  EOF\000\
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
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 39 "src/parser.mly"
                                      ( Binop(_1, Add, _3) )
# 288 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 40 "src/parser.mly"
                                      ( Binop(_1, Sub, _3) )
# 296 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 41 "src/parser.mly"
                                      ( Binop(_1, Mul, _3) )
# 304 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 42 "src/parser.mly"
                                      ( Binop(_1, Div, _3) )
# 312 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 43 "src/parser.mly"
                                      ( Binop(_1, Mod, _3) )
# 320 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 44 "src/parser.mly"
                                      ( Binop(_1, Caret, _3) )
# 328 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 45 "src/parser.mly"
                                      ( Binop(_1, And, _3) )
# 336 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 46 "src/parser.mly"
                                      ( Binop(_1, Or, _3) )
# 344 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 47 "src/parser.mly"
                                      ( Unop(Not, _2) )
# 351 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 48 "src/parser.mly"
                                      ( NumLit(_1) )
# 358 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "src/parser.mly"
                                      ( BoolLit(true) )
# 364 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "src/parser.mly"
                                      ( BoolLit(false) )
# 370 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 51 "src/parser.mly"
                                      ( StrLit(_1) )
# 377 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 52 "src/parser.mly"
                                      ( Val(_1) )
# 384 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 53 "src/parser.mly"
                                      ( Assign(_2, TNum, _6) )
# 392 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 54 "src/parser.mly"
                                      ( Assign(_2, TBool, _6) )
# 400 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 55 "src/parser.mly"
                                      ( Assign(_2, TString, _6) )
# 408 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 56 "src/parser.mly"
                                      ( Assign(_2, TUnit, _6) )
# 416 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 57 "src/parser.mly"
                                      ( Seq(_1, _3) )
# 424 "src/parser.ml"
               : Ast.expr))
(* Entry expr *)
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
let expr (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.expr)
