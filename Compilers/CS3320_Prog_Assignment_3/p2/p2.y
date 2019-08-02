%{
  #include <stdio.h>
  #include <stdlib.h> 
  #include <string.h>
  FILE *pFile = fopen("output.c", "w");
  // to store assignment statements
  char assgns[512];
  bool whileyet = false;
  int yyparse(void);
  int yylex(void);
  int yywrap();
  void yyerror(char *s);
  int numtabs = 0;
  // To remove spaces from number input
char* spaceRemoveNum(char *s) {
  char* c = (char *)malloc(sizeof(char)*9);
  int i = 0,j = 0;
  while(s[i]){
    if(s[i] == ' ' || s[i] == '\t')
      i++;
    else {
      c[j] = s[i];
      j++;
      i++;
    }
    if(j==8)
    break;
  }
  s = c;
  return s;
}
  // to print requires number of tabs
void printTabs(int n) {
  for(auto i = 0;i<n;i++) {
  fprintf(pFile, "\t");
  }
}

%}

%union {
    char *str;              /* Ptr to constant string (strings are malloc'd) */
};
%type <str> BINOPS INIT SELECT DELAY NUMBERLINE expression WHILE IF ELSE IDENTIFIER INT_LITERAL
%token INIT SELECT BINOPS DELAY NUMBERLINE WHILE IF ELSE IDENTIFIER EQUALS COLON INT INT_LITERAL

%%                   /* beginning of rules section */
  // Initial state
start: INIT {printTabs(numtabs); fprintf(pFile,"init();\n");} variables displays;
  // operations on variables
variables: assignment variables| declaration variables | %empty; 
  // declaration statements
declaration: IDENTIFIER COLON IDENTIFIER  {
                                            printTabs(numtabs);
                                            fprintf(pFile,"%s %s;\n", $3, $1);
                                          };
  // assignment statements
assignment: IDENTIFIER EQUALS IDENTIFIER  {                                            
                                            sprintf(assgns + strlen(assgns),"\t\t%s = %s", $1, $3);
                                            if(strcmp($3, "readInt") == 0)
                                              sprintf(assgns + strlen(assgns), "();\n");
                                            else
                                              sprintf(assgns + strlen(assgns), ";\n");
                                          }
          | IDENTIFIER EQUALS INT_LITERAL {
                                            sprintf(assgns + strlen(assgns),"\t\t%s = %s;\n", $1, $3);
                                          };
displays: display displays | display;

 // select statements
select: {
          if(!whileyet) {
            printTabs(numtabs);
            fprintf(pFile, "while(1)\n");
            printTabs(numtabs);
            fprintf(pFile, "{\n");
            fprintf(pFile, "%s", assgns);
            numtabs++;
          }
          whileyet = true;
        }
        SELECT COLON NUMBERLINE
        {
          printTabs(numtabs);
          fprintf(pFile,"select(%s);\n", spaceRemoveNum($4));
        };

  // The combination of select number input and delay also has optional if else.
display: select NUMBERLINE  {
                                  printTabs(numtabs);
                                  fprintf(pFile,"write((\"%s\"));\n", spaceRemoveNum($2));
                            } delay
      |  select if  {
                      printTabs(numtabs);
                      fprintf(pFile,"{\n");
                      numtabs++;
                    } NUMBERLINE  {
                                    printTabs(numtabs);
                                    fprintf(pFile,"write((\"%s\"));\n", spaceRemoveNum($4));
                                    numtabs--;
                                    printTabs(numtabs);
                                    fprintf(pFile,"}\n");
                                  } else  {
                                            printTabs(numtabs);
                                            fprintf(pFile,"else\n");
                                            printTabs(numtabs);
                                            fprintf(pFile,"{\n");
                                            numtabs++;
                                          } NUMBERLINE  {
                                                          printTabs(numtabs);
                                                          fprintf(pFile,"write((\"%s\"));\n", spaceRemoveNum($8));
                                                          numtabs--;
                                                          printTabs(numtabs);
                                                          fprintf(pFile,"}\n");
                                                          } delay;

  // if expression using binops
if: IF expression BINOPS expression COLON {
                                            printTabs(numtabs);
                                            fprintf(pFile,"if(%s%s%s)\n", $2, $3, $4);
                                          };
else: ELSE COLON  {
                    fprintf(pFile,"\n");
                  };
  // IDENTIFIER or number
expression: NUMBERLINE  {
                          $$ = spaceRemoveNum($1);
                        }
                        | IDENTIFIER  {
                                        $$ = $1;
                                      };
delay: DELAY COLON NUMBERLINE {
                                printTabs(numtabs);
                                fprintf(pFile,"delay(%s);\n", spaceRemoveNum($3));
                              };
%%

int main()
{
  fprintf(pFile, "#include<stdio.h>\n#include<stdlib.h>\n#include<seven_segment.h>\n\nint main()\n{\n");
  numtabs++;
  yyparse();
  numtabs--;
  printTabs(numtabs);
  fprintf(pFile,"}\n");
  numtabs--;
  printTabs(numtabs);
  fprintf(pFile, "}\n");
  return 0;
}

void yyerror(char *s)
{
fprintf(stderr, "%s\n",s);
}