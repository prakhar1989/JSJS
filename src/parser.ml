
exception Error

let _eRR =
  Error

type token = 
  | VAL
  | UNIT
  | TRUE
  | THINARROW
  | THEN
  | STR_LIT of (
# 18 "src/parser.mly"
       (string)
# 17 "src/parser.ml"
)
  | STRING
  | SEMICOLON
  | RSQUARE
  | RPAREN
  | RBRACE
  | PLUS
  | OR
  | NUM_LIT of (
# 17 "src/parser.mly"
       (float)
# 29 "src/parser.ml"
)
  | NUM
  | NOT
  | NEQ
  | MULTIPLY
  | MODULUS
  | MODULE_LIT of (
# 19 "src/parser.mly"
       (string)
# 39 "src/parser.ml"
)
  | MINUS
  | LTE
  | LT
  | LSQUARE
  | LPAREN
  | LIST
  | LBRACE
  | LAMBDA
  | IF
  | ID of (
# 20 "src/parser.mly"
       (string)
# 53 "src/parser.ml"
)
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

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState133
  | MenhirState131
  | MenhirState126
  | MenhirState122
  | MenhirState120
  | MenhirState112
  | MenhirState109
  | MenhirState96
  | MenhirState92
  | MenhirState89
  | MenhirState83
  | MenhirState82
  | MenhirState77
  | MenhirState75
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState67
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState50
  | MenhirState48
  | MenhirState42
  | MenhirState40
  | MenhirState39
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState33
  | MenhirState32
  | MenhirState28
  | MenhirState24
  | MenhirState21
  | MenhirState16
  | MenhirState11
  | MenhirState10
  | MenhirState9
  | MenhirState5
  | MenhirState2

# 1 "src/parser.mly"
   
open Ast

# 129 "src/parser.ml"

let rec _menhir_goto_list_delimited_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_delimited_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv539) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (exprs : 'tv_list_delimited_expr_) = _v in
        ((let _v : 'tv_expr_list = 
# 53 "src/parser.mly"
                                         ( exprs )
# 146 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_expr_list) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv535 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv529 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_block = 
# 50 "src/parser.mly"
                                         ( _2 )
# 170 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv527) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_block) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState82 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv507 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv503 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LBRACE ->
                        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv504)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv505 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)
            | MenhirState92 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv511 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv509 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_expr = 
# 122 "src/parser.mly"
                                         ( If(_2, _4, _6) )
# 215 "src/parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)) : 'freshtv512)
            | MenhirState96 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv515 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv513 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_literals = 
# 90 "src/parser.mly"
                                                      ( 
        FunLit(_3, _6) 
    )
# 233 "src/parser.ml"
                 in
                _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
            | MenhirState133 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv525 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 241 "src/parser.ml"
                ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv523 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 247 "src/parser.ml"
                ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s), _2), _, _4), _, _7), _, _9) = _menhir_stack in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_func_decl = 
# 56 "src/parser.mly"
                                                                    ( 
        { fname = _2;
          formals = _4;
          return_type = _7;
          body = _9; }
    )
# 263 "src/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv521) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_func_decl) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv519 * 'tv_decls) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_func_decl) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv517 * 'tv_decls) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let (_2 : 'tv_func_decl) = _v in
                ((let (_menhir_stack, _1) = _menhir_stack in
                let _v : 'tv_decls = 
# 44 "src/parser.mly"
                                         ( fst _1, (_2 :: snd _1) )
# 281 "src/parser.ml"
                 in
                _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv518)) : 'freshtv520)) : 'freshtv522)) : 'freshtv524)) : 'freshtv526)
            | _ ->
                _menhir_fail ()) : 'freshtv528)) : 'freshtv530)) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv533 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)) : 'freshtv538)) : 'freshtv540)) : 'freshtv542)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv545 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv543 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_list_delimited_expr_ = 
# 188 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 306 "src/parser.ml"
         in
        _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)) : 'freshtv546)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_kv_pair_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_kv_pair_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_kv_pair_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_kv_pair_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_kv_pair__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 327 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_kv_pair__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)) : 'freshtv498)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state * 'tv_kv_pair)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_kv_pair_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state * 'tv_kv_pair)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_kv_pair_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_kv_pair_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 344 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_kv_pair_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
    | _ ->
        _menhir_fail ()

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_delimited_expr_ = 
# 186 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 355 "src/parser.ml"
     in
    _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 | MenhirState39 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 374 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)) : 'freshtv490)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv493 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv491 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 391 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)) : 'freshtv494)
    | _ ->
        _menhir_fail ()

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run71 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run77 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | RBRACE ->
        _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_goto_separated_nonempty_list_COMMA_opt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_opt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_opt__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 960 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv485 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv483 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_opt_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 977 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)) : 'freshtv486)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_primitive_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_primitive_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_primitive__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 998 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv477 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_primitive_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1015 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_primitive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let _v : 'tv_actuals_opt = let opts =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1036 "src/parser.ml"
      
    in
    
# 126 "src/parser.mly"
                                         ( opts )
# 1042 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv465) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_actuals_opt) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv445 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1055 "src/parser.ml"
        ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1065 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1072 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 123 "src/parser.mly"
                                         ( Call(_1, _3) )
# 1080 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv443 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1090 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv455 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv451 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FATARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv447 * _menhir_state)) * _menhir_state * 'tv_actuals_opt)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | ID _v ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
                | IF ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | LAMBDA ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | LBRACE ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | LPAREN ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | LSQUARE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | LT ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | MINUS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | NOT ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | NUM_LIT _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
                | STR_LIT _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
                | TRUE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv448)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv449 * _menhir_state)) * _menhir_state * 'tv_actuals_opt)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv454)) : 'freshtv456)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv459 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv457 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_literals = 
# 93 "src/parser.mly"
                                         ( ListLit(_2) )
# 1176 "src/parser.ml"
             in
            _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv461 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | _ ->
        _menhir_fail ()) : 'freshtv466)) : 'freshtv468)) : 'freshtv470)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState36 | MenhirState39 | MenhirState73 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | LAMBDA ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | LPAREN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | LSQUARE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | LT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | MINUS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | NOT ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | NUM_LIT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | STR_LIT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | TRUE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv274)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1270 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 105 "src/parser.mly"
                                         ( Binop(_1, Add, _3) )
# 1300 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 107 "src/parser.mly"
                                         ( Binop(_1, Mul, _3) )
# 1320 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 109 "src/parser.mly"
                                         ( Binop(_1, Mod, _3) )
# 1333 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 108 "src/parser.mly"
                                         ( Binop(_1, Div, _3) )
# 1346 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 112 "src/parser.mly"
                                         ( Binop(_1, Or, _3) )
# 1385 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 118 "src/parser.mly"
                                         ( Binop(_1, Neq, _3) )
# 1419 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 106 "src/parser.mly"
                                         ( Binop(_1, Sub, _3) )
# 1449 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 113 "src/parser.mly"
                                         ( Binop(_1, Lte, _3) )
# 1483 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 114 "src/parser.mly"
                                         ( Binop(_1, Lt, _3) )
# 1517 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 115 "src/parser.mly"
                                         ( Binop(_1, Gte, _3) )
# 1551 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)) : 'freshtv334)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 116 "src/parser.mly"
                                         ( Binop(_1, Gt, _3) )
# 1585 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 117 "src/parser.mly"
                                         ( Binop(_1, Equals, _3) )
# 1619 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 110 "src/parser.mly"
                                         ( Binop(_1, Caret, _3) )
# 1665 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 111 "src/parser.mly"
                                         ( Binop(_1, And, _3) )
# 1711 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState2 | MenhirState89 | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_delimited_expr = 
# 47 "src/parser.mly"
                                         ( _1 )
# 1819 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_delimited_expr) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState89 | MenhirState83 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | ID _v ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | IF ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LAMBDA ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LPAREN ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LSQUARE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LT ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | MINUS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | NOT ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | NUM_LIT _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | STR_LIT _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | TRUE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | RBRACE ->
                    _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv366)
            | MenhirState2 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv369 * 'tv_decls) * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv367 * 'tv_decls) * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _1), _, _2) = _menhir_stack in
                let _v : 'tv_decls = 
# 43 "src/parser.mly"
                                         ( (_2 :: fst _1), snd _1 )
# 1874 "src/parser.ml"
                 in
                _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv368)) : 'freshtv370)
            | _ ->
                _menhir_fail ()) : 'freshtv372)) : 'freshtv374)) : 'freshtv376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv385 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv381 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_literals = 
# 87 "src/parser.mly"
                                                                ( 
        FunLit(_3, [_6]) 
    )
# 1933 "src/parser.ml"
             in
            _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv383 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv393 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv389 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv387 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 119 "src/parser.mly"
                                         ( _2 )
# 1989 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | MenhirState35 | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | LAMBDA ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | LPAREN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | LSQUARE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | LT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | MINUS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | NOT ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | NUM_LIT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | STR_LIT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | TRUE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv396)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv398)) : 'freshtv400)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_kv_pair = 
# 100 "src/parser.mly"
                                     ( _1, _3)
# 2118 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv409) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_kv_pair) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_kv_pair) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_kv_pair) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | ID _v ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | IF ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | LAMBDA ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | LPAREN ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | LSQUARE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | LT ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | MINUS ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | NOT ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | NUM_LIT _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | STR_LIT _v ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
                | TRUE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState109
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv402)
            | RSQUARE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_kv_pair) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_kv_pair_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2173 "src/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_kv_pair_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv405 * _menhir_state * 'tv_kv_pair) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)) : 'freshtv410)) : 'freshtv412)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)) : 'freshtv416)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 121 "src/parser.mly"
                                         ( Unop(Neg, _2) )
# 2200 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 120 "src/parser.mly"
                                         ( Unop(Not, _2) )
# 2239 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv437 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2254 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv433 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2292 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _2), _, _4), _, _6) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_assigns = 
# 129 "src/parser.mly"
                                         ( Assign(_2, _4, _6) )
# 2301 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv431) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_assigns) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_assigns) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : 'tv_assigns) = _v in
            ((let _v : 'tv_expr = 
# 104 "src/parser.mly"
                                         ( _1 )
# 2318 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)) : 'freshtv432)) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv435 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2328 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_primitive__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_primitive__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_primitive__) = _v in
    ((let _v : 'tv_args = let args =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2350 "src/parser.ml"
      
    in
    
# 79 "src/parser.mly"
                                              ( args )
# 2356 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv267) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_args) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv265 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THINARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state) * _menhir_state * 'tv_args)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state) * _menhir_state * 'tv_args)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)) : 'freshtv268)) : 'freshtv270)) : 'freshtv272)

and _menhir_goto_primitive : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_primitive -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_primitive = 
# 75 "src/parser.mly"
                                              ( TList(_2) )
# 2427 "src/parser.ml"
         in
        _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)) : 'freshtv204)
    | MenhirState16 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv206)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_primitive_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2467 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_primitive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv215 * _menhir_state) * _menhir_state * 'tv_args))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv213 * _menhir_state) * _menhir_state * 'tv_args))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _2), _, _5) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_primitive = 
# 74 "src/parser.mly"
                                              ( TFun(_2, _5) )
# 2489 "src/parser.ml"
         in
        _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)) : 'freshtv216)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv229 * _menhir_state) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv225 * _menhir_state) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv223 * _menhir_state) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_primitive = 
# 76 "src/parser.mly"
                                              ( TMap(_2, _4) )
# 2548 "src/parser.ml"
             in
            _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv227 * _menhir_state) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv235 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2563 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv231 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2573 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LAMBDA ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LPAREN ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LSQUARE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | MINUS ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | NOT ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | NUM_LIT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
            | STR_LIT _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
            | TRUE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv233 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2615 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)) : 'freshtv236)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2624 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2630 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_opt = 
# 67 "src/parser.mly"
                                              ( _1, _3 )
# 2637 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_opt) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv238)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv239 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_opt_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2668 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)) : 'freshtv246)) : 'freshtv248)) : 'freshtv250)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv255 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2683 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv251 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2693 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState133
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv253 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2711 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_kv_pair__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_kv_pair__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_kv_pair__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv197) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_kv_pair__) = _v in
    ((let _v : 'tv_kv_pairs = let kv =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2733 "src/parser.ml"
      
    in
    
# 97 "src/parser.mly"
                                          ( kv )
# 2739 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv195) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_kv_pairs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv193 * _menhir_state)) * _menhir_state * 'tv_kv_pairs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state)) * _menhir_state * 'tv_kv_pairs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv185 * _menhir_state)) * _menhir_state * 'tv_kv_pairs)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv183 * _menhir_state)) * _menhir_state * 'tv_kv_pairs)) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _3) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_literals = 
# 94 "src/parser.mly"
                                         ( MapLit(_3) )
# 2771 "src/parser.ml"
             in
            _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv187 * _menhir_state)) * _menhir_state * 'tv_kv_pairs)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)) : 'freshtv190)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state)) * _menhir_state * 'tv_kv_pairs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)) : 'freshtv196)) : 'freshtv198)) : 'freshtv200)

and _menhir_reduce46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2794 "src/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_literals : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_literals -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_literals) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : 'tv_literals) = _v in
    ((let _v : 'tv_expr = 
# 103 "src/parser.mly"
                                         ( _1 )
# 2811 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 73 "src/parser.mly"
                                              ( TUnit )
# 2825 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 72 "src/parser.mly"
                                              ( TString )
# 2839 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 70 "src/parser.mly"
                                              ( TNum )
# 2853 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LIST ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LT ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | STRING ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | UNIT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LIST ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LT ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | STRING ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | UNIT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState10 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_primitive__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2909 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LIST ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LT ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | STRING ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | UNIT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 71 "src/parser.mly"
                                              ( TBool )
# 2952 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 20 "src/parser.mly"
       (string)
# 2968 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2979 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv162)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3009 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_literals = 
# 83 "src/parser.mly"
                                              ( BoolLit(true) )
# 3031 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "src/parser.mly"
       (string)
# 3038 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 18 "src/parser.mly"
       (string)
# 3048 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_literals = 
# 85 "src/parser.mly"
                                              ( StrLit(_1) )
# 3053 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "src/parser.mly"
       (float)
# 3060 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 17 "src/parser.mly"
       (float)
# 3070 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_literals = 
# 82 "src/parser.mly"
                                              ( NumLit(_1) )
# 3075 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LAMBDA ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LPAREN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LSQUARE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NOT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NUM_LIT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | STR_LIT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | TRUE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState35 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_kv_pair__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3198 "src/parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_kv_pair__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv152)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | RSQUARE ->
        _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | IF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LAMBDA ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LPAREN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LSQUARE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | NOT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | NUM_LIT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | STR_LIT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | TRUE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | RPAREN ->
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv146)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 3381 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3393 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | IF ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LAMBDA ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LPAREN ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LSQUARE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NOT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NUM_LIT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | STR_LIT _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | TRUE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | RPAREN ->
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv140)
    | AND | CARET | COLON | COMMA | DIVIDE | EQUALS | GT | GTE | LT | LTE | MINUS | MODULUS | MULTIPLY | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3435 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_literals = 
# 86 "src/parser.mly"
                                              ( Val(_1) )
# 3441 "src/parser.ml"
         in
        _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3451 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_literals = 
# 84 "src/parser.mly"
                                              ( BoolLit(false) )
# 3466 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv49 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3478 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv51 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3487 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3501 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3510 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_kv_pair)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv63 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3629 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv119 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3673 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv123 * _menhir_state) * _menhir_state * 'tv_args))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3712 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * 'tv_decls) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv136)

and _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_opt__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_opt__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_opt__) = _v in
    ((let _v : 'tv_formals_opt = let opts =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 3736 "src/parser.ml"
      
    in
    
# 64 "src/parser.mly"
                                         ( opts )
# 3742 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv43) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_formals_opt) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv41 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3753 "src/parser.ml"
    ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv37 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3763 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv33 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3773 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv35 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3803 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv39 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3814 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)) : 'freshtv44)) : 'freshtv46)) : 'freshtv48)

and _menhir_run121 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 3822 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3834 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LIST ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LPAREN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LT ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | NUM ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | STRING ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | UNIT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3864 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)

and _menhir_goto_decls : _menhir_env -> 'ttv_tail -> 'tv_decls -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27 * 'tv_decls) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState2 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
            let (_v : (
# 20 "src/parser.mly"
       (string)
# 3891 "src/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv7 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3902 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState120 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_opt__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3916 "src/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv8)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv9 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3930 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)) : 'freshtv12)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)) : 'freshtv16)
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * 'tv_decls) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState2 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * 'tv_decls) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _1) = _menhir_stack in
        let _2 = () in
        let _v : (
# 34 "src/parser.mly"
      (Ast.program)
# 3953 "src/parser.ml"
        ) = 
# 39 "src/parser.mly"
                                         ( (List.rev (fst _1), snd _1) )
# 3957 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21) = _menhir_stack in
        let (_v : (
# 34 "src/parser.mly"
      (Ast.program)
# 3964 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        let (_v : (
# 34 "src/parser.mly"
      (Ast.program)
# 3971 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_1 : (
# 34 "src/parser.mly"
      (Ast.program)
# 3978 "src/parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv18)) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)) : 'freshtv26)
    | FALSE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LAMBDA ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LSQUARE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MINUS ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NOT ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NUM_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | STR_LIT _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | TRUE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv28)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 34 "src/parser.mly"
      (Ast.program)
# 4027 "src/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = () in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
    ((let _v : 'tv_decls = 
# 42 "src/parser.mly"
                                         ( [], [] )
# 4049 "src/parser.ml"
     in
    _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 220 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
  


# 4057 "src/parser.ml"
