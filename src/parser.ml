
exception Error

let _eRR =
  Error

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
  | MOD_LIT of (string)
  | MODULUS
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

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState85
  | MenhirState83
  | MenhirState78
  | MenhirState74
  | MenhirState72
  | MenhirState62
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
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState32
  | MenhirState30
  | MenhirState24
  | MenhirState23
  | MenhirState18
  | MenhirState17
  | MenhirState16
  | MenhirState15
  | MenhirState11
  | MenhirState5
  | MenhirState2
   
open Ast

let rec _menhir_goto_list_delimited_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let exprs = _v in
        let _v : (Ast.expr list) =                                          ( exprs ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr list) =                                          ( _2 ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState23 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | LBRACE ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState62 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s), _, _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Ast.expr) =                                          ( If(_2, _4, _6) ) in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
            | MenhirState85 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((((_menhir_stack, _menhir_s), _2), _, _4), _, _7), _, _9) = _menhir_stack in
                let _8 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Ast.func_decl) =                                                                     ( 
        { fname = _2;
          formals = _4;
          return_type = _7;
          body = _9; }
    ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _2 = _v in
                let (_menhir_stack, _1) = _menhir_stack in
                let _v : (Ast.expr list * Ast.func_decl list) =                                          ( fst _1, (_2 :: snd _1) ) in
                _menhir_goto_decls _menhir_env _menhir_stack _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (Ast.expr list) =     ( x :: xs ) in
        _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.expr list) =     ( [] ) in
    _menhir_goto_list_delimited_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | RBRACE ->
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_goto_separated_nonempty_list_COMMA_opt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Ast.primitiveType) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : ((string * Ast.primitiveType) list) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.primitiveType) list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState2 | MenhirState59 | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( _1 ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState59 | MenhirState24 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FALSE ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                | ID _v ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
                | IF ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                | LPAREN ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                | MINUS ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                | NOT ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                | NUM_LIT _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
                | STR_LIT _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
                | TRUE ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                | VAL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                | RBRACE ->
                    _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState59
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
            | MenhirState2 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _1), _, _2) = _menhir_stack in
                let _v : (Ast.expr list * Ast.func_decl list) =                                          ( (_2 :: fst _1), snd _1 ) in
                _menhir_goto_decls _menhir_env _menhir_stack _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Add, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) =                                          ( Binop(_1, Mul, _3) ) in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) =                                          ( Binop(_1, Mod, _3) ) in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) =                                          ( Binop(_1, Div, _3) ) in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Or, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Neq, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | EQUALS | GT | GTE | LT | LTE | MINUS | NEQ | OR | PLUS | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Sub, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Lte, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Lt, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Gte, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Gt, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | EQUALS | GT | GTE | LT | LTE | NEQ | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Equals, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, Caret, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) =                                          ( Binop(_1, And, _3) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) =                                          ( _2 ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.expr) =                                          ( Unop(Neg, _2) ) in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | CARET | OR | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.expr) =                                          ( Unop(Not, _2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | CARET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | EQUALS ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GTE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LTE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MODULUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | MULTIPLY ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN | SEMICOLON | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _2), _, _4), _, _6) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) =                                          ( Assign(_2, _4, _6) ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _1 = _v in
            let _v : (Ast.expr) =                                          ( _1 ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_primitive : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.primitiveType) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | ID _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | IF ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | LPAREN ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | MINUS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | NOT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | NUM_LIT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | STR_LIT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | TRUE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | VAL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (string * Ast.primitiveType) =                                          ( _1, _3 ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : ((string * Ast.primitiveType) list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_COMMA_opt_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_literals : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = _v in
    let _v : (Ast.expr) =                                          ( _1 ) in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.primitiveType) =                                          ( TUnit ) in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.primitiveType) =                                          ( TString ) in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.primitiveType) =                                          ( TNum ) in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.primitiveType) =                                          ( TBool ) in
    _menhir_goto_primitive _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOL ->
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) =                                          ( BoolLit(true) ) in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = _v in
    let _v : (Ast.expr) =                                          ( StrLit(_1) ) in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (float) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = _v in
    let _v : (Ast.expr) =                                          ( NumLit(_1) ) in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = _v in
    let _v : (Ast.expr) =                                          ( Val(_1) ) in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) =                                          ( BoolLit(false) ) in
    _menhir_goto_literals _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Ast.primitiveType) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let xs0 = _v in
    let _v : ((string * Ast.primitiveType) list) = let opts =
      let xs = xs0 in
          ( xs )
    in
                                             ( opts ) in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOL ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | NUM ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | STRING ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | UNIT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | NUM ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | STRING ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | UNIT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_decls : _menhir_env -> 'ttv_tail -> (Ast.expr list * Ast.func_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState2 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState72 in
                    let _v : ((string * Ast.primitiveType) list) =     ( [] ) in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_opt__ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState2 in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _1) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.program) =                                          ( (List.rev (fst _1), snd _1) ) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = _v in
        Obj.magic _1
    | FALSE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | IF ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MINUS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NOT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NUM_LIT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | STR_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | TRUE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | VAL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

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

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = () in
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.expr list * Ast.func_decl list) =                                          ( [], [] ) in
    _menhir_goto_decls _menhir_env _menhir_stack _v)
  

