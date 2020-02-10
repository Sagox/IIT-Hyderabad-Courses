#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main() {
	// char buf[6];
	// int b;
	// FILE *fp = fopen("test.txt", "r"), *fpw = fopen("testw.txt", "w");
	// while(b = fgets(buf, sizeof(buf), fp)>0) {
	// 	printf("%s", buf);
	// 	fputs(buf, fpw);
	// 	memset(buf, 0, 6);
	// }
	// fclose(fpw);
	for(int i=0;i<1001;i++) {
		printf("%d\n", (int)log10(i) + 1);
	}
}