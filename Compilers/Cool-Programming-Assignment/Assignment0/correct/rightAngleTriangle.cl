class Main inherits IO { 
	check(a: Int, b: Int, c: Int): Bool {
		if a*a + b*b = c*c then true
		else if b*b + c*c = a*a then true
		else if c*c + a*a = b*b then true
		else false
		fi fi fi
	};

  main() : Object {
  	if  check(3, 4, 5) then
  	out_string("YES\n") else
  	out_string("NO\n") fi
  } ;
} ;