me "Sagar"|"Sagox"
%{
#include <string.h>

char *parseThis(char *s)
{	
	while(strchr(s, '\\'))
		strcpy(strchr(s, '\\'), strchr(s, '\\')+1);
	return s;
}
%}

%%
[\t\f\r\v] {printf("Fuck you emptiness\n");}
\".*\" {printf("%s", parseThis(yytext));} 
\n {printf("Fuck you newline\n");}
%%

int yywrap(){}
int main()
{
	yylex();
	return 0;
}