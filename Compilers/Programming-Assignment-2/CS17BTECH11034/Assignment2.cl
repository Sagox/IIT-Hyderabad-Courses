-- class for string to integer and integer to string conversions
class A2I {

  c2i(char : String) : Int {
		if char = "0" then 0 else
		if char = "1" then 1 else
		if char = "2" then 2 else
	  if char = "3" then 3 else
	  if char = "4" then 4 else
	  if char = "5" then 5 else
	  if char = "6" then 6 else
	  if char = "7" then 7 else
	  if char = "8" then 8 else
	  if char = "9" then 9 else
	  { abort(); 0; }  -- the 0 is needed to satisfy the typchecker
	  fi fi fi fi fi fi fi fi fi fi
  };

 	i2c(i : Int) : String {
		if i = 0 then "0" else
		if i = 1 then "1" else
		if i = 2 then "2" else
		if i = 3 then "3" else
		if i = 4 then "4" else
		if i = 5 then "5" else
		if i = 6 then "6" else
		if i = 7 then "7" else
		if i = 8 then "8" else
		if i = 9 then "9" else
		{ abort(); ""; }  -- the "" is needed to satisfy the typchecker
	        fi fi fi fi fi fi fi fi fi fi
	};

   a2i(s : String) : Int {
      if s.length() = 0 then 0 else
			if s.substr(0,1) = "-" then ~a2i_aux(s.substr(1,s.length()-1)) else
      if s.substr(0,1) = "+" then a2i_aux(s.substr(1,s.length()-1)) else
         a2i_aux(s)
      fi fi fi
   };

   a2i_aux(s : String) : Int {
			(let int : Int <- 0 in	
         {	
           (let j : Int <- s.length() in
          		(let i : Int <- 0 in
	    					while i < j loop
								{
								    int <- int * 10 + c2i(s.substr(i,1));
								    i <- i + 1;
								}
					    	pool
	  					)
     				);
          int;
    		}
      )
   };

    i2a(i : Int) : String {
			if i = 0 then "0" else 
		        if 0 < i then i2a_aux(i) else
		          "-".concat(i2a_aux(i * ~1)) 
		        fi fi
    };
			
    i2a_aux(i : Int) : String {
        if i = 0 then "" else 
		    (let next : Int <- i / 10 in
					i2a_aux(next).concat(i2c(i - next * 10))
		    )
	      fi
    };
};
-- class to implement the stack and the commands
class StackCommands inherits IO{
	conclass: A2I <- new A2I;
	stack: String <- "$";
	-- function to push ints onto the stack along with delimitters
	pushInt(s:String): Int {
		{
			stack <- stack.concat("#");
			stack <- stack.concat(s);
			stack <- stack.concat("#");
			0;
		}
	};
	-- function to push chars on the stack (+,s)
	pushChar(s:String): Int {
		{
			stack <- stack.concat(s);
			0;
		}
	};
	-- function to check the top or any other element of the stack
	top(ri: Int): String {
		stack.substr(stack.length() - 1 - ri, 1)
	};
	-- function to pop from the top of the stack
	pop(): String{
		let rc: String in {
			rc <- top(0);
			stack <- stack.substr(0, stack.length() - 1);
			rc;
		}
	};
	-- function to add the top two elements on the stack and then push the answer on the top of the stack
	add(): Int {
		pushInt(conclass.i2a(getInt() + getInt()))
	};
	-- function to swap the top two elements of the stack
	swap(): Int {
		let str1: String, str2: String, isInt1: Int <- 0, isInt2: Int <- 0 in {
			if top(0) = "#" 
			then {
				str1 <- conclass.i2a(getInt());
				isInt1 <- 1;
			}
		  else str1 <- pop()
		  fi;
			if top(0) = "#" 
			then {
				str2 <- conclass.i2a(getInt());
				isInt2 <- 1;
			}
		  else str2 <- pop()
		  fi;

		  if isInt1 = 1
		  then
		  pushInt(str1)
		  else
		  pushChar(str1)
		  fi;
		  if isInt2 = 1
		  then
		  pushInt(str2)
		  else
		  pushChar(str2)
		  fi;
			0;
		}
	};
	-- function to get the integer on top of the stack
	getInt(): Int {
		{
			if top(0) = "#" then pop() else out_string("The Number in the stack may not be an int.") fi;
				let ri:Int <- 0, ret: Int in 
				{
					(let j: Int <- 1 in 
						while 0 < j
						loop
						{
							if top(ri) = "#" then
							{
								j <- 0;
							}
							else ri <- ri + 1
							fi;
						}
						pool
					);
					ret <- conclass.a2i(stack.substr(stack.length() - ri, ri));
					(
						while 0 < ri + 1
						loop
						{
							pop();
							ri <- ri - 1;
						}
						pool
					);
					ret;
				};
		}
	};
	-- function to display the contents of the stack
	display(): Int {
		{
			let j: Int <- 0 in(
				while j < stack.length() - 1
				loop
				{
					if top(j) = "#" then 0 else
					{
						out_string(top(j));
						out_string("\n");
					}
					fi;
					j <- j + 1;
				}
				pool
			);
			1;
		}
	};
	-- function to run the evaluations on the stack
	eval(): Int {
		{
			if top(0) = "+" then
			{
				pop();
				add();
				0;
			}
			else
			{
				if top(0) = "s" then
				{
					pop();
					swap();
					0;
				}
				else
				{
					0;
				}
				fi;
			}
			fi;
		}
	};
};

class Main inherits IO {
	s: StackCommands <- new StackCommands;
  main() : Object {
  	{
  		-- loop to take in queries continously
  		let sig: Int, inpc:String in {
  			while sig = 0 loop
  			{
  				out_string(">");
  				inpc <- in_string();
  				if inpc.substr(inpc.length()-1,1) = "e" then s.eval()
  				else {
  					if inpc.substr(inpc.length()-1,1) = "d" then s.display()
  					else {
  						if inpc.substr(inpc.length()-1,1) = "x" then sig <- 1
  						else {
  							if inpc.substr(inpc.length()-1,1) = "+" then s.pushChar("+")
  							else {
  								if inpc.substr(inpc.length()-1,1) = "s" then s.pushChar("s")
  								else {
  									s.pushInt(inpc);
  								}
  								fi;
  							}
  							fi;
  						}
  						fi;
  					}
  					fi;
  				}
  				fi;
  			}
  			pool;
  		};
  	}
  } ;
} ;	