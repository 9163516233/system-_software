%{
#include<stdio.h>
int id=0,op=0;
%}

%%

[0-9]+	{id++; printf("%s is the identifier",yytext);}//****
[\+\*]	{op++; printf("%s is the operator",yytext);}
.	;
[\n]	return 0;

%%

main()
{
printf("Enter expression\n");
yylex();
printf("operator=%d \n identifier=%d",op,id);
if(op+1==id)
	printf(" valid");
else
	printf("invalid");
}
