%{
#include "ejercicio1.5.tab.h"
%}

%%
"+"       { return ADD; }
"-"       { return SUB; }
"*"       { return MUL; }
"/"       { return DIV; }
"|"       { return ABS; }
[0-9]+    { yylval = atoi(yytext); return NUMBER; }
\n        { return EOL; }
[ \t]     { /* ignorar espacios */ }
.         { fprintf(stderr, "Caracter no reconocido %c\n", *yytext); }
%%

int yywrap(void) {
    return 1;
}
