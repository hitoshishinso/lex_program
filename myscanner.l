%{
#include "myscanner.h"
%}

%%
:                   return COLON;
"db_type"           return TYPE;
"db_name"           return NAME;
"db_table_prefix"   return TABLE_PREFIX;
"db_port"           return PORT;

[a-zA-Z][a-zA-z]*   return IDENTIFIER;
[1-9][0-9]*         return INTEGER; 
[ \t\n]             ;
.                   printf("this is a error !\n");

%%

int yywrap(void){
    return 1;
}

