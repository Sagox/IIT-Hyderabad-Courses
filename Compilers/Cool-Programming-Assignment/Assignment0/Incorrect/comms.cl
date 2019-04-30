class Main inherits IO { 
  a: Int <- 457;
  b: Int <- 474;
  main() : Object {
  	-- instead of -(-b) --b makes it a comment
  	out_int(a --b)
  } ; 
} ; 
