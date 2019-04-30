%{
int number_of_lines = 0;
%}
me "Sagar"|"Sagox"
%%
{me} {printf("Thats a %s!\n", yytext);}
.|\n {}
%%

int yywrap(){}
int main()
{
	yylex();
	return 0;
}