{
    open Parser
    open Lexing

    let start_pos lexbuf = lexbuf.Lexing.lex_start_p

    (* increments the line number *)
    let incr_lineno lexbuf =
        let curr_pos = lexbuf.lex_curr_p in
        lexbuf.lex_curr_p <- { curr_pos with
            pos_lnum = curr_pos.pos_lnum + 1;
            pos_bol = curr_pos.pos_cnum;
        }
    ;;
}

let digit = ['0'-'9']
let id = ['a'-'z'] ['a'-'z' 'A'-'Z' '0'-'9' '_']* ['?']?
let ws = [' ' '\r' '\t']
let number = digit+ '.'? digit*
let module_lit = ['A'-'Z'] ['a'-'z' 'A'-'Z']+
let string_lit = (([' '-'!' '#'-'[' ']'-'~'] | '\\' ['\\' '"' 'n' 'r' 't'])* as s)

rule token =
    parse
    | ws                        { token lexbuf; }
    | '\n'                      { incr_lineno lexbuf; token lexbuf; }
    | '+'                       { PLUS (start_pos lexbuf) }
    | '-'                       { MINUS (start_pos lexbuf) }
    | '*'                       { MULTIPLY (start_pos lexbuf) }
    | '/'                       { DIVIDE (start_pos lexbuf) }
    | '%'                       { MODULUS (start_pos lexbuf) }
    | '<'                       { LT (start_pos lexbuf) }
    | '>'                       { GT (start_pos lexbuf) }
    | '='                       { ASSIGN (start_pos lexbuf) }
    | '!'                       { NOT (start_pos lexbuf) }
    | '^'                       { CARET (start_pos lexbuf) }
    | "/\\"                     { LAMBDA (start_pos lexbuf) }
    | "<="                      { LTE (start_pos lexbuf) }
    | ">="                      { GTE (start_pos lexbuf) }
    | "=="                      { EQUALS (start_pos lexbuf) }
    | "!="                      { NEQ (start_pos lexbuf) }
    | "&&"                      { AND (start_pos lexbuf) }
    | "||"                      { OR (start_pos lexbuf) }
    | "//"                      { comment lexbuf; }
    | "val"                     { VAL (start_pos lexbuf) }
    | "throw"                   { THROW (start_pos lexbuf) }
    | "try"                     { TRY (start_pos lexbuf) }
    | "catch"                   { CATCH (start_pos lexbuf) }
    | "if"                      { IF (start_pos lexbuf) }
    | "else"                    { ELSE (start_pos lexbuf) }
    | "then"                    { THEN (start_pos lexbuf) }
    | "true"                    { TRUE (start_pos lexbuf) }
    | "false"                   { FALSE (start_pos lexbuf) }
    | "num"                     { NUM (start_pos lexbuf) }
    | "bool"                    { BOOL (start_pos lexbuf) }
    | "unit"                    { UNIT (start_pos lexbuf) }
    | "string"                  { STRING (start_pos lexbuf) }
    | "list"                    { LIST (start_pos lexbuf) }
    | "::"                      { CONS (start_pos lexbuf) }
    | ':'                       { COLON (start_pos lexbuf) }
    | '('                       { LPAREN (start_pos lexbuf) }
    | ')'                       { RPAREN (start_pos lexbuf) }
    | '.'                       { DOT (start_pos lexbuf) }
    | '{'                       { LBRACE (start_pos lexbuf) }
    | '}'                       { RBRACE (start_pos lexbuf) }
    | ';'                       { SEMICOLON (start_pos lexbuf) }
    | '['                       { LSQUARE (start_pos lexbuf) }
    | ']'                       { RSQUARE (start_pos lexbuf) }
    | ','                       { COMMA (start_pos lexbuf) }
    | "=>"                      { FATARROW (start_pos lexbuf) }
    | "->"                      { THINARROW (start_pos lexbuf) }
    | ['A'-'Z'] as c            { GENERIC(c) }
    | "(-)"                     { UNIT_LIT }
    | number as num             { NUM_LIT(float_of_string num); }
    | '"' (string_lit as s) '"' { STR_LIT(s); }
    | id     as ident           { ID(ident); }
    | module_lit  as m_lit      { MODULE_LIT(m_lit); }
    | _ as c                    { let line_no = lexbuf.lex_curr_p.pos_lnum + 1 in
                                  let char_no = lexbuf.lex_curr_p.pos_cnum - lexbuf.lex_curr_p.pos_bol in
                                  raise (Exceptions.IllegalCharacter(Char.escaped c, line_no, char_no)) }
    | eof                       { EOF }

and comment =
    parse
    | '\n'                      { token lexbuf }
    | _                         { comment lexbuf }
