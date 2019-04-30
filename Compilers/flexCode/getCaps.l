%{
char* myName = "Sagar";
int number_of_lines = 0;
%}

name1 Sagar
name2 Sagox
%%
{name1}|{name2} {printf("Thats a %s!\n", yytext);}
Raghav {printf("Thats a Raghav!\n");}
[A-Z] {printf("%s That's a Capital!\n", yytext);}
\n {number_of_lines ++;}
. {}
%%

int yywrap(){}
int main()
{
	yylex();
	printf("%s\n", myName);
	return 0;
}