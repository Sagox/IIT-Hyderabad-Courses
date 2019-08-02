%{ 
#include<stdio.h>
#include "y.tab.h"
%} 

/* Rules Section*/
%x WHILEL
COMMENT		#.*\n
DIGIT 		[0-9]
DIGITS		{DIGIT}{DIGIT}*
DELAY 		(?i:Delay)
SELECT 		(?i:Select)
	// combination of numbers and or spaces.
TABANDNUM	(\t?{DIGIT}\t?)*
SPACEANDNUM ([ ]?{DIGIT}[ ]?)*
NUM_LINE	{TABANDNUM}|{SPACEANDNUM}
WHITESPACE	[\t ]
LETTER		[A-Za-z]
CHAR        [a-zA-Z_0-9]
IDENTIFIER  {LETTER}{CHAR}*
BINOPS 		"=="|"<"|">"|"!="|"<="|">="
%%
	// tokens outside the while loop
{COMMENT}		{}
(?i:INIT)	{
				yylval.str=strdup(yytext);
				return (INIT);
			}
{WHITESPACE}								{};
{DIGITS}									{
												yylval.str=strdup(yytext);
												return(INT_LITERAL);
											}									

":"											{
												return (COLON);
											}
{SELECT}									{
												BEGIN(WHILEL);
												return (SELECT);
											}
{IDENTIFIER}				 				{
												yylval.str=strdup(yytext);
												return (IDENTIFIER);												
											}
"="											{
												return(EQUALS);
											}
	/* tokens for inside the while loop */
<WHILEL>":"											{
												return (COLON);
											}
<WHILEL>{SELECT}							{
												yylval.str=strdup(yytext);
												return (SELECT);
											}
<WHILEL>(?i:if)								{
												yylval.str=strdup(yytext);
												return (IF);												
											}
<WHILEL>(?i:else)								{
												yylval.str=strdup(yytext);
												return (ELSE);												
											}
<WHILEL>{DELAY}								{
												yylval.str=strdup(yytext);
												return (DELAY);
											}
<WHILEL>{IDENTIFIER}				 		{
												yylval.str=strdup(yytext);
												return (IDENTIFIER);												
											}								
<WHILEL>{BINOPS}							{
												yylval.str=strdup(yytext);
												return (BINOPS);
											}
<WHILEL>{COMMENT}							{}
<WHILEL>{NUM_LINE}							{
												yylval.str=strdup(yytext);
												return(NUMBERLINE);
											}
<WHILEL>.|\n 								{}
.|\n										{}

%%

int yywrap(){
	return 1;
}