The following is what I have done to implement the required solution.

Analysis passes used are loop info and alias analysis.

My program does not handle code in non-SSA form. Also, alias analysis would
not work after mem2reg so I am not sure if SSA form can be handled.

I will use runOnFunction to explain the flow of the program.

1) First I print out all the basic info. It is just boilerplate and does not
affect the flow too much. Also some of the information is hardcoded and not 
being taken from function.

2) The next step is to get the value of globalScope which is used later on when
matching parent scopes.

3) Then I loop over all the instructions to filter out the DbgDeclareInst calls.
From here I can get all the variable declarations. These are further used to get
the DIVariable nodes from which I get the name of the source variable and match it
with the given name.

4) I maintain a struct scopeInfo for every variable declaration which matches the above
name. This has the entire data about this instance of the variable.

5) Then I iterate over all the instructions again and check if the scope of any instruction
is either a child of or the same as another scope from one of our scopeInfos, if it is true
we can increment the range of the scope. (Only the first time a match is encountered, we stop
traversing to parents after that)

6) Once again we iterate over all the instructions this time we do alias analysis with the
variables we already have, if there is a match we store the line number in the respective struct.

7) We also iterate over all the operands of every instruction to check for uses of any instance of
the variables from scopeInfos. If we do get a match we then check the type of use (read or write).
Whether it is read or write depends on the arg position which has been handled.

8) The final part of the assignment includes how to update reads and writes for loop. For this we use
the function updateRWVals, this is a recursive function which goes to every loop and find its max value
and step value to figure out the trip count then recusively goes to all children loops and mmultiplies their
trip count with parent trip count. We iterate through all the instructions of the loops and if we find a
use of one of our variable instances we increment the read/write by the trip count minus 1.

9) We get the step and bound values by finding the add and branch instructions from getLoopLatch and getHeader.
This would only work when there are in this form. i.e. for loops of the form for(i=0;i<n;i+=k) for other types
we would get a stack dump.

10) All in all this assignment seems to be difficult to implement perfectly but was a great exercise in
exploring llvm.
