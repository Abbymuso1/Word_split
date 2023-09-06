%{
#include <stdio.h>
%}
 
text    [a-zA-Z]+


%%
{text} {printf("%s\n", yytext);}
\n    {return 0;}
%%
 

int main(){

FILE *fp;
char filename[50];
printf("Enter the filename: \n");
scanf("%s",filename);
fp = fopen(filename,"r");
yyin = fp;
yylex();
return 0;

}

/***
This flex input file reads text from
the text file entered and displays the sentence 
as individual words split line by line.
***/