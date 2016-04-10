{
    open Parser
    open Lexing

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
    | '+'                       { PLUS }
    | '-'                       { MINUS }
    | '*'                       { MULTIPLY }
    | '/'                       { DIVIDE }
    | '%'                       { MODULUS }
    | '<'                       { LT }
    | '>'                       { GT }
    | '='                       { ASSIGN }
    | '!'                       { NOT }
    | '^'                       { CARET }
    | "/\\"                     { LAMBDA }
    | "<="                      { LTE }
    | ">="                      { GTE }
    | "=="                      { EQUALS }
    | "!="                      { NEQ }
    | "&&"                      { AND }
    | "||"                      { OR }
    | "//"                      { comment lexbuf; }
    | "val"                     { VAL }
    | "throw"                   { THROW }
    | "try"                     { TRY }
    | "catch"                   { CATCH }
    | "if"                      { IF }
    | "else"                    { ELSE }
    | "then"                    { THEN }
    | "true"                    { TRUE }
    | "false"                   { FALSE }
    | "num"                     { NUM }
    | "bool"                    { BOOL }
    | "unit"                    { UNIT }
    | "string"                  { STRING }
    | "list"                    { LIST }
    | "(-)"                     { UNIT_LIT }
    | "::"                      { CONS }
    | ':'                       { COLON }
    | '('                       { LPAREN }
    | ')'                       { RPAREN }
    | '.'                       { DOT }
    | '{'                       { LBRACE }
    | '}'                       { RBRACE }
    | ';'                       { SEMICOLON }
    | '['                       { LSQUARE }
    | ']'                       { RSQUARE }
    | ','                       { COMMA }
    | "=>"                      { FATARROW }
    | "->"                      { THINARROW }
    | ['A'-'Z'] as c            { GENERIC(c) }
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
