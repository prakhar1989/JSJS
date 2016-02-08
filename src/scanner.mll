{
    open Printf
}

let digit = ['0'-'9']
let id = ['a'-'z'] ['a'-'z' '0'-'9' '_']* ['?']?
let ws = [' ' '\r' '\n' '\t']

rule token = 
    parse 
    | ws  { token lexbuf; }
    | '+' 
    | '-' 
    | '*' 
    | '/' 
    | '%'
    | '<'
    | '>'
    | '='
    | '!'
    | '^' as op { printf "Operator: %c \n" op; }
    | "<="
    | ">="
    | "=="
    | "!="
    | "&&"
    | "||" as dop { printf "Operator: %s \n" dop; }
    | "//" { printf "comment found\n"; comment lexbuf; } (* ignoring comments *)
    | _ as c { printf "Unrecognized character: %c\n" c; }
    | eof {raise End_of_file}
and comment = 
    parse
    | '\n' { token lexbuf }
    | _  { comment lexbuf }

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
