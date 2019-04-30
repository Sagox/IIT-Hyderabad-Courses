class Main inherits IO { 
	getArea(a: Int, b: Int): Int {
		2*(a + b)
	};

  main() : Object {
  	{
	  	out_int(getArea(8,5));
	  	out_string("\n");
  	}
  } ;
} ;