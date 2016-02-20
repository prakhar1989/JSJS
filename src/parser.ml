
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
  | GENERIC of (
# 21 "src/parser.mly"
       (char)
# 60 "src/parser.ml"
)
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
  | MenhirState137
  | MenhirState135
  | MenhirState130
  | MenhirState126
  | MenhirState124
  | MenhirState115
  | MenhirState112
  | MenhirState99
  | MenhirState95
  | MenhirState92
  | MenhirState86
  | MenhirState85
  | MenhirState80
  | MenhirState78
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState58
  | MenhirState56
  | MenhirState53
  | MenhirState51
  | MenhirState45
  | MenhirState43
  | MenhirState42
  | MenhirState40
  | MenhirState39
  | MenhirState38
  | MenhirState36
  | MenhirState35
  | MenhirState33
  | MenhirState29
  | MenhirState25
  | MenhirState22
  | MenhirState17
  | MenhirState11
  | MenhirState10
  | MenhirState9
  | MenhirState5
  | MenhirState2

# 1 "src/parser.mly"
   
open Ast

# 135 "src/parser.ml"

let rec _menhir_goto_list_delimited_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_delimited_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (exprs : 'tv_list_delimited_expr_) = _v in
        ((let _v : 'tv_expr_list = 
# 55 "src/parser.mly"
                                         ( exprs )
# 152 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_expr_list) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv549 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv545 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv543 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_block = 
# 52 "src/parser.mly"
                                         ( _2 )
# 176 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv541) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_block) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState85 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv521 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv517 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LBRACE ->
                        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv518)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv519 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
            | MenhirState95 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv525 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv523 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_expr = 
# 125 "src/parser.mly"
                                         ( If(_2, _4, _6) )
# 221 "src/parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)) : 'freshtv526)
            | MenhirState99 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv529 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv527 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_literals = 
# 93 "src/parser.mly"
                                                      ( 
        FunLit(_3, _6) 
    )
# 239 "src/parser.ml"
                 in
                _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)) : 'freshtv530)
            | MenhirState137 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv539 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 247 "src/parser.ml"
                ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv537 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 253 "src/parser.ml"
                ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s), _2), _, _4), _, _7), _, _9) = _menhir_stack in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_func_decl = 
# 58 "src/parser.mly"
                                                                    ( 
        { fname = _2;
          formals = _4;
          return_type = _7;
          body = _9; }
    )
# 269 "src/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv535) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_func_decl) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv533 * 'tv_decls) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_func_decl) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv531 * 'tv_decls) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let (_2 : 'tv_func_decl) = _v in
                ((let (_menhir_stack, _1) = _menhir_stack in
                let _v : 'tv_decls = 
# 46 "src/parser.mly"
                                         ( fst _1, (_2 :: snd _1) )
# 287 "src/parser.ml"
                 in
                _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv532)) : 'freshtv534)) : 'freshtv536)) : 'freshtv538)) : 'freshtv540)
            | _ ->
                _menhir_fail ()) : 'freshtv542)) : 'freshtv544)) : 'freshtv546)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv547 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv548)) : 'freshtv550)) : 'freshtv552)) : 'freshtv554)) : 'freshtv556)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv559 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv557 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_list_delimited_expr_ = 
# 188 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 312 "src/parser.ml"
         in
        _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)) : 'freshtv560)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_kv_pair_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_kv_pair_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv511) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_kv_pair_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_kv_pair_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_kv_pair__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 333 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_kv_pair__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)) : 'freshtv512)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state * 'tv_kv_pair)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_kv_pair_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv513 * _menhir_state * 'tv_kv_pair)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_kv_pair_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_kv_pair_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 350 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_kv_pair_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
    | _ ->
        _menhir_fail ()

and _menhir_reduce36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_delimited_expr_ = 
# 186 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 361 "src/parser.ml"
     in
    _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState39 | MenhirState42 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv503) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 380 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv507 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv505 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 397 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)) : 'freshtv508)
    | _ ->
        _menhir_fail ()

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | RBRACE ->
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_goto_separated_nonempty_list_COMMA_opt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_opt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_opt__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 996 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)) : 'freshtv496)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_opt_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1013 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv498)) : 'freshtv500)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_primitive_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_primitive_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_primitive__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 1034 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv491 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_primitive_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1051 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_primitive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)) : 'freshtv492)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let _v : 'tv_actuals_opt = let opts =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 1072 "src/parser.ml"
      
    in
    
# 130 "src/parser.mly"
                                         ( opts )
# 1078 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv479) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_actuals_opt) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv459 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1091 "src/parser.ml"
        ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv455 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1101 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1108 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 126 "src/parser.mly"
                                         ( Call(_1, _3) )
# 1116 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv457 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1126 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv469 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv465 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FATARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv461 * _menhir_state)) * _menhir_state * 'tv_actuals_opt)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | ID _v ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | IF ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | LAMBDA ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | LBRACE ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | LPAREN ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | LSQUARE ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | LT ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | MINUS ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | MODULE_LIT _v ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | NOT ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | NUM_LIT _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | STR_LIT _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | TRUE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv462)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv463 * _menhir_state)) * _menhir_state * 'tv_actuals_opt)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv467 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv477 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv473 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv471 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_literals = 
# 96 "src/parser.mly"
                                         ( ListLit(_2) )
# 1214 "src/parser.ml"
             in
            _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv475 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)
    | _ ->
        _menhir_fail ()) : 'freshtv480)) : 'freshtv482)) : 'freshtv484)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 | MenhirState42 | MenhirState76 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | ID _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | IF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | LAMBDA ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | LPAREN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | LSQUARE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | LT ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | MINUS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | MODULE_LIT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | NUM_LIT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | STR_LIT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | TRUE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv282)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1310 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 108 "src/parser.mly"
                                         ( Binop(_1, Add, _3) )
# 1340 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 110 "src/parser.mly"
                                         ( Binop(_1, Mul, _3) )
# 1360 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 112 "src/parser.mly"
                                         ( Binop(_1, Mod, _3) )
# 1373 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 111 "src/parser.mly"
                                         ( Binop(_1, Div, _3) )
# 1386 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)) : 'freshtv306)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 115 "src/parser.mly"
                                         ( Binop(_1, Or, _3) )
# 1425 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 121 "src/parser.mly"
                                         ( Binop(_1, Neq, _3) )
# 1459 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 109 "src/parser.mly"
                                         ( Binop(_1, Sub, _3) )
# 1489 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 116 "src/parser.mly"
                                         ( Binop(_1, Lte, _3) )
# 1523 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv335 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 117 "src/parser.mly"
                                         ( Binop(_1, Lt, _3) )
# 1557 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 118 "src/parser.mly"
                                         ( Binop(_1, Gte, _3) )
# 1591 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 119 "src/parser.mly"
                                         ( Binop(_1, Gt, _3) )
# 1625 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv345 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 120 "src/parser.mly"
                                         ( Binop(_1, Equals, _3) )
# 1659 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv351 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)) : 'freshtv354)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv359 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 113 "src/parser.mly"
                                         ( Binop(_1, Caret, _3) )
# 1705 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv361 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 114 "src/parser.mly"
                                         ( Binop(_1, And, _3) )
# 1751 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv369 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
    | MenhirState2 | MenhirState92 | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_delimited_expr = 
# 49 "src/parser.mly"
                                         ( _1 )
# 1859 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_delimited_expr) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState92 | MenhirState86 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | ID _v ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                | IF ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | LAMBDA ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | LPAREN ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | LSQUARE ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | LT ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | MINUS ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | MODULE_LIT _v ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                | NOT ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | NUM_LIT _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                | STR_LIT _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                | TRUE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | RBRACE ->
                    _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv374)
            | MenhirState2 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv377 * 'tv_decls) * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv375 * 'tv_decls) * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _1), _, _2) = _menhir_stack in
                let _v : 'tv_decls = 
# 45 "src/parser.mly"
                                         ( (_2 :: fst _1), snd _1 )
# 1916 "src/parser.ml"
                 in
                _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv376)) : 'freshtv378)
            | _ ->
                _menhir_fail ()) : 'freshtv380)) : 'freshtv382)) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv393 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv389 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_literals = 
# 90 "src/parser.mly"
                                                                ( 
        FunLit(_3, [_6]) 
    )
# 1975 "src/parser.ml"
             in
            _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv391 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv397 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 122 "src/parser.mly"
                                         ( _2 )
# 2031 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv399 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
    | MenhirState38 | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | ID _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | IF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | LAMBDA ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | LPAREN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | LSQUARE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | LT ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | MINUS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | MODULE_LIT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | NUM_LIT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | STR_LIT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
            | TRUE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv404)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv405 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv423 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_kv_pair = 
# 103 "src/parser.mly"
                                     ( _1, _3)
# 2162 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv417) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_kv_pair) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv415 * _menhir_state * 'tv_kv_pair) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_kv_pair) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | ID _v ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
                | IF ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | LAMBDA ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | LPAREN ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | LSQUARE ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | LT ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | MINUS ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | MODULE_LIT _v ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
                | NOT ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | NUM_LIT _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
                | STR_LIT _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
                | TRUE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState112
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv410)
            | RSQUARE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_kv_pair) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_kv_pair_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2219 "src/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_kv_pair_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv413 * _menhir_state * 'tv_kv_pair) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)) : 'freshtv416)) : 'freshtv418)) : 'freshtv420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv421 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 124 "src/parser.mly"
                                         ( Unop(Neg, _2) )
# 2246 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)) : 'freshtv428)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv433 * _menhir_state * (
# 19 "src/parser.mly"
       (string)
# 2254 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv429 * _menhir_state * (
# 19 "src/parser.mly"
       (string)
# 2292 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 127 "src/parser.mly"
                                         ( ModuleLit(_1, _3))
# 2299 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv431 * _menhir_state * (
# 19 "src/parser.mly"
       (string)
# 2309 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)) : 'freshtv434)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv439 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COLON | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv435 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 123 "src/parser.mly"
                                         ( Unop(Not, _2) )
# 2349 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv437 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv438)) : 'freshtv440)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv451 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2364 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv447 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2402 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _2), _, _4), _, _6) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_assigns = 
# 133 "src/parser.mly"
                                         ( Assign(_2, _4, _6) )
# 2411 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv445) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_assigns) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv443) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_assigns) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : 'tv_assigns) = _v in
            ((let _v : 'tv_expr = 
# 107 "src/parser.mly"
                                         ( _1 )
# 2428 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)) : 'freshtv444)) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv449 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2438 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_primitive__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_primitive__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_primitive__) = _v in
    ((let _v : 'tv_args = let args =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2460 "src/parser.ml"
      
    in
    
# 82 "src/parser.mly"
                                              ( args )
# 2466 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv275) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_args) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv273 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv269 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THINARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state) * _menhir_state * 'tv_args)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | GENERIC _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state) * _menhir_state * 'tv_args)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)) : 'freshtv276)) : 'freshtv278)) : 'freshtv280)

and _menhir_goto_primitive : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_primitive -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_primitive = 
# 77 "src/parser.mly"
                                              ( TList(_2) )
# 2539 "src/parser.ml"
         in
        _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)
    | MenhirState17 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | GENERIC _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv214)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_primitive_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2581 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_primitive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv223 * _menhir_state) * _menhir_state * 'tv_args))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv221 * _menhir_state) * _menhir_state * 'tv_args))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _2), _, _5) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_primitive = 
# 76 "src/parser.mly"
                                              ( TFun(_2, _5) )
# 2603 "src/parser.ml"
         in
        _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | GENERIC _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv237 * _menhir_state) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv233 * _menhir_state) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv231 * _menhir_state) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_primitive = 
# 78 "src/parser.mly"
                                              ( TMap(_2, _4) )
# 2664 "src/parser.ml"
             in
            _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv235 * _menhir_state) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv243 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2679 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv239 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2689 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | ID _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | IF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LAMBDA ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LPAREN ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LSQUARE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LT ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | MINUS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | MODULE_LIT _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | NUM_LIT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | STR_LIT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | TRUE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv241 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2733 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2742 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2748 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_opt = 
# 69 "src/parser.mly"
                                              ( _1, _3 )
# 2755 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_opt) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv245 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv246)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_opt_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2786 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)) : 'freshtv254)) : 'freshtv256)) : 'freshtv258)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv263 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2801 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv259 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2811 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv260)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv261 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2829 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)) : 'freshtv264)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_kv_pair__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_kv_pair__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_kv_pair__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv205) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_kv_pair__) = _v in
    ((let _v : 'tv_kv_pairs = let kv =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2851 "src/parser.ml"
      
    in
    
# 100 "src/parser.mly"
                                          ( kv )
# 2857 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv203) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_kv_pairs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv201 * _menhir_state)) * _menhir_state * 'tv_kv_pairs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv197 * _menhir_state)) * _menhir_state * 'tv_kv_pairs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv193 * _menhir_state)) * _menhir_state * 'tv_kv_pairs)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state)) * _menhir_state * 'tv_kv_pairs)) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _3) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_literals = 
# 97 "src/parser.mly"
                                         ( MapLit(_3) )
# 2889 "src/parser.ml"
             in
            _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv195 * _menhir_state)) * _menhir_state * 'tv_kv_pairs)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state)) * _menhir_state * 'tv_kv_pairs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)) : 'freshtv204)) : 'freshtv206)) : 'freshtv208)

and _menhir_reduce47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2912 "src/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_literals : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_literals -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_literals) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : 'tv_literals) = _v in
    ((let _v : 'tv_expr = 
# 106 "src/parser.mly"
                                         ( _1 )
# 2929 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 75 "src/parser.mly"
                                              ( TUnit )
# 2943 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 74 "src/parser.mly"
                                              ( TString )
# 2957 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 72 "src/parser.mly"
                                              ( TNum )
# 2971 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | GENERIC _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | GENERIC _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
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
        let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState10 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_primitive__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3031 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | GENERIC _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
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

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "src/parser.mly"
       (char)
# 3069 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 21 "src/parser.mly"
       (char)
# 3079 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_primitive = 
# 79 "src/parser.mly"
                                              ( T(_1) )
# 3084 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 73 "src/parser.mly"
                                              ( TBool )
# 3098 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 20 "src/parser.mly"
       (string)
# 3114 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv167 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3125 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | GENERIC _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv168)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv169 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3157 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_literals = 
# 86 "src/parser.mly"
                                              ( BoolLit(true) )
# 3179 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "src/parser.mly"
       (string)
# 3186 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 18 "src/parser.mly"
       (string)
# 3196 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_literals = 
# 88 "src/parser.mly"
                                              ( StrLit(_1) )
# 3201 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "src/parser.mly"
       (float)
# 3208 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 17 "src/parser.mly"
       (float)
# 3218 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_literals = 
# 85 "src/parser.mly"
                                              ( NumLit(_1) )
# 3223 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "src/parser.mly"
       (string)
# 3269 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * (
# 19 "src/parser.mly"
       (string)
# 3281 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ID _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LAMBDA ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LPAREN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LSQUARE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MODULE_LIT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | NOT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NUM_LIT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | STR_LIT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | TRUE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv158)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * (
# 19 "src/parser.mly"
       (string)
# 3325 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
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
    | LSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ID _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | IF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LAMBDA ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LPAREN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LSQUARE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MODULE_LIT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | NOT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | NUM_LIT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | STR_LIT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | TRUE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState38 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_kv_pair__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3416 "src/parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_kv_pair__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv154)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | RSQUARE ->
        _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | IF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LAMBDA ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LPAREN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LSQUARE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MODULE_LIT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | NOT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NUM_LIT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | STR_LIT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | TRUE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | RPAREN ->
            _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv148)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 3607 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3619 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ID _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | IF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LAMBDA ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LPAREN ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LSQUARE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LT ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | MODULE_LIT _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | NOT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | NUM_LIT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | STR_LIT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | TRUE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | RPAREN ->
            _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv142)
    | AND | CARET | COLON | COMMA | DIVIDE | EQUALS | GT | GTE | LT | LTE | MINUS | MODULUS | MULTIPLY | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3663 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_literals = 
# 89 "src/parser.mly"
                                              ( Val(_1) )
# 3669 "src/parser.ml"
         in
        _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3679 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_literals = 
# 87 "src/parser.mly"
                                              ( BoolLit(false) )
# 3694 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv49 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3706 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv51 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3715 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3729 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3738 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_kv_pair)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv63 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3857 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * (
# 19 "src/parser.mly"
       (string)
# 3896 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv121 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3910 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv125 * _menhir_state) * _menhir_state * 'tv_args))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3949 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * 'tv_decls) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv138)

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
# 3973 "src/parser.ml"
      
    in
    
# 66 "src/parser.mly"
                                         ( opts )
# 3979 "src/parser.ml"
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
# 3990 "src/parser.ml"
    ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv37 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 4000 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv33 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 4010 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | GENERIC _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | LIST ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | LPAREN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | LT ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv35 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 4042 "src/parser.ml"
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
# 4053 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)) : 'freshtv44)) : 'freshtv46)) : 'freshtv48)

and _menhir_run125 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 4061 "src/parser.ml"
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
# 4073 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | GENERIC _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | LIST ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | LPAREN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | LT ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | NUM ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | STRING ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | UNIT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 4105 "src/parser.ml"
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
# 4132 "src/parser.ml"
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
# 4143 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run125 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState124 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_opt__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 4157 "src/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv8)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv9 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 4171 "src/parser.ml"
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
# 36 "src/parser.mly"
      (Ast.program)
# 4194 "src/parser.ml"
        ) = 
# 41 "src/parser.mly"
                                         ( (List.rev (fst _1), snd _1) )
# 4198 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21) = _menhir_stack in
        let (_v : (
# 36 "src/parser.mly"
      (Ast.program)
# 4205 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        let (_v : (
# 36 "src/parser.mly"
      (Ast.program)
# 4212 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_1 : (
# 36 "src/parser.mly"
      (Ast.program)
# 4219 "src/parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv18)) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)) : 'freshtv26)
    | FALSE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | IF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LAMBDA ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LSQUARE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LT ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MINUS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MODULE_LIT _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NUM_LIT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | STR_LIT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | TRUE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState2
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
# 36 "src/parser.mly"
      (Ast.program)
# 4270 "src/parser.ml"
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
# 44 "src/parser.mly"
                                         ( [], [] )
# 4292 "src/parser.ml"
     in
    _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 220 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
  


# 4300 "src/parser.ml"
