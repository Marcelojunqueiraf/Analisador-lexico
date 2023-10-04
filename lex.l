%{

#include <stdio.h>

%}

id    [a-zA-Z][a-zA-Z0-9_]*\n

digito  [0-9]

numero [-+]?{digito}+(\.{digito}+)?\n

outro    .*\n

%%

{id}        {printf("Identificador\n");}

{numero}    {printf("Numero\n");}

{outro}        {printf(":-(\n");}

%%

/* recomendavel declarar sempre

   funcao yywrap() */

int yywrap ();



/* programa principal */

int main() {

  yylex(); /* scanner gerado por Flex */
  return 0;
}



int yywrap() {

 return 1;

}