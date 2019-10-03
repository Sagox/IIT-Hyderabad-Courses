int myvar = 45;

struct myvar {
	int uvr;
};

int main() {
	int myvar = 0;
	int b;
	int a = 5;
	int *pa = &myvar;
	a = a*a;
	b = a*a;
	for(int myvar = 0;myvar<10;myvar++) {
		*pa = *pa+5;
		for(int myvar = 0;myvar < 10;myvar+=2)
		{
			myvar = myvar;
		}
		myvar = myvar + 1 -1;
	}
}