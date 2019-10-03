#include <stdio.h>

int main() {
	int var = 1;
	int *avar = &var;
	{
		int var = 5;
	}
	*avar = 7;
	return 0;
}

void func() {
	int myvar = 5;
	for(myvar=0;myvar<60;myvar++)
		myvar = myvar+1-1;
}
