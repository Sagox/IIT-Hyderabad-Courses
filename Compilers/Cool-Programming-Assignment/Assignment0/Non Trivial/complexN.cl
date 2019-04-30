class CL inherits IO{
	real: Int;
	imag: Int;
	init (r: Int, i: Int): CL{
		{
			real <- r;
			imag <- i;
			self;
		}
	};
	printNum(): CL {	
		{	
			out_int(real);
			out_string(" + i");
			out_int(imag);
			out_string("\n");
			self;
		}
	};

	real(): Int {real};
	
	imag(): Int {imag};

	add(b:CL): CL {
		{
			out_int(real + b.real());
			out_string(" + i");
			out_int(imag + b.imag());
			out_string("\n");
			self;
		}
	};
	mult(b:CL): CL {
		{
			out_int(real*b.real() - imag*b.imag());
			out_string(" + i");
			out_int(imag*b.real() + real*b.imag());
			out_string("\n");
			self;
		}
	};
};
class Main inherits IO {
	a: CL <- (new CL).init(5,8);
	b: CL <- (new CL).init(7,4);
  main() : Object {
  	{
  		a.add(b);
  		a.mult(b);
  	}
  } ;
} ;