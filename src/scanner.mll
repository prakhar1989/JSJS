{
    open Printf
}

let digit = ['0'-'9']
let id = ['a'-'z'] ['a'-'z' 'A'-'Z' '0'-'9' '_']* ['?']?
let ws = [' ' '\r' '\n' '\t']
let number = digit+ '.'? digit*
let module_lit = ['A'-'Z'] ['a'-'z' 'A'-'Z']*

rule token = 
    parse 
    | ws            { token lexbuf; }
    | '+'
    | '-' 
    | '*' 
    | '/' 
    | '%'
    | '<'
    | '>'
    | '='
    | '!'
    | '^'           as op { printf "Operator: %c \n" op; }
    | "<="
    | ">="
    | "=="
    | "!="
    | "&&"
    | "||"          as dop { printf "Operator: %s \n" dop; }
    | "//"          { printf "comment found\n"; comment lexbuf; } 
    | "val"
    | "if"
    | "else"
    | "then"
    | "def"
    | "true"
    | "false"       as kw  { printf "Keyword: %s \n" kw; }
    | "num"
    | "bool"
    | "unit"
    | "string"
    | "list"        as t   { printf "Type: %s \n" t; }
    | '"'           { printf "string started - "; string_lit lexbuf; }
    | ':' 
    | '('
    | ')'
    | '.'
    | '{'
    | '}'
    | ';'
    | '['
    | ']'
    | ','           as s  { printf "Punctuation: %c\n" s; }
    | "=>"
    | "->"          as sym { printf "Symbols: %s \n" sym; }
    | number        as num { printf "Number: %f \n" (float_of_string num); }
    | id            as ident { printf "Id: %s \n" ident; }
    | module_lit    as m_lit { printf "Module: %s \n" m_lit; }
    | _             { failwith "Syntax error" }
    | eof           { raise End_of_file }

and comment = 
    parse
    | '\n' { token lexbuf }
    | _  { comment lexbuf }

and string_lit =
    parse
    | '"' { printf " - string ended\n"; token lexbuf; }
    | _ as c { printf "%c" c; string_lit lexbuf; }

{
    let rec parse lexbuf = 
        let _ = token lexbuf in parse lexbuf
    ;;


    let main () = 
        (* checks for a file as the first argument
         * else defaults to stdin *)
        let cin = 
            if Array.length Sys.argv > 1
            then open_in Sys.argv.(1)
            else stdin
        in
        let lexbuf = Lexing.from_channel cin in
        try parse lexbuf with
        | End_of_file -> ()
    ;;

    main ();;

}
