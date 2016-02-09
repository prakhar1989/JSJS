%{ open Lexing %}

/* OCamlyacc Declarations */

%token PLUS MINUS MULTIPLY DIVIDE MODULUS
%token LT LTE GT GTE EQUALS NEQ
%token AND OR NOT
%token LPAREN RPAREN LBRACE RBRACE RSQUARE LSQUARE
%token ASSIGN
%token CARET
%token VAL IF THEN ELSE DEF TRUE FALSE
%token NUM LIST BOOL STRING UNIT
%token COLON SEMICOLON DOT FATARROW COMMA THINARROW

%token <float> NUM_LIT
%token <string> STR_LIT
%token <string> MOD_LIT
%token <string> ID

%start input
%type <unit> input

%%

/* grammer follows */

input:
    | /* empty */ { }
;

