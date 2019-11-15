#include <stdio.h>
int main() {
	int b = 0;
	for(int i=4;i<=984654;i*=19) {
		b+=i;
	}
	printf("%d\n", b);
	for(int i=-2;i>=-8745;i*=6) {
		b+=i;
	}
	printf("%d\n", b);
	for(int i=-78;i<=-1954545;i*=3) {
		b+=i;
	}
	printf("%d\n", b);

}
