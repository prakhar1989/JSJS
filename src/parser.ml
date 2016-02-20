
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
  | MenhirState115
  | MenhirState113
  | MenhirState108
  | MenhirState104
  | MenhirState102
  | MenhirState89
  | MenhirState85
  | MenhirState82
  | MenhirState76
  | MenhirState75
  | MenhirState70
  | MenhirState68
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState43
  | MenhirState41
  | MenhirState35
  | MenhirState33
  | MenhirState32
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState23
  | MenhirState20
  | MenhirState15
  | MenhirState10
  | MenhirState9
  | MenhirState5
  | MenhirState2

# 1 "src/parser.mly"
   
open Ast

# 124 "src/parser.ml"

let rec _menhir_goto_list_delimited_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_delimited_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (exprs : 'tv_list_delimited_expr_) = _v in
        ((let _v : 'tv_expr_list = 
# 53 "src/parser.mly"
                                         ( exprs )
# 141 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_expr_list) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv457 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv453 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv451 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_block = 
# 50 "src/parser.mly"
                                         ( _2 )
# 165 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_block) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState75 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv429 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv425 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LBRACE ->
                        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState85
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv426)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv427 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
            | MenhirState85 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv433 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv431 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_expr = 
# 114 "src/parser.mly"
                                         ( If(_2, _4, _6) )
# 210 "src/parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)) : 'freshtv434)
            | MenhirState89 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv437 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv435 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_literals = 
# 89 "src/parser.mly"
                                                      ( 
        FunLit(_3, _6) 
    )
# 228 "src/parser.ml"
                 in
                _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)) : 'freshtv438)
            | MenhirState115 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv447 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 236 "src/parser.ml"
                ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv445 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 242 "src/parser.ml"
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
# 258 "src/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv443) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_func_decl) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv441 * 'tv_decls) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_func_decl) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv439 * 'tv_decls) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let (_2 : 'tv_func_decl) = _v in
                ((let (_menhir_stack, _1) = _menhir_stack in
                let _v : 'tv_decls = 
# 44 "src/parser.mly"
                                         ( fst _1, (_2 :: snd _1) )
# 276 "src/parser.ml"
                 in
                _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv440)) : 'freshtv442)) : 'freshtv444)) : 'freshtv446)) : 'freshtv448)
            | _ ->
                _menhir_fail ()) : 'freshtv450)) : 'freshtv452)) : 'freshtv454)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv455 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)) : 'freshtv460)) : 'freshtv462)) : 'freshtv464)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_list_delimited_expr_ = 
# 188 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 301 "src/parser.ml"
         in
        _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)) : 'freshtv468)
    | _ ->
        _menhir_fail ()

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_delimited_expr_ = 
# 186 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 312 "src/parser.ml"
     in
    _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState29 | MenhirState32 | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 331 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv423 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv421 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 348 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
    | _ ->
        _menhir_fail ()

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState60
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
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState68
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
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | RBRACE ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_goto_separated_nonempty_list_COMMA_opt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_opt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_opt__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 887 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)) : 'freshtv412)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_opt_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 904 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_primitive_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_primitive_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_primitive__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 925 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)) : 'freshtv404)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv407 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_primitive_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 942 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_primitive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let _v : 'tv_actuals_opt = let opts =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 963 "src/parser.ml"
      
    in
    
# 118 "src/parser.mly"
                                         ( opts )
# 969 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv395) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_actuals_opt) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv375 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 982 "src/parser.ml"
        ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 992 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv369 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 999 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expr = 
# 115 "src/parser.mly"
                                         ( Call(_1, _3) )
# 1007 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv373 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1017 "src/parser.ml"
            ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FATARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv377 * _menhir_state)) * _menhir_state * 'tv_actuals_opt)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | ID _v ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | IF ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LAMBDA ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LBRACE ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LPAREN ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | LSQUARE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | MINUS ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | NOT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | NUM_LIT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | STR_LIT _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | TRUE ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState89
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv378)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv379 * _menhir_state)) * _menhir_state * 'tv_actuals_opt)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state)) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv393 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv389 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv387 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_literals = 
# 92 "src/parser.mly"
                                         ( ListLit(_2) )
# 1101 "src/parser.ml"
             in
            _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | _ ->
        _menhir_fail ()) : 'freshtv396)) : 'freshtv398)) : 'freshtv400)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 | MenhirState32 | MenhirState66 | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LAMBDA ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LPAREN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LSQUARE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MINUS ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NOT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NUM_LIT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | STR_LIT _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | TRUE ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv226)
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1193 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 97 "src/parser.mly"
                                         ( Binop(_1, Add, _3) )
# 1223 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 99 "src/parser.mly"
                                         ( Binop(_1, Mul, _3) )
# 1243 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 101 "src/parser.mly"
                                         ( Binop(_1, Mod, _3) )
# 1256 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 100 "src/parser.mly"
                                         ( Binop(_1, Div, _3) )
# 1269 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 104 "src/parser.mly"
                                         ( Binop(_1, Or, _3) )
# 1308 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 110 "src/parser.mly"
                                         ( Binop(_1, Neq, _3) )
# 1342 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 98 "src/parser.mly"
                                         ( Binop(_1, Sub, _3) )
# 1372 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 105 "src/parser.mly"
                                         ( Binop(_1, Lte, _3) )
# 1406 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 106 "src/parser.mly"
                                         ( Binop(_1, Lt, _3) )
# 1440 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 107 "src/parser.mly"
                                         ( Binop(_1, Gte, _3) )
# 1474 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 108 "src/parser.mly"
                                         ( Binop(_1, Gt, _3) )
# 1508 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 109 "src/parser.mly"
                                         ( Binop(_1, Equals, _3) )
# 1542 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 102 "src/parser.mly"
                                         ( Binop(_1, Caret, _3) )
# 1588 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 103 "src/parser.mly"
                                         ( Binop(_1, And, _3) )
# 1634 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState2 | MenhirState82 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_delimited_expr = 
# 47 "src/parser.mly"
                                         ( _1 )
# 1742 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_delimited_expr) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState82 | MenhirState76 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | ID _v ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | IF ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | LAMBDA ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | LPAREN ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | LSQUARE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | MINUS ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | NOT ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | NUM_LIT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | STR_LIT _v ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
                | TRUE ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | RBRACE ->
                    _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv318)
            | MenhirState2 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv321 * 'tv_decls) * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv319 * 'tv_decls) * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _1), _, _2) = _menhir_stack in
                let _v : 'tv_decls = 
# 43 "src/parser.mly"
                                         ( (_2 :: fst _1), snd _1 )
# 1795 "src/parser.ml"
                 in
                _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv320)) : 'freshtv322)
            | _ ->
                _menhir_fail ()) : 'freshtv324)) : 'freshtv326)) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv337 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv333 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_literals = 
# 86 "src/parser.mly"
                                                                ( 
        FunLit(_3, [_6]) 
    )
# 1854 "src/parser.ml"
             in
            _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv335 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv341 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv339 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 111 "src/parser.mly"
                                         ( _2 )
# 1910 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv343 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv349 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 113 "src/parser.mly"
                                         ( Unop(Neg, _2) )
# 1930 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | OR | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 112 "src/parser.mly"
                                         ( Unop(Not, _2) )
# 1969 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv367 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 1984 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN | RSQUARE | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv363 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2022 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _2), _, _4), _, _6) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_assigns = 
# 121 "src/parser.mly"
                                         ( Assign(_2, _4, _6) )
# 2031 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_assigns) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_assigns) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : 'tv_assigns) = _v in
            ((let _v : 'tv_expr = 
# 96 "src/parser.mly"
                                         ( _1 )
# 2048 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)) : 'freshtv362)) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv365 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2058 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_primitive__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv223) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_primitive__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_primitive__) = _v in
    ((let _v : 'tv_args = let args =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2080 "src/parser.ml"
      
    in
    
# 78 "src/parser.mly"
                                              ( args )
# 2086 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv219) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_args) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv217 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THINARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv209 * _menhir_state) * _menhir_state * 'tv_args)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | LIST ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv211 * _menhir_state) * _menhir_state * 'tv_args)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)) : 'freshtv220)) : 'freshtv222)) : 'freshtv224)

and _menhir_goto_primitive : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_primitive -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_primitive = 
# 75 "src/parser.mly"
                                              ( TList(_2) )
# 2155 "src/parser.ml"
         in
        _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
    | MenhirState15 | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | LIST ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv172)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv173 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_primitive_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2193 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_primitive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv181 * _menhir_state) * _menhir_state * 'tv_args))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179 * _menhir_state) * _menhir_state * 'tv_args))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _2), _, _5) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_primitive = 
# 74 "src/parser.mly"
                                              ( TFun(_2, _5) )
# 2215 "src/parser.ml"
         in
        _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv187 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2223 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv183 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2233 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | ID _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | IF ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LAMBDA ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LPAREN ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | LSQUARE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | MINUS ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | NOT ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | NUM_LIT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | STR_LIT _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
            | TRUE ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv185 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2273 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv201 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2282 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2288 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_opt = 
# 67 "src/parser.mly"
                                              ( _1, _3 )
# 2295 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_opt) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv189 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv190)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv191 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_opt_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2326 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)) : 'freshtv198)) : 'freshtv200)) : 'freshtv202)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv207 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2341 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv203 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2351 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState115
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv205 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2369 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
    | _ ->
        _menhir_fail ()

and _menhir_reduce43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2381 "src/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_literals : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_literals -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_literals) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : 'tv_literals) = _v in
    ((let _v : 'tv_expr = 
# 95 "src/parser.mly"
                                         ( _1 )
# 2398 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 73 "src/parser.mly"
                                              ( TUnit )
# 2412 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 72 "src/parser.mly"
                                              ( TString )
# 2426 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 70 "src/parser.mly"
                                              ( TNum )
# 2440 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LIST ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | STRING ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | UNIT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState9 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_primitive__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2469 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)
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
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LIST ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NUM ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | STRING ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | UNIT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 71 "src/parser.mly"
                                              ( TBool )
# 2510 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 20 "src/parser.mly"
       (string)
# 2526 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv145 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2537 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LIST ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LPAREN ->
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv147 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2565 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv143) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_literals = 
# 82 "src/parser.mly"
                                              ( BoolLit(true) )
# 2587 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "src/parser.mly"
       (string)
# 2594 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv141) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 18 "src/parser.mly"
       (string)
# 2604 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_literals = 
# 84 "src/parser.mly"
                                              ( StrLit(_1) )
# 2609 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "src/parser.mly"
       (float)
# 2616 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 17 "src/parser.mly"
       (float)
# 2626 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_literals = 
# 81 "src/parser.mly"
                                              ( NumLit(_1) )
# 2631 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | RSQUARE ->
        _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LAMBDA ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LPAREN ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LSQUARE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MINUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NOT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NUM_LIT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | STR_LIT _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | TRUE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | RPAREN ->
            _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv136)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 2865 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2877 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ID _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IF ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LAMBDA ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LPAREN ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LSQUARE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MINUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NOT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NUM_LIT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | STR_LIT _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | TRUE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | RPAREN ->
            _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv130)
    | AND | CARET | COMMA | DIVIDE | EQUALS | GT | GTE | LT | LTE | MINUS | MODULUS | MULTIPLY | NEQ | OR | PLUS | RPAREN | RSQUARE | SEMICOLON | THEN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2917 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_literals = 
# 85 "src/parser.mly"
                                              ( Val(_1) )
# 2923 "src/parser.ml"
         in
        _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2933 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_literals = 
# 83 "src/parser.mly"
                                              ( BoolLit(false) )
# 2948 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv49 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2960 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv51 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2969 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2983 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2992 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv59 * _menhir_state)) * _menhir_state * 'tv_actuals_opt))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3101 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv113 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3140 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv115 * _menhir_state) * _menhir_state * 'tv_args))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3169 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * 'tv_decls) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv126)

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
# 3193 "src/parser.ml"
      
    in
    
# 64 "src/parser.mly"
                                         ( opts )
# 3199 "src/parser.ml"
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
# 3210 "src/parser.ml"
    ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv37 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3220 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv33 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3230 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LIST ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LPAREN ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv35 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3258 "src/parser.ml"
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
# 3269 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)) : 'freshtv44)) : 'freshtv46)) : 'freshtv48)

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 3277 "src/parser.ml"
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
# 3289 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | LIST ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | LPAREN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | NUM ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | STRING ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | UNIT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3317 "src/parser.ml"
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
# 3344 "src/parser.ml"
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
# 3355 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState102 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_opt__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3369 "src/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv8)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv9 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3383 "src/parser.ml"
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
# 3406 "src/parser.ml"
        ) = 
# 39 "src/parser.mly"
                                         ( (List.rev (fst _1), snd _1) )
# 3410 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21) = _menhir_stack in
        let (_v : (
# 34 "src/parser.mly"
      (Ast.program)
# 3417 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        let (_v : (
# 34 "src/parser.mly"
      (Ast.program)
# 3424 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_1 : (
# 34 "src/parser.mly"
      (Ast.program)
# 3431 "src/parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv18)) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)) : 'freshtv26)
    | FALSE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | IF ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LAMBDA ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LSQUARE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MINUS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NOT ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NUM_LIT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | STR_LIT _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | TRUE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState2
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
# 3478 "src/parser.ml"
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
# 3500 "src/parser.ml"
     in
    _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 220 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
  


# 3508 "src/parser.ml"
