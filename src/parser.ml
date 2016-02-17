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
\004\000\004\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\005\000\000\000"

let yylen = "\002\000\
\003\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\002\000\002\000\003\000\006\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\007\000\008\000\
\006\000\009\000\010\000\032\000\000\000\011\000\012\000\029\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\027\000\000\000\000\000\000\000\015\000\
\016\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\001\000\000\000\002\000\003\000\004\000\
\005\000\000\000\000\000\000\000"

let yydgoto = "\002\000\
\012\000\053\000\058\000\014\000\015\000"

let yysindex = "\048\000\
\031\255\000\000\031\255\031\255\031\255\008\255\000\000\000\000\
\000\000\000\000\000\000\000\000\097\255\000\000\000\000\000\000\
\004\255\075\255\018\255\031\255\031\255\031\255\031\255\031\255\
\031\255\031\255\031\255\031\255\031\255\031\255\031\255\031\255\
\031\255\001\000\031\255\000\000\060\255\013\255\013\255\000\000\
\000\000\000\000\064\255\064\255\064\255\064\255\064\255\064\255\
\004\255\004\255\004\255\000\000\045\000\000\000\000\000\000\000\
\000\000\034\255\031\255\045\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\035\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\114\255\133\255\000\000\
\000\000\000\000\028\255\150\255\167\255\184\255\201\255\218\255\
\116\255\220\255\231\255\000\000\026\255\000\000\000\000\000\000\
\000\000\000\000\000\000\027\255"

let yygindex = "\000\000\
\000\000\255\255\000\000\000\000\000\000"

let yytablesize = 323
let yytable = "\013\000\
\052\000\016\000\017\000\018\000\020\000\021\000\022\000\023\000\
\024\000\025\000\026\000\027\000\028\000\029\000\030\000\022\000\
\023\000\024\000\038\000\039\000\040\000\041\000\042\000\043\000\
\044\000\045\000\046\000\047\000\048\000\049\000\050\000\051\000\
\003\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
\022\000\030\000\031\000\022\000\004\000\005\000\028\000\028\000\
\001\000\022\000\028\000\019\000\037\000\006\000\059\000\000\000\
\028\000\060\000\007\000\008\000\000\000\030\000\031\000\022\000\
\020\000\021\000\022\000\023\000\024\000\000\000\028\000\009\000\
\010\000\000\000\011\000\020\000\021\000\022\000\023\000\024\000\
\025\000\026\000\027\000\028\000\029\000\030\000\031\000\032\000\
\000\000\054\000\036\000\055\000\056\000\057\000\000\000\000\000\
\033\000\020\000\021\000\022\000\023\000\024\000\025\000\026\000\
\027\000\028\000\029\000\030\000\031\000\032\000\035\000\000\000\
\000\000\000\000\013\000\013\000\000\000\000\000\033\000\013\000\
\013\000\013\000\013\000\013\000\013\000\013\000\013\000\019\000\
\019\000\013\000\000\000\019\000\034\000\014\000\014\000\013\000\
\000\000\019\000\014\000\014\000\014\000\014\000\014\000\014\000\
\014\000\014\000\000\000\000\000\014\000\013\000\000\000\019\000\
\000\000\000\000\014\000\021\000\021\000\021\000\021\000\021\000\
\021\000\021\000\021\000\000\000\000\000\021\000\000\000\000\000\
\014\000\000\000\000\000\021\000\024\000\024\000\024\000\024\000\
\024\000\024\000\024\000\024\000\000\000\000\000\024\000\000\000\
\000\000\021\000\000\000\000\000\024\000\023\000\023\000\023\000\
\023\000\023\000\023\000\023\000\023\000\000\000\000\000\023\000\
\000\000\000\000\024\000\000\000\000\000\023\000\025\000\025\000\
\025\000\025\000\025\000\025\000\025\000\025\000\000\000\000\000\
\025\000\000\000\000\000\023\000\000\000\000\000\025\000\026\000\
\026\000\026\000\026\000\026\000\026\000\026\000\026\000\020\000\
\020\000\026\000\000\000\020\000\025\000\000\000\000\000\026\000\
\000\000\020\000\018\000\018\000\000\000\000\000\018\000\000\000\
\000\000\000\000\000\000\000\000\018\000\026\000\000\000\020\000\
\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\018\000\000\000\000\000\000\000\004\000\005\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\
\000\000\000\000\000\000\000\000\007\000\008\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\009\000\010\000\000\000\011\000\020\000\021\000\022\000\
\023\000\024\000\025\000\026\000\027\000\028\000\029\000\030\000\
\031\000\032\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\033\000"

let yycheck = "\001\000\
\000\000\003\000\004\000\005\000\001\001\002\001\003\001\004\001\
\005\001\006\001\007\001\008\001\009\001\010\001\011\001\003\001\
\004\001\005\001\020\000\021\000\022\000\023\000\024\000\025\000\
\026\000\027\000\028\000\029\000\030\000\031\000\032\000\033\000\
\002\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\016\001\016\001\016\001\014\001\015\001\012\001\013\001\
\001\000\022\001\016\001\044\001\035\001\023\001\021\001\255\255\
\022\001\059\000\028\001\029\001\255\255\036\001\036\001\036\001\
\001\001\002\001\003\001\004\001\005\001\255\255\036\001\041\001\
\042\001\255\255\044\001\001\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\255\255\030\001\016\001\032\001\033\001\034\001\255\255\255\255\
\022\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\036\001\255\255\
\255\255\255\255\001\001\002\001\255\255\255\255\022\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\012\001\
\013\001\016\001\255\255\016\001\036\001\001\001\002\001\022\001\
\255\255\022\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\255\255\255\255\016\001\036\001\255\255\036\001\
\255\255\255\255\022\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\255\255\255\255\016\001\255\255\255\255\
\036\001\255\255\255\255\022\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\255\255\255\255\016\001\255\255\
\255\255\036\001\255\255\255\255\022\001\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\255\255\255\255\016\001\
\255\255\255\255\036\001\255\255\255\255\022\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\255\255\255\255\
\016\001\255\255\255\255\036\001\255\255\255\255\022\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\012\001\
\013\001\016\001\255\255\016\001\036\001\255\255\255\255\022\001\
\255\255\022\001\012\001\013\001\255\255\255\255\016\001\255\255\
\255\255\255\255\255\255\255\255\022\001\036\001\255\255\036\001\
\255\255\255\255\002\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\036\001\255\255\255\255\255\255\014\001\015\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\023\001\
\255\255\255\255\255\255\255\255\028\001\029\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\041\001\042\001\255\255\044\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\022\001"

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
# 299 "src/parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "src/parser.mly"
                                         ( TNum )
# 305 "src/parser.ml"
               : 'primitive))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "src/parser.mly"
                                         ( TBool )
# 311 "src/parser.ml"
               : 'primitive))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "src/parser.mly"
                                         ( TString )
# 317 "src/parser.ml"
               : 'primitive))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "src/parser.mly"
                                         ( TUnit )
# 323 "src/parser.ml"
               : 'primitive))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 49 "src/parser.mly"
                                         ( NumLit(_1) )
# 330 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "src/parser.mly"
                                         ( BoolLit(true) )
# 336 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "src/parser.mly"
                                         ( BoolLit(false) )
# 342 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 52 "src/parser.mly"
                                         ( StrLit(_1) )
# 349 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 53 "src/parser.mly"
                                         ( Val(_1) )
# 356 "src/parser.ml"
               : 'literals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'literals) in
    Obj.repr(
# 56 "src/parser.mly"
                                         ( _1 )
# 363 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'assigns) in
    Obj.repr(
# 57 "src/parser.mly"
                                         ( _1 )
# 370 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 58 "src/parser.mly"
                                         ( Binop(_1, Add, _3) )
# 378 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 59 "src/parser.mly"
                                         ( Binop(_1, Sub, _3) )
# 386 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 60 "src/parser.mly"
                                         ( Binop(_1, Mul, _3) )
# 394 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 61 "src/parser.mly"
                                         ( Binop(_1, Div, _3) )
# 402 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 62 "src/parser.mly"
                                         ( Binop(_1, Mod, _3) )
# 410 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 63 "src/parser.mly"
                                         ( Binop(_1, Caret, _3) )
# 418 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 64 "src/parser.mly"
                                         ( Binop(_1, And, _3) )
# 426 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 65 "src/parser.mly"
                                         ( Binop(_1, Or, _3) )
# 434 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 66 "src/parser.mly"
                                         ( Binop(_1, Lte, _3) )
# 442 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 67 "src/parser.mly"
                                         ( Binop(_1, Lt, _3) )
# 450 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 68 "src/parser.mly"
                                         ( Binop(_1, Gte, _3) )
# 458 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 69 "src/parser.mly"
                                         ( Binop(_1, Gt, _3) )
# 466 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 70 "src/parser.mly"
                                         ( Binop(_1, Equals, _3) )
# 474 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 71 "src/parser.mly"
                                         ( Binop(_1, Neq, _3) )
# 482 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 72 "src/parser.mly"
                                         ( _2 )
# 489 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 73 "src/parser.mly"
                                         ( Unop(Not, _2) )
# 496 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 74 "src/parser.mly"
                                         ( Unop(Neg, _2) )
# 503 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 75 "src/parser.mly"
                                         ( Seq(_1, _3) )
# 511 "src/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'primitive) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 78 "src/parser.mly"
                                         ( Assign(_2, _4, _6) )
# 520 "src/parser.ml"
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
