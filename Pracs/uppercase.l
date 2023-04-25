%{
#include<stdio.h>
int upper=0;
int lower=0;
%}

%%
[A-Z] {printf("Uppercase\t\n");upper++;}
[a-z] {printf("Lowercase\t\n");lower++;}
\n	{printf("Upper=%d and Lower=%d",upper,lower);}
%%

int main()
{
printf("Enter a string\n");
yylex();
}
int yywrap()
{
return 1;
}