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
\001\000\003\000\003\000\003\000\003\000\004\000\004\000\004\000\
\004\000\004\000\005\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\006\000\000\000"

let yylen = "\002\000\
\003\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\003\000\001\000\001\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\002\000\002\000\003\000\008\000\
\006\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\
\008\000\006\000\009\000\010\000\034\000\000\000\012\000\013\000\
\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\028\000\000\000\000\000\
\000\000\000\000\016\000\017\000\018\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\
\002\000\003\000\004\000\005\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\011\000\032\000"

let yydgoto = "\002\000\
\013\000\056\000\061\000\015\000\067\000\016\000"

let yysindex = "\010\000\
\035\255\000\000\035\255\035\255\035\255\231\254\023\255\000\000\
\000\000\000\000\000\000\000\000\000\000\145\255\000\000\000\000\
\000\000\128\000\079\255\009\255\035\255\035\255\035\255\035\255\
\035\255\035\255\035\255\035\255\035\255\035\255\035\255\035\255\
\035\255\035\255\035\255\001\000\035\255\000\000\236\254\101\255\
\036\255\036\255\000\000\000\000\000\000\004\255\004\255\004\255\
\004\255\004\255\004\255\128\000\128\000\128\000\000\000\106\000\
\000\000\000\000\000\000\000\000\024\255\022\255\035\255\034\255\
\106\000\035\255\027\255\123\255\034\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\030\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\162\255\181\255\000\000\000\000\000\000\198\255\215\255\232\255\
\028\000\045\000\062\000\240\255\248\255\070\000\000\000\255\254\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\255\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\255\255\000\000\000\000\241\255\000\000"

let yytablesize = 395
let yytable = "\014\000\
\055\000\017\000\018\000\019\000\022\000\023\000\024\000\025\000\
\026\000\057\000\001\000\058\000\059\000\060\000\031\000\033\000\
\031\000\033\000\020\000\040\000\041\000\042\000\043\000\044\000\
\045\000\046\000\047\000\048\000\049\000\050\000\051\000\052\000\
\053\000\054\000\031\000\033\000\003\000\021\000\024\000\025\000\
\026\000\029\000\029\000\039\000\063\000\029\000\064\000\029\000\
\004\000\005\000\066\000\029\000\069\000\071\000\000\000\000\000\
\000\000\006\000\007\000\000\000\000\000\065\000\008\000\009\000\
\068\000\029\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\010\000\011\000\000\000\012\000\022\000\
\023\000\024\000\025\000\026\000\027\000\028\000\029\000\030\000\
\031\000\032\000\033\000\034\000\000\000\000\000\038\000\000\000\
\000\000\000\000\000\000\000\000\035\000\022\000\023\000\024\000\
\025\000\026\000\027\000\028\000\029\000\030\000\031\000\032\000\
\033\000\034\000\037\000\000\000\062\000\000\000\000\000\000\000\
\000\000\000\000\035\000\022\000\023\000\024\000\025\000\026\000\
\027\000\028\000\029\000\030\000\031\000\032\000\033\000\034\000\
\037\000\000\000\000\000\000\000\070\000\000\000\000\000\000\000\
\035\000\022\000\023\000\024\000\025\000\026\000\027\000\028\000\
\029\000\030\000\031\000\032\000\033\000\034\000\037\000\000\000\
\000\000\000\000\014\000\014\000\000\000\000\000\035\000\014\000\
\014\000\014\000\014\000\014\000\014\000\014\000\014\000\000\000\
\000\000\014\000\000\000\014\000\036\000\015\000\015\000\014\000\
\000\000\000\000\015\000\015\000\015\000\015\000\015\000\015\000\
\015\000\015\000\000\000\000\000\015\000\014\000\015\000\000\000\
\000\000\000\000\015\000\023\000\023\000\023\000\023\000\023\000\
\023\000\023\000\023\000\000\000\000\000\023\000\000\000\023\000\
\015\000\000\000\000\000\023\000\022\000\022\000\022\000\022\000\
\022\000\022\000\022\000\022\000\000\000\000\000\022\000\000\000\
\022\000\023\000\000\000\000\000\022\000\025\000\025\000\025\000\
\025\000\025\000\025\000\025\000\025\000\000\000\000\000\025\000\
\000\000\025\000\022\000\020\000\020\000\025\000\000\000\020\000\
\000\000\020\000\003\000\021\000\021\000\020\000\000\000\021\000\
\000\000\021\000\000\000\025\000\000\000\021\000\004\000\005\000\
\000\000\000\000\000\000\020\000\000\000\000\000\000\000\006\000\
\007\000\000\000\000\000\021\000\008\000\009\000\000\000\000\000\
\000\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
\024\000\010\000\011\000\024\000\012\000\024\000\000\000\000\000\
\000\000\024\000\026\000\026\000\026\000\026\000\026\000\026\000\
\026\000\026\000\000\000\000\000\026\000\000\000\026\000\024\000\
\000\000\000\000\026\000\027\000\027\000\027\000\027\000\027\000\
\027\000\027\000\027\000\000\000\000\000\027\000\000\000\027\000\
\026\000\019\000\019\000\027\000\000\000\019\000\000\000\019\000\
\000\000\000\000\000\000\019\000\000\000\000\000\000\000\000\000\
\000\000\027\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\019\000\022\000\023\000\024\000\025\000\026\000\027\000\
\028\000\029\000\030\000\031\000\032\000\033\000\034\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\035\000\
\022\000\023\000\024\000\025\000\026\000\027\000\028\000\029\000\
\030\000\031\000\032\000"

let yycheck = "\001\000\
\000\000\003\000\004\000\005\000\001\001\002\001\003\001\004\001\
\005\001\030\001\001\000\032\001\033\001\034\001\016\001\016\001\
\018\001\018\001\044\001\021\000\022\000\023\000\024\000\025\000\
\026\000\027\000\028\000\029\000\030\000\031\000\032\000\033\000\
\034\000\035\000\036\001\036\001\002\001\015\001\003\001\004\001\
\005\001\012\001\013\001\035\001\021\001\016\001\025\001\018\001\
\014\001\015\001\017\001\022\001\026\001\069\000\255\255\255\255\
\255\255\023\001\024\001\255\255\255\255\063\000\028\001\029\001\
\066\000\036\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\041\001\042\001\255\255\044\001\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\255\255\255\255\016\001\255\255\
\255\255\255\255\255\255\255\255\022\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\036\001\255\255\016\001\255\255\255\255\255\255\
\255\255\255\255\022\001\001\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\036\001\255\255\255\255\255\255\018\001\255\255\255\255\255\255\
\022\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\036\001\255\255\
\255\255\255\255\001\001\002\001\255\255\255\255\022\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\255\255\
\255\255\016\001\255\255\018\001\036\001\001\001\002\001\022\001\
\255\255\255\255\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\255\255\255\255\016\001\036\001\018\001\255\255\
\255\255\255\255\022\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\255\255\255\255\016\001\255\255\018\001\
\036\001\255\255\255\255\022\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\255\255\255\255\016\001\255\255\
\018\001\036\001\255\255\255\255\022\001\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\255\255\255\255\016\001\
\255\255\018\001\036\001\012\001\013\001\022\001\255\255\016\001\
\255\255\018\001\002\001\012\001\013\001\022\001\255\255\016\001\
\255\255\018\001\255\255\036\001\255\255\022\001\014\001\015\001\
\255\255\255\255\255\255\036\001\255\255\255\255\255\255\023\001\
\024\001\255\255\255\255\036\001\028\001\029\001\255\255\255\255\
\255\255\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\041\001\042\001\016\001\044\001\018\001\255\255\255\255\
\255\255\022\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\255\255\255\255\016\001\255\255\018\001\036\001\
\255\255\255\255\022\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\255\255\255\255\016\001\255\255\018\001\
\036\001\012\001\013\001\022\001\255\255\016\001\255\255\018\001\
\255\255\255\255\255\255\022\001\255\255\255\255\255\255\255\255\
\255\255\036\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\036\001\001\001\002\001\003\001\004\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\022\001\
\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\
\009\001\010\001\011\001"

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
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    Obj.repr(
# 39 "src/parser.mly"
                                         ( _1 )
# 322 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "src/parser.mly"
                                         ( TNum )
# 328 "src/parser.ml"
               : 'primitive))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "src/parser.mly"
                                         ( TBool )
# 334 "src/parser.ml"
               : 'primitive))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "src/parser.mly"
                                         ( TString )
# 340 "src/parser.ml"
               : 'primitive))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "src/parser.mly"
                                         ( TUnit )
# 346 "src/parser.ml"
               : 'primitive))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 49 "src/parser.mly"
                                         ( NumLit(_1) )
# 353 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "src/parser.mly"
                                         ( BoolLit(true) )
# 359 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "src/parser.mly"
                                         ( BoolLit(false) )
# 365 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 52 "src/parser.mly"
                                         ( StrLit(_1) )
# 372 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 53 "src/parser.mly"
                                         ( Val(_1) )
# 379 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 56 "src/parser.mly"
                                         ( _2 )
# 386 "src/parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'literals) in
    Obj.repr(
# 59 "src/parser.mly"
                                                  ( _1 )
# 393 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'assigns) in
    Obj.repr(
# 60 "src/parser.mly"
                                                  ( _1 )
# 400 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 61 "src/parser.mly"
                                                  ( Binop(_1, Add, _3) )
# 408 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 62 "src/parser.mly"
                                                  ( Binop(_1, Sub, _3) )
# 416 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 63 "src/parser.mly"
                                                  ( Binop(_1, Mul, _3) )
# 424 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 64 "src/parser.mly"
                                                  ( Binop(_1, Div, _3) )
# 432 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 65 "src/parser.mly"
                                                  ( Binop(_1, Mod, _3) )
# 440 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 66 "src/parser.mly"
                                                  ( Binop(_1, Caret, _3) )
# 448 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 67 "src/parser.mly"
                                                  ( Binop(_1, And, _3) )
# 456 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 68 "src/parser.mly"
                                                  ( Binop(_1, Or, _3) )
# 464 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 69 "src/parser.mly"
                                                  ( Binop(_1, Lte, _3) )
# 472 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 70 "src/parser.mly"
                                                  ( Binop(_1, Lt, _3) )
# 480 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 71 "src/parser.mly"
                                                  ( Binop(_1, Gte, _3) )
# 488 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 72 "src/parser.mly"
                                                  ( Binop(_1, Gt, _3) )
# 496 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 73 "src/parser.mly"
                                                  ( Binop(_1, Equals, _3) )
# 504 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 74 "src/parser.mly"
                                                  ( Binop(_1, Neq, _3) )
# 512 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 75 "src/parser.mly"
                                                  ( _2 )
# 519 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 76 "src/parser.mly"
                                                  ( Unop(Not, _2) )
# 526 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 77 "src/parser.mly"
                                                  ( Unop(Neg, _2) )
# 533 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 78 "src/parser.mly"
                                                  ( Seq(_1, _3) )
# 541 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'block) in
    let _8 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 79 "src/parser.mly"
                                                  ( If(_3, _6, _8) )
# 550 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'primitive) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 82 "src/parser.mly"
                                         ( Assign(_2, _4, _6) )
# 559 "src/parser.ml"
               : 'assigns))
(* Entry main *)
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
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.expr)
