#include <stdio.h>
#include "number.h"
extern int yylex();

int main(void){
   int token; token = yylex();
   while(token){
     printf("%d\n", token);
     token=yylex();
   }
   return 0;
}

