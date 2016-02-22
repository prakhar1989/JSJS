%{
open Ast
%}

/* Tokens */
%token EOF
%token PLUS MINUS MULTIPLY DIVIDE MODULUS
%token LT LTE GT GTE EQUALS NEQ
%token AND OR NOT
%token LPAREN RPAREN LBRACE RBRACE RSQUARE LSQUARE
%token ASSIGN LAMBDA
%token CARET
%token VAL IF THEN ELSE DEF TRUE FALSE
%token NUM LIST BOOL STRING UNIT
%token COLON SEMICOLON DOT FATARROW COMMA THINARROW
%token MAP

%token <float>  NUM_LIT
%token <string> STR_LIT
%token <string> MODULE_LIT
%token <string> ID
%token <char>   GENERIC

/* associativity rules */
%nonassoc DOT
%nonassoc ANON
%right ASSIGN
%left CARET AND OR
%left NOT
%left LTE GTE LT GT EQUALS NEQ
%left PLUS MINUS
%left MULTIPLY DIVIDE MODULUS
%left NEG

/* entry point */
%start program
%type <Ast.program> program

%%

program:
    | decls EOF                               { (List.rev (fst $1), snd $1) }

decls:
    | /* nothing */                           { [], [] }
    | decls delimited_expr                    { ($2 :: fst $1), snd $1 }
    | decls func_decl                         { fst $1, ($2 :: snd $1) }

delimited_expr:
    | expr SEMICOLON                          { $1 }

block:
    | LBRACE expr_list RBRACE                 { $2 }

expr_list:
    | exprs = nonempty_list(delimited_expr)            { exprs }

func_decl:
    | DEF ID LPAREN formals_opt RPAREN COLON primitive ASSIGN block {
        { fname = $2;
          formals = $4;
          return_type = $7;
          body = $9; }
    }

formals_opt:
    | opts = separated_list(COMMA, opt)       { opts }

opt:
    | ID COLON primitive                      { $1, $3 }

primitive:
    | NUM                                     { TNum }
    | BOOL                                    { TBool }
    | STRING                                  { TString }
    | UNIT                                    { TUnit }
    | LPAREN args RPAREN THINARROW primitive  { TFun($2, $5) }
    | LIST primitive                          { TList($2) }
    | LT primitive COLON primitive GT         { TMap($2, $4) }
    | GENERIC                                 { T($1) }

args:
    | args = separated_list(COMMA, primitive) { args }

literals:
    | NUM_LIT                                 { NumLit($1) }
    | TRUE                                    { BoolLit(true) }
    | FALSE                                   { BoolLit(false) }
    | STR_LIT                                 { StrLit($1) }
    | ID                                      { Val($1) }
    | LAMBDA LPAREN actuals_opt RPAREN FATARROW expr %prec ANON {
        FunLit($3, [$6])
    }
    | LAMBDA LPAREN actuals_opt RPAREN FATARROW block {
        FunLit($3, $6)
    }
    | LSQUARE actuals_opt RSQUARE             { ListLit($2) }
    | LBRACE kv_pairs RBRACE                  { MapLit($2) }

kv_pairs:
    | kv = separated_list(COMMA, kv_pair)     { kv }

kv_pair:
    | expr COLON expr                         { $1, $3}

expr:
    | literals                           { $1 }
    | assigns                            { $1 }
    | expr PLUS expr                     { Binop($1, Add, $3) }
    | expr MINUS expr                    { Binop($1, Sub, $3) }
    | expr MULTIPLY expr                 { Binop($1, Mul, $3) }
    | expr DIVIDE expr                   { Binop($1, Div, $3) }
    | expr MODULUS expr                  { Binop($1, Mod, $3) }
    | expr CARET expr                    { Binop($1, Caret, $3) }
    | expr AND expr                      { Binop($1, And, $3) }
    | expr OR expr                       { Binop($1, Or, $3) }
    | expr LTE expr                      { Binop($1, Lte, $3) }
    | expr LT expr                       { Binop($1, Lt, $3) }
    | expr GTE expr                      { Binop($1, Gte, $3) }
    | expr GT expr                       { Binop($1, Gt, $3) }
    | expr EQUALS expr                   { Binop($1, Equals, $3) }
    | expr NEQ expr                      { Binop($1, Neq, $3) }
    | LPAREN expr RPAREN                 { $2 }
    | NOT expr                           { Unop(Not, $2) }
    | MINUS expr %prec NEG               { Unop(Neg, $2) }
    | IF expr THEN block ELSE block      { If($2, $4, $6) }
    | ID LPAREN actuals_opt RPAREN       { Call($1, $3) }
    | MODULE_LIT DOT expr                { ModuleLit($1, $3)}

actuals_opt:
    | opts = separated_list(COMMA, expr) { opts }

assigns:
    | VAL ID COLON primitive ASSIGN expr { Assign($2, $4, $6) }
