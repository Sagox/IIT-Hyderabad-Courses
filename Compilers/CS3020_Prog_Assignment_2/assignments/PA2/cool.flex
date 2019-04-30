/*
 *  The scanner definition for COOL.
 */

/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially
 */
%{
#include <cool-parse.h>
#include <stringtab.h>
#include <utilities.h>

/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
  if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
    YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;
extern int verbose_flag;

extern YYSTYPE cool_yylval;

/*
 *  Add Your own definitions here
 */

bool checkLen();
int StrErr( char* x);
int nestCount = 0;
bool nullError = false;
bool unescapedNewline = false;

%}

/*
 * Define names for regular expressions here.
 */

 /*Exclusive start conditions*/
%x COMMENT
%x STRING
 /*Definitions*/
DIGIT                         [0-9]
INT_LITERAL                   {DIGIT}+
CHAR                          [a-zA-Z_]
LOWERCASE_LETTER              [a-z]
UPPERCASE_LETTER              [A-Z]
SINGLE_LINE_COMMENT           --
MULTILINE_COMMENT_BEGIN       "(*"
MULTILINE_COMMENT_END         "*)"
 /*All the operators in cool*/
OPERATORS                     []
ARITHMETIC_OPERATORS          [+/*-]
PARANTHESES                   [()]
BRACES                        [{}]
OTHER_OPERATORS               [<@~=.,:;]
WHITESPACE                    [ \t\f\r\v]

%%
\n                            {curr_lineno++;}
 /*Igonre the whitespace*/

{WHITESPACE}                  {}

 /* Integers */

{INT_LITERAL}                 {
                                cool_yylval.symbol = inttable.add_string(yytext);
                                return INT_CONST;
                              }
                              

 /* Single line comments */

{SINGLE_LINE_COMMENT}.*            {}

 /*  Nested comments */

 /* Enter the start condition*/
{MULTILINE_COMMENT_BEGIN}             { 
                                        BEGIN(COMMENT);
                                        nestCount++;
                                      }
 /* Increase the depth on (* */
<COMMENT>{MULTILINE_COMMENT_BEGIN}    nestCount++;
 /* Decrease the depth on *) */
<COMMENT>{MULTILINE_COMMENT_END}      {
                                        nestCount--;
                                        if (nestCount == 0) BEGIN(INITIAL);
                                      }

 /* EOF is not allowed inside comments */
<COMMENT><<EOF>>                      {
                                        BEGIN(INITIAL);
                                        cool_yylval.error_msg = "EOF in comment";
                                        return ERROR;
                                      }
<COMMENT>.                            {}
 /* Increase line no. in the comments */
<COMMENT>\n                           {curr_lineno++;}

{MULTILINE_COMMENT_END}               {
                                        cool_yylval.error_msg = "Unmatched *)";
                                        return (ERROR);
                                      }

 /*
  *  The multiple-character operators.
  */
"=>"        { return DARROW; }
"=<"        { return LE; }
"<-"        { return ASSIGN; }
 
 /*
  * Keywords are case-insensitive except for the values true and false,
  * which must begin with a lower-case letter.
  */

(t[r|R][u|U][e|E])|(f[a|A][l|L][s|S][e|E])      { yylval.symbol = inttable.add_string(yytext); return (BOOL_CONST); }
(?i:fi)                                         return (FI);
(?i:if)                                         return (IF);
(?i:esac)                                       return (ESAC);
(?i:while)                                      return (WHILE);
(?i:case)                                       return (CASE);
(?i:pool)                                       return (POOL);
(?i:then)                                       return (THEN);
(?i:new)                                        return (NEW);
(?i:not)                                        return (NOT);
(?i:of)                                         return (OF);
(?i:class)                                      return (CLASS);
(?i:else)                                       return (ELSE);
(?i:isvoid)                                     return (ISVOID);
(?i:let)                                        return (LET);
(?i:loop)                                       return (LOOP);
(?i:in)                                         return (IN);
(?i:inherits)                                   return (INHERITS);




 /* Matching the operators in cool*/
{ARITHMETIC_OPERATORS}|{PARANTHESES}|{BRACES}|{OTHER_OPERATORS}                          {return yytext[0];}

 /* Identifiers are simple strings beginning with a lowercase letter */
{LOWERCASE_LETTER}{CHAR}*                       {
                                                  yylval.symbol = idtable.add_string(yytext);
                                                  return (OBJECTID);
 /* Types are simple strings beginning with an uppercase letter */                                                }
{UPPERCASE_LETTER}{CHAR}*                       {
                                                  yylval.symbol = idtable.add_string(yytext);
                                                  return (TYPEID);
                                                }

 /*
  *  String constants (C syntax)
  *  Escape sequence \c is accepted for all characters c. Except for 
  *  \n \t \b \f, the result is c.
  *
  */

 /* Begin string */
\"                            {
                                  BEGIN(STRING);
                                  nullError = false;
                                  unescapedNewline = false;
                                  string_buf_ptr = string_buf;
                              }

 /* String completed, also checks for various errors in the string and returns them if present */
<STRING>\"                    {
                                  BEGIN(INITIAL);
                                  if(nullError) return StrErr("String contains null character");
                                  if (checkLen()) return StrErr("String constant too long");
                                  *string_buf_ptr = '\0';
                                  cool_yylval.symbol = stringtable.add_string(string_buf);
                                  string_buf_ptr = 0;
                                  return STR_CONST;
                              }
 /* NO EOF in the string */
<STRING><<EOF>>               {
                                  BEGIN(INITIAL);
                                  cool_yylval.error_msg = "EOF in string constant";
                                  return ERROR;
                              }
 /*An escaped new line character*/
<STRING>\\\n                  { 
                                curr_lineno++;
                                if (!checkLen()) {
                                *string_buf_ptr = '\n';
                                string_buf_ptr++;
                                }
                              }
 /*The unescaped new line character*/
<STRING>\n                    {
                                  BEGIN(INITIAL);
                                  curr_lineno++;
                                  return StrErr("Unterminated string constant");
                              }
 /*The null character*/
<STRING>\0                    {
                                  cool_yylval.error_msg = "Null Character encountered in string";
                                  nullError = true;
                              }
 /*The unescaped character*/
<STRING>\\n                   {
                                if (!checkLen()) {
                                  *string_buf_ptr = '\n';
                                  string_buf_ptr++;
                              }
                              }
<STRING>\\t                   {
                                if (!checkLen()) {
                                  *string_buf_ptr = '\t';
                                  string_buf_ptr++;
                                }
                              }
<STRING>\\b                   {
                                if (!checkLen()) {
                                  *string_buf_ptr = '\b';
                                  string_buf_ptr++;
                                }
                              }
<STRING>\\f                   {
                                if (!checkLen()) {
                                  *string_buf_ptr = '\f';
                                  string_buf_ptr++;
                                }
                              }
 /*Catching the escaped null character*/
<STRING>\\\0                  {
                                  cool_yylval.error_msg = "Null Character encountered in string";
                                  nullError = true;
                              }
 /*Other escaped characters*/
<STRING>\\.                   {*string_buf_ptr++ = yytext[1];}
<STRING>.                     {
                                if (!checkLen()) {
                                  *string_buf_ptr++ = *yytext;
                                }
                              }
.                             { 
                                cool_yylval.error_msg = strdup(yytext);
                                return ERROR;
                              }

%%
 /*Function to check the len, if len is too long we stop storing new chars*/
bool checkLen () { 
    return (string_buf_ptr - string_buf) + 1 > MAX_STR_CONST; 
}

int StrErr(char* x) { 
    BEGIN(INITIAL);
    cool_yylval.error_msg = x;
    return ERROR;
}
