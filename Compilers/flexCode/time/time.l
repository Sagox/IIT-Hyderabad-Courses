%{
#include<stdio.h>
#include "y.tab.h"
%}

numbers [0-9]
letters [a-zA-Z]
word {letters}+
colon ":"
space [ \t]
merediem "AM"|"PM"|"am"|"pm"|"Am"|"Pm"
mtime {numbers}{4}
ctime {numbers}{2}{colon}{numbers}{2}{space}?{merediem}?
limiters "from"|"till"|"to"|"until"
time {mtime}|{ctime}
 //
DAY Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday
DIGIT [0-9]
hiph [-]
sl [a-z]
cl [A-Z]
stringl {sl}|{cl}|{DIGIT}
string {stringl}*
D2 {DIGIT}{DIGIT}
D4 {D2}{D2}
DATE {D2}{space}{hiph}{space}{D2}{space}{hiph}{space}{D4}
%x DAY
 //
%%
{DATE}{space}{DAY}\n  {BEGIN(DAY); printf("%s", yytext);}
.|\n	       {}
<DAY>{time} {yylval.str=strdup(yytext); return(TIME);}
<DAY>{limiters} {yylval.str=strdup(yytext); return(LIMITER);}
<DAY>{word} {yylval.str=(yytext); return(WORD);}
<DAY>\n {return (LE);}
<DAY>-*\n		{return (END);}
<DAY>. {}
%%

int yywrap(){}