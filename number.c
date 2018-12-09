#include <stdio.h>
#include "number.h"

extern int yylex();
extern int yylineno; 
extern char* yytext; 

int main(void){
   int token, vtoken; 
   token = yylex();
   while(token){
     printf("%d %d", token, yylineno);
     token = yylex(); 
   }
   return 0;
}
