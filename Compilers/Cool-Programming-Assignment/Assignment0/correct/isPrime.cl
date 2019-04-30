class Main inherits IO { 
  a: Bool <- true;
	check(n: Int): Bool {
		{
			(let j : Int <- 2 in
			   while j <= n/2 
			   loop 
			     {
			       if a
			       then
			       	if j*(n/j) = n
			       	then
			       		a <- false
			       	else
			       	j <- j+1
			       	fi
			       else
			       0
			       fi;
			     }
			   pool
			);
			a;
		}

	};
  main() : Object { 
  	if  check(5) then
  	out_string("YES\n") else
  	out_string("NO\n") fi
  } ;
} ;