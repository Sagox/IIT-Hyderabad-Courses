class Person inherits IO{
	firstName: String;
	lastName: String;
	age: Int; 
	init (fn: String, ln: String, a:Int): Person{
		{
			firstName <- fn;
			lastName <- ln;
			age <- a;
			self;
		}
	};
	printInfo(): Person {	
		{	
			out_string(firstName);
			out_string(" ");
			out_string(lastName);
			out_string(" is ");
			out_int(age);
			out_string(" years old and studying in ");
			if age = 18 then out_string("1st ")
			else if age = 19 then out_string("2nd ")
			else if age = 20 then out_string("3rd ")
			else if age = 21 then out_string("4th ")
			else 0
			fi fi fi fi;
			out_string("year.\n");
			self;
		}
	};
};

class LazyPerson inherits Person {

	init1 (fn: String, ln: String, a:Int): LazyPerson{
		{
			firstName <- fn;
			lastName <- ln;
			age <- a;
			self;
		}
	};

	printtheInfo(): LazyPerson {
		{
			printInfo();
			out_string("He is also a lazy person!\n");
			self;
		}
	};
};

class Main inherits IO { 
  main() : Object {
  	{
  		(new LazyPerson).init1("Sagar", "Jain", 19).printtheInfo();
  	}
  } ;
} ;