%{
  #include<stdio.h>
  #include <string.h>
  int yyparse(void);
  int yylex(void);
  int yywrap();
  void yyerror(char *s);
  // initial board
  char board[9][9] = 
  {
    {' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'},
    {'1', 'R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R'},
    {'2', 'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'},
    {'3', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
    {'4', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
    {'5', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
    {'6', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
    {'7', 'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'},
    {'8', 'R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R'}
  };
  // different manipulations for different types of moves
void makeMoive(char* a, char choice) {
  char *b;
  if(choice == 'c')
    b = strchr(a, 'x');
  else
    b = strchr(a, '-');
  int initialRow = *(b - 1) - '0',
  initialColoumn = *(b - 2) - 'a' + 1,
  finalRow = *(b + 2) - '0',
  finalColoumn = *(b + 1) - 'a' + 1;
  switch(choice){
    case 'n': {
      char tmp = board[initialRow][initialColoumn];
      board[initialRow][initialColoumn] = board[finalRow][finalColoumn];
      board[finalRow][finalColoumn] = tmp;
      break;
    }
    case 'c': {
      board[finalRow][finalColoumn] = board[initialRow][initialColoumn];
      board[initialRow][initialColoumn] = ' ';
      break;
    }
    case 'p': {
      board[initialRow][initialColoumn] = ' ';
      board[finalRow][finalColoumn] = *(b + 4);
      break;
    }
  }
}
  // print the final matrix
void printTheMatrix() {
  int i, j;
  for(i=0;i<9;i++) {
    for(j=0;j<9;j++) {
      printf("%c\t", board[i][j]);
    }
    printf("\n\n");
  }
}

%}

%union {
    char *str;
};
%type <str> NMOVE CMOVE PMOVE
%token NMOVE CMOVE PMOVE

%%
moves: move moves | move;
move: normal_move | capture_move | promotion_move;
  // different types of moves
capture_move: CMOVE {makeMoive($1, 'c');};
normal_move: NMOVE {makeMoive($1, 'n');};
promotion_move: PMOVE {makeMoive($1, 'p');};

%%
int main()
{
 yyparse();
 printTheMatrix();
 return 0;
}

void yyerror(char *s)
{
  fprintf(stderr, "%s\n",s);
}