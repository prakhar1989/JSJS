
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
  | IF
  | ID of (
# 20 "src/parser.mly"
       (string)
# 52 "src/parser.ml"
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
  | MenhirState116
  | MenhirState114
  | MenhirState109
  | MenhirState105
  | MenhirState103
  | MenhirState97
  | MenhirState91
  | MenhirState89
  | MenhirState80
  | MenhirState77
  | MenhirState71
  | MenhirState70
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState38
  | MenhirState36
  | MenhirState30
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState25
  | MenhirState21
  | MenhirState18
  | MenhirState13
  | MenhirState9
  | MenhirState5
  | MenhirState2

# 1 "src/parser.mly"
   
open Ast

# 122 "src/parser.ml"

let rec _menhir_goto_list_delimited_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_delimited_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (exprs : 'tv_list_delimited_expr_) = _v in
        ((let _v : 'tv_expr_list = 
# 53 "src/parser.mly"
                                         ( exprs )
# 139 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_expr_list) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv471 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv469 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_block = 
# 50 "src/parser.mly"
                                         ( _2 )
# 163 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_block) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState70 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv447 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv443 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LBRACE ->
                        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv444)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv445 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
            | MenhirState80 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv451 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv449 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_expr = 
# 108 "src/parser.mly"
                                         ( If(_2, _4, _6) )
# 208 "src/parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
            | MenhirState97 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv455 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 216 "src/parser.ml"
                ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals))) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv453 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 222 "src/parser.ml"
                ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals))) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s), _2), _, _4), _, _7), _, _10) = _menhir_stack in
                let _9 = () in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_assigns = 
# 122 "src/parser.mly"
                                                                              (
        FuncAssign(_2, _4, _7, _10)
    )
# 236 "src/parser.ml"
                 in
                _menhir_goto_assigns _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)
            | MenhirState116 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv465 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 244 "src/parser.ml"
                ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv463 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 250 "src/parser.ml"
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
# 266 "src/parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv461) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_func_decl) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv459 * 'tv_decls) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_func_decl) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv457 * 'tv_decls) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let (_2 : 'tv_func_decl) = _v in
                ((let (_menhir_stack, _1) = _menhir_stack in
                let _v : 'tv_decls = 
# 44 "src/parser.mly"
                                         ( fst _1, (_2 :: snd _1) )
# 284 "src/parser.ml"
                 in
                _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv458)) : 'freshtv460)) : 'freshtv462)) : 'freshtv464)) : 'freshtv466)
            | _ ->
                _menhir_fail ()) : 'freshtv468)) : 'freshtv470)) : 'freshtv472)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv473 * _menhir_state) * _menhir_state * 'tv_expr_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)) : 'freshtv478)) : 'freshtv480)) : 'freshtv482)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_list_delimited_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_list_delimited_expr_ = 
# 188 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 309 "src/parser.ml"
         in
        _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)) : 'freshtv486)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_ID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv437 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 323 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv435 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 331 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_ID_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 340 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)) : 'freshtv438)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ID__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 355 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)) : 'freshtv442)
    | _ ->
        _menhir_fail ()

and _menhir_goto_assigns : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_assigns -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_assigns) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : 'tv_assigns) = _v in
    ((let _v : 'tv_expr = 
# 90 "src/parser.mly"
                                         ( _1 )
# 374 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)) : 'freshtv434)

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_delimited_expr_ = 
# 186 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 383 "src/parser.ml"
     in
    _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 402 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)) : 'freshtv426)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 419 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
    | _ ->
        _menhir_fail ()

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState57
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
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState63
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
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | RBRACE ->
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_goto_separated_nonempty_list_COMMA_opt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_opt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_opt__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 898 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)) : 'freshtv418)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv421 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_opt_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_opt_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 915 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_ID__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_ID__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_ID__) = _v in
    ((let _v : 'tv_anon_formals = let args =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 936 "src/parser.ml"
      
    in
    
# 115 "src/parser.mly"
                                         ( args )
# 942 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv409) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_anon_formals) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv407 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 953 "src/parser.ml"
    ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv403 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 963 "src/parser.ml"
        ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FATARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv399 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 973 "src/parser.ml"
            ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LBRACE ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | MINUS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | NOT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | NUM_LIT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | STR_LIT _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv401 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 1011 "src/parser.ml"
            ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv405 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 1022 "src/parser.ml"
        ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)) : 'freshtv410)) : 'freshtv412)) : 'freshtv414)

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 1030 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1042 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv394)
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1058 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_ID_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1064 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 1074 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv398)

and _menhir_goto_separated_nonempty_list_COMMA_primitive_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_primitive_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_primitive__ = 
# 131 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x )
# 1094 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv391 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_primitive_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_primitive_ = 
# 218 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1111 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_primitive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)) : 'freshtv392)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState61 | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | MINUS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | NOT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | NUM_LIT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | STR_LIT _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv248)
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 1192 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 91 "src/parser.mly"
                                         ( Binop(_1, Add, _3) )
# 1222 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 93 "src/parser.mly"
                                         ( Binop(_1, Mul, _3) )
# 1242 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 95 "src/parser.mly"
                                         ( Binop(_1, Mod, _3) )
# 1255 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 94 "src/parser.mly"
                                         ( Binop(_1, Div, _3) )
# 1268 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 98 "src/parser.mly"
                                         ( Binop(_1, Or, _3) )
# 1307 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 104 "src/parser.mly"
                                         ( Binop(_1, Neq, _3) )
# 1341 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 92 "src/parser.mly"
                                         ( Binop(_1, Sub, _3) )
# 1371 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 99 "src/parser.mly"
                                         ( Binop(_1, Lte, _3) )
# 1405 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv301 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv297 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 100 "src/parser.mly"
                                         ( Binop(_1, Lt, _3) )
# 1439 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 101 "src/parser.mly"
                                         ( Binop(_1, Gte, _3) )
# 1473 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 102 "src/parser.mly"
                                         ( Binop(_1, Gt, _3) )
# 1507 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 103 "src/parser.mly"
                                         ( Binop(_1, Equals, _3) )
# 1541 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 96 "src/parser.mly"
                                         ( Binop(_1, Caret, _3) )
# 1587 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 97 "src/parser.mly"
                                         ( Binop(_1, And, _3) )
# 1633 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | MenhirState2 | MenhirState77 | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv349 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv347 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_delimited_expr = 
# 47 "src/parser.mly"
                                         ( _1 )
# 1741 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv345) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_delimited_expr) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState77 | MenhirState71 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv339 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | ID _v ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                | IF ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | LPAREN ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | MINUS ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | NOT ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | NUM_LIT _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                | STR_LIT _v ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
                | TRUE ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | RBRACE ->
                    _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState77
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv340)
            | MenhirState2 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv343 * 'tv_decls) * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv341 * 'tv_decls) * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _1), _, _2) = _menhir_stack in
                let _v : 'tv_decls = 
# 43 "src/parser.mly"
                                         ( (_2 :: fst _1), snd _1 )
# 1790 "src/parser.ml"
                 in
                _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv342)) : 'freshtv344)
            | _ ->
                _menhir_fail ()) : 'freshtv346)) : 'freshtv348)) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv351 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)) : 'freshtv354)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 105 "src/parser.mly"
                                         ( _2 )
# 1848 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv365 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 107 "src/parser.mly"
                                         ( Unop(Neg, _2) )
# 1868 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | COMMA | OR | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 106 "src/parser.mly"
                                         ( Unop(Not, _2) )
# 1907 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv369 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv377 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 1922 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv373 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 1960 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _2), _, _4), _, _6) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_assigns = 
# 118 "src/parser.mly"
                                         ( Assign(_2, _4, _6) )
# 1969 "src/parser.ml"
             in
            _menhir_goto_assigns _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv375 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 1979 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv383 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 1988 "src/parser.ml"
        ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RPAREN | SEMICOLON | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv379 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2026 "src/parser.ml"
            ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), _2), _, _4), _, _7), _, _10) = _menhir_stack in
            let _9 = () in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_assigns = 
# 119 "src/parser.mly"
                                                                                        (
        FuncAssign(_2, _4, _7, [_10])
    )
# 2040 "src/parser.ml"
             in
            _menhir_goto_assigns _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv381 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2050 "src/parser.ml"
            ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
    | _ ->
        _menhir_fail ()

and _menhir_goto_primitive : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_primitive -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv196)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_primitive_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2092 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_primitive_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv219 * _menhir_state) * _menhir_state * 'tv_args))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv217 * _menhir_state) * _menhir_state * 'tv_args))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _2), _, _5) = _menhir_stack in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_func_type = 
# 76 "src/parser.mly"
                                             ( _2, _5 )
# 2114 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_func_type) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv213 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2125 "src/parser.ml"
        ))) * _menhir_state * 'tv_func_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv209 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2135 "src/parser.ml"
            ))) * _menhir_state * 'tv_func_type) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv205 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2145 "src/parser.ml"
                ))) * _menhir_state * 'tv_func_type)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv203) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState89 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ID__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2159 "src/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv206)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv207 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2173 "src/parser.ml"
                ))) * _menhir_state * 'tv_func_type)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv211 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2184 "src/parser.ml"
            ))) * _menhir_state * 'tv_func_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)) : 'freshtv216)) : 'freshtv218)) : 'freshtv220)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv225 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2193 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv221 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2203 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | ID _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | IF ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LPAREN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | MINUS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | NOT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | NUM_LIT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | STR_LIT _v ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | TRUE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv223 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2239 "src/parser.ml"
            ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2248 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2254 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_opt = 
# 67 "src/parser.mly"
                                         ( _1, _3 )
# 2261 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_opt) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv228)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_opt_ = 
# 216 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [ x ] )
# 2292 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv230)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_opt) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)) : 'freshtv236)) : 'freshtv238)) : 'freshtv240)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv245 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2307 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv241 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2317 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv243 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2335 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_primitive__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_primitive__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_primitive__) = _v in
    ((let _v : 'tv_args = let args =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2357 "src/parser.ml"
      
    in
    
# 79 "src/parser.mly"
                                              ( args )
# 2363 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv189) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_args) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THINARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv179 * _menhir_state) * _menhir_state * 'tv_args)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv180)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv181 * _menhir_state) * _menhir_state * 'tv_args)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * 'tv_args) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)) : 'freshtv194)

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expr__) = _v in
    ((let _v : 'tv_actuals_opt = let opts =
      let xs = xs0 in
      
# 207 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( xs )
# 2429 "src/parser.ml"
      
    in
    
# 112 "src/parser.mly"
                                         ( opts )
# 2435 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv173) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_actuals_opt) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv171 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2446 "src/parser.ml"
    ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2456 "src/parser.ml"
        ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2463 "src/parser.ml"
        ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expr = 
# 109 "src/parser.mly"
                                         ( Call(_1, _3) )
# 2471 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2481 "src/parser.ml"
        ))) * _menhir_state * 'tv_actuals_opt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)) : 'freshtv174)) : 'freshtv176)) : 'freshtv178)

and _menhir_goto_literals : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_literals -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_literals) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : 'tv_literals) = _v in
    ((let _v : 'tv_expr = 
# 89 "src/parser.mly"
                                         ( _1 )
# 2499 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 73 "src/parser.mly"
                                         ( TUnit )
# 2513 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 72 "src/parser.mly"
                                         ( TString )
# 2527 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 70 "src/parser.mly"
                                         ( TNum )
# 2541 "src/parser.ml"
     in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_primitive = 
# 71 "src/parser.mly"
                                         ( TBool )
# 2555 "src/parser.ml"
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
# 2571 "src/parser.ml"
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
# 2582 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv143) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState5 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | NUM ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | STRING ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | UNIT ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv141) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState9 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_primitive__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2612 "src/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_primitive__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv144)
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
# 2636 "src/parser.ml"
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

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_literals = 
# 83 "src/parser.mly"
                                         ( BoolLit(true) )
# 2658 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "src/parser.mly"
       (string)
# 2665 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 18 "src/parser.mly"
       (string)
# 2675 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_literals = 
# 85 "src/parser.mly"
                                         ( StrLit(_1) )
# 2680 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "src/parser.mly"
       (float)
# 2687 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 17 "src/parser.mly"
       (float)
# 2697 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_literals = 
# 82 "src/parser.mly"
                                         ( NumLit(_1) )
# 2702 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
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
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 2833 "src/parser.ml"
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
# 2845 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ID _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IF ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAREN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MINUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NOT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NUM_LIT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | STR_LIT _v ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | TRUE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | VAL ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState30 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2877 "src/parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv130)
    | AND | CARET | COMMA | DIVIDE | EQUALS | GT | GTE | LT | LTE | MINUS | MODULUS | MULTIPLY | NEQ | OR | PLUS | RPAREN | SEMICOLON | THEN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2889 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_literals = 
# 86 "src/parser.mly"
                                         ( Val(_1) )
# 2895 "src/parser.ml"
         in
        _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2905 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_literals = 
# 84 "src/parser.mly"
                                         ( BoolLit(false) )
# 2920 "src/parser.ml"
     in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv49 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2932 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv51 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2941 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_opt)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2955 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2964 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv59 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2973 "src/parser.ml"
        ))) * _menhir_state * 'tv_func_type))) * _menhir_state * 'tv_anon_formals))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 2982 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv63 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 2991 "src/parser.ml"
        ))) * _menhir_state * 'tv_func_type))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * _menhir_state) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_block)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_delimited_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState45 ->
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
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3095 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv113 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3124 "src/parser.ml"
        ))) * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv115 * _menhir_state) * _menhir_state * 'tv_args))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_primitive)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3148 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * 'tv_decls) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv124)

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
# 3172 "src/parser.ml"
      
    in
    
# 64 "src/parser.mly"
                                         ( opts )
# 3178 "src/parser.ml"
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
# 3189 "src/parser.ml"
    ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv37 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3199 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv33 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3209 "src/parser.ml"
            ))) * _menhir_state * 'tv_formals_opt)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv35 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3233 "src/parser.ml"
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
# 3244 "src/parser.ml"
        ))) * _menhir_state * 'tv_formals_opt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)) : 'freshtv44)) : 'freshtv46)) : 'freshtv48)

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "src/parser.mly"
       (string)
# 3252 "src/parser.ml"
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
# 3264 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | NUM ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | STRING ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | UNIT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 20 "src/parser.mly"
       (string)
# 3288 "src/parser.ml"
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
# 3315 "src/parser.ml"
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
# 3326 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState103 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_opt__ = 
# 129 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 3340 "src/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv8)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv9 * _menhir_state) * (
# 20 "src/parser.mly"
       (string)
# 3354 "src/parser.ml"
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
# 3377 "src/parser.ml"
        ) = 
# 39 "src/parser.mly"
                                         ( (List.rev (fst _1), snd _1) )
# 3381 "src/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21) = _menhir_stack in
        let (_v : (
# 34 "src/parser.mly"
      (Ast.program)
# 3388 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        let (_v : (
# 34 "src/parser.mly"
      (Ast.program)
# 3395 "src/parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_1 : (
# 34 "src/parser.mly"
      (Ast.program)
# 3402 "src/parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv18)) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)) : 'freshtv26)
    | FALSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | IF ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MINUS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NOT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NUM_LIT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | STR_LIT _v ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | TRUE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState2
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
# 3445 "src/parser.ml"
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
# 3467 "src/parser.ml"
     in
    _menhir_goto_decls _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 220 "/Users/prakhar/.opam/system/lib/menhir/standard.mly"
  


# 3475 "src/parser.ml"
