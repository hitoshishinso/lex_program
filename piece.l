%{
#include "piece.h"
%}

%%
[ \t\n]				;
"#inlcude"			return DIRECTIVE;
"return"			return RETURN;
"<"[a-zA-Z][a-zA-z0-9]*".h>"	return FILEINCLUDED;
"int"				return INT;
[a-zA-Z][a-zA-Z0-9]*		return IDENTIFIER;
"("				return LEFTBRACKET;
")"				return RIGHTBRACKET;
"{"				return LEFTCURLYBRACKET;
"}"				return RIGHTCURLYBRACKET;
","				return COMMA;
"="				return EQUALS;
"+"				return PLUS;
"-"				return MINUS;
"*"				return MULTIPLY;
"^"				return POWER;
[1-9][0-9]*			return NUMBER;
;				return COLON;
"0"                             return 0;
.				printf("this is unsusual sufff !"); 
%%

int yywrap(void){
   return 1;
}
