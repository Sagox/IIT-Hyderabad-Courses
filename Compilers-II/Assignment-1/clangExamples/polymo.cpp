class ca {
public:
	static int foo(int x)
	{
		return x+5;
	}
};
class cb {
public:
        static int foo(int x)
        {
                return x+5;
        }
};

int main() {

	return ca::foo(4) + cb::foo(5);
}
