The following is the explaination of how I implemented my stack:
1) I used a string to as my stack.
2) To store a number on the stack I store it as #int# where # is the delimiter.
This makes it possible to distinguish two adjacent integers on the stack. However,
the integers are not printed when the display function is called.
3) To add the integers, both the integers are pulled out of the stack, added and then
the sum is pushed back.
4) The swap function also works similarly.
5) I have used the class mentioned in the assignment to convert between integers and strings.
6) The $ symbol is used as the bottom symbol of the stack, it is pushed onto the stack by default.
