%option noyywrap
%{

#include "pc.tab.h"

%}

NUMBER  [0-9]+
PERMUTA [Pp]
COMBINA [Cc]

%%

{PERMUTA} {
           return(PERMUTA);
}

{COMBINA} {
           return(COMBINA);
}

"+"       {
           return(yytext[0]);
}

"-"       {
           return(yytext[0]);
}

{NUMBER}  {
           yylval = atoi(yytext);
           //printf("accept<%d>\n", yylval);
           return(NUMBER);
}

[ ]       {;}

%%