%{
#include<stdio.h>
int vowel=0;
int con=0;
%}

%%
[aeiouAEIOU] {printf("Vowel\t\n");vowel++;}
[a-zA-Z] {printf("Consonant\t\n");con++;}
\n	{printf("Vowels=%d and Consonants=%d",vowel,con);}
%%

int yywrap()
{ return 1; }

int main()
{ printf("Enter the string:\n"); yylex(); return 0;}
