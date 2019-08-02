%{
#include<string.h>
#include<string>
std::string currentContent = "";
int yyparse(void);
int yylex(void);
int yywrap();
void yyerror(char *s);
%}

%union {
	char *str;
};

%type <str> TIME LIMITER WORD content
%token TIME LIMITER WORD LE END

%%
task: tnl LE {currentContent = "";} task | END {return 0;};
tnl: content LIMITER TIME content LIMITER TIME content {printf("%s %s %s%s %s\n", $2, $3, currentContent.c_str(), $5, $6);};
content: WORD {currentContent+= $1;currentContent += " ";} content | %empty {currentContent+= "";};
%%

int main()
{
	yyparse();
	return 0;
}
void yyerror(char *s)
{
  fprintf(stderr, "%s\n",s);
}