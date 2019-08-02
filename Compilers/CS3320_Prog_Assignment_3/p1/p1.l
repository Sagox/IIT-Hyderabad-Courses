%{ 
#include<stdio.h>
#include "y.tab.h"
%} 

PIECE [KQRBN]
COLOUMN [a-h]
ROW [1-8]
DIGIT [0-9]
LOCATION {COLOUMN}{ROW}
NORMAL_MOVE {LOCATION}-{LOCATION}
CAPTURE_MOVE {LOCATION}x{LOCATION}
PROMOTION_MOVE {LOCATION}-{LOCATION}={PIECE}
/* Rules Section*/
 // different types of moves
%%
{DIGIT}"."					{}
{PIECE}?{NORMAL_MOVE}		{yylval.str=strdup(yytext); return(NMOVE);}
{PIECE}?{CAPTURE_MOVE}		{yylval.str=strdup(yytext); return(CMOVE);}
{PROMOTION_MOVE}			{yylval.str=strdup(yytext); return(PMOVE);}
.|\n		{}
%%

int yywrap()
{
  return(1);
}