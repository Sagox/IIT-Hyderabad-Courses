class Main inherits IO { 
	getNum(a: Int, b: Int): Int {
			let an: Int <- 1 in {
				(let j: Int <- 0 in 
					while j < b
					loop
					{
						an <- an*a;
						j <- j+1;
					}
					pool

				);
				an;
			}
	};

  main() : Object {
  	{
	  	out_int(getNum(5,4));
	  	out_string("\n");
  	}
  } ;
} ;