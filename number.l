%{
#include "number.h"
%}

%%
[1-9][0-9]*           return NUMBER;
[0-9]"."[0-9]         printf("decimal");
[a-zA-Z][a-zA-Z]*     printf("identifier ");
:                     printf("UFO found !\n");
%%

int yywrap(void){
     return 1;
}
