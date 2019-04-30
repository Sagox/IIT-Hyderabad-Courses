class Main inherits IO { 
	-- unescaped new line not allowed in string literal
  a: String <- "Hello,
  World";
  main() : Object { 
  	out_string(a)
  } ; 
} ; 
