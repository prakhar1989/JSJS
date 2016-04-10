%{
open Ast
%}

/* Tokens */
%token EOF
%token PLUS MINUS MULTIPLY DIVIDE MODULUS
%token LT LTE GT GTE EQUALS NEQ
%token AND OR NOT
%token TRY CATCH THROW
%token LPAREN RPAREN LBRACE RBRACE RSQUARE LSQUARE
%token ASSIGN LAMBDA
%token CARET CONS
%token VAL IF THEN ELSE TRUE FALSE
%token NUM LIST BOOL STRING UNIT
%token COLON SEMICOLON DOT FATARROW COMMA THINARROW

%token UNIT_LIT
%token <float>  NUM_LIT
%token <string> STR_LIT
%token <string> MODULE_LIT
%token <string> ID
%token <char>   GENERIC

/* associativity rules */
%nonassoc THROW
%nonassoc SINGLE
%nonassoc DOUBLE
%nonassoc ANON
%nonassoc DOT
%right ASSIGN
%right CONS
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
    | expr_list EOF                           { $1 }

delimited_expr:
    | expr SEMICOLON                          { $1 }

block:
    | LBRACE expr_list RBRACE                 { $2 }

expr_list:
    | exprs = nonempty_list(delimited_expr)   { exprs }

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
    | LSQUARE generic_types RSQUARE LPAREN args RPAREN THINARROW primitive  { TFunGeneric(($5, $8), $2) }
    | LIST primitive                          { TList($2) }
    | LT primitive COLON primitive GT         { TMap($2, $4) }
    | GENERIC                                 { T($1) }

args:
    | args = separated_list(COMMA, primitive) { args }

literals:
    | NUM_LIT                                  { NumLit($1) }
    | TRUE                                     { BoolLit(true) }
    | FALSE                                    { BoolLit(false) }
    | STR_LIT                                  { StrLit($1) }
    | ID                                       { Val($1) }
    | UNIT_LIT                                 { UnitLit }
    | LAMBDA LPAREN formals_opt RPAREN COLON primitive FATARROW expr %prec ANON {
        FunLit({
            formals = $3; return_type = $6; body = Block([$8]);
            is_generic = false; generic_types = [];
        })
    }
    | LAMBDA LPAREN formals_opt RPAREN COLON primitive FATARROW block {
        FunLit({
            formals = $3; return_type = $6; body = Block($8);
            is_generic = false; generic_types = [];
        })
    }
    | LAMBDA LSQUARE generic_types RSQUARE LPAREN formals_opt RPAREN COLON primitive FATARROW expr %prec ANON {
        FunLit({
            formals = $6; return_type = $9; body = Block([$11]);
            is_generic = true; generic_types = $3;
        })
    }
    | LAMBDA LSQUARE generic_types RSQUARE LPAREN formals_opt RPAREN COLON primitive FATARROW block {
        FunLit({
            formals = $6; return_type = $9; body = Block($11);
            is_generic = true; generic_types = $3;
        })
    }
    | LSQUARE actuals_opt RSQUARE              { ListLit($2) }
    | LBRACE kv_pairs RBRACE                   { MapLit($2) }

generic_types:
    | gt = separated_nonempty_list(COMMA, GENERIC)  { gt }

kv_pairs:
    | kv = separated_list(COMMA, kv_pair)      { kv }

kv_pair:
    | expr COLON expr                          { $1, $3 }

expr:
    | literals                                           { $1 }
    | assigns                                            { $1 }
    | expr PLUS expr                                     { Binop($1, Add, $3) }
    | expr MINUS expr                                    { Binop($1, Sub, $3) }
    | expr MULTIPLY expr                                 { Binop($1, Mul, $3) }
    | expr DIVIDE expr                                   { Binop($1, Div, $3) }
    | expr MODULUS expr                                  { Binop($1, Mod, $3) }
    | expr CARET expr                                    { Binop($1, Caret, $3) }
    | expr AND expr                                      { Binop($1, And, $3) }
    | expr OR expr                                       { Binop($1, Or, $3) }
    | expr LTE expr                                      { Binop($1, Lte, $3) }
    | expr LT expr                                       { Binop($1, Lt, $3) }
    | expr GTE expr                                      { Binop($1, Gte, $3) }
    | expr GT expr                                       { Binop($1, Gt, $3) }
    | expr EQUALS expr                                   { Binop($1, Equals, $3) }
    | expr NEQ expr                                      { Binop($1, Neq, $3) }
    | expr CONS expr                                     { Binop($1, Cons, $3) }
    | LPAREN expr RPAREN                                 { $2 }
    | NOT expr                                           { Unop(Not, $2) }
    | MINUS expr %prec NEG                               { Unop(Neg, $2) }
    | THROW expr                                         { Throw($2) }
    /* Yes, we aren't proud of this either */
    | TRY expr CATCH LPAREN ID RPAREN expr %prec SINGLE  { TryCatch(Block([$2]), $5, Block([$7])) }
    | TRY expr CATCH LPAREN ID RPAREN block              { TryCatch(Block([$2]), $5, Block($7)) }
    | TRY block CATCH LPAREN ID RPAREN expr %prec DOUBLE { TryCatch(Block($2), $5, Block([$7])) }
    | TRY block CATCH LPAREN ID RPAREN block             { TryCatch(Block($2), $5, Block($7)) }
    | IF expr THEN expr ELSE expr %prec SINGLE           { If($2, Block([$4]), Block([$6])) }
    | IF expr THEN block ELSE expr %prec DOUBLE          { If($2, Block($4), Block([$6])) }
    | IF expr THEN expr ELSE block                       { If($2, Block([$4]), Block($6)) }
    | IF expr THEN block ELSE block                      { If($2, Block($4), Block($6)) }
    | ID LPAREN actuals_opt RPAREN                       { Call($1, $3) }
    | MODULE_LIT DOT expr                                { ModuleLit($1, $3)}

actuals_opt:
    | opts = separated_list(COMMA, expr)       { opts }

assigns:
    | VAL ID COLON primitive ASSIGN expr       { Assign($2, $4, $6) }
    | VAL ID ASSIGN expr                       { Assign($2, TAny, $4) }
