%{ 
open Ast
%}

/* Tokens */
%token EOF
%token PLUS MINUS MULTIPLY DIVIDE MODULUS
%token LT LTE GT GTE EQUALS NEQ
%token AND OR NOT
%token LPAREN RPAREN LBRACE RBRACE RSQUARE LSQUARE
%token ASSIGN
%token CARET
%token VAL IF THEN ELSE DEF TRUE FALSE
%token NUM LIST BOOL STRING UNIT
%token COLON SEMICOLON DOT FATARROW COMMA THINARROW

%token <float>  NUM_LIT
%token <string> STR_LIT
%token <string> MOD_LIT
%token <string> ID

/* associativity rules */
%left SEMICOLON
%right ASSIGN
%left CARET AND OR
%left NOT
%left LTE GTE LT GT EQUALS NEQ
%left PLUS MINUS
%left MULTIPLY DIVIDE MODULUS
%left NEG



/* entry point */
%start main
%type <Ast.expr> main

%%

main:
    expr SEMICOLON EOF                   { $1 }

/* grammar follows */
primitive:
    | NUM                                { TNum }
    | BOOL                               { TBool }
    | STRING                             { TString }
    | UNIT                               { TUnit }

literals:
    | NUM_LIT                            { NumLit($1) }
    | TRUE                               { BoolLit(true) }
    | FALSE                              { BoolLit(false) }
    | STR_LIT                            { StrLit($1) }
    | ID                                 { Val($1) }

block:
    | LBRACE expr RBRACE                 { $2 }

expr: 
    | literals                                    { $1 }
    | assigns                                     { $1 }
    | expr PLUS expr                              { Binop($1, Add, $3) }
    | expr MINUS expr                             { Binop($1, Sub, $3) }
    | expr MULTIPLY expr                          { Binop($1, Mul, $3) }
    | expr DIVIDE expr                            { Binop($1, Div, $3) }
    | expr MODULUS expr                           { Binop($1, Mod, $3) }
    | expr CARET expr                             { Binop($1, Caret, $3) }
    | expr AND expr                               { Binop($1, And, $3) }
    | expr OR expr                                { Binop($1, Or, $3) }
    | expr LTE expr                               { Binop($1, Lte, $3) }
    | expr LT expr                                { Binop($1, Lt, $3) }
    | expr GTE expr                               { Binop($1, Gte, $3) }
    | expr GT expr                                { Binop($1, Gt, $3) }
    | expr EQUALS expr                            { Binop($1, Equals, $3) }
    | expr NEQ expr                               { Binop($1, Neq, $3) }
    | LPAREN expr RPAREN                          { $2 }
    | NOT expr                                    { Unop(Not, $2) }
    | MINUS expr %prec NEG                        { Unop(Neg, $2) }
    | expr SEMICOLON expr                         { Seq($1, $3) }
    | IF expr THEN block ELSE block               { If($2, $4, $6) }

assigns:
    | VAL ID COLON primitive ASSIGN expr { Assign($2, $4, $6) }
