#include <stdio.h>
#include <stdlib.h>

int main()
{
	union myvar {
		int x;
		float y;
		char z;
	};

	myvar myvari;
	myvari.x = 5;

	printf("%d\n", myvari);
}