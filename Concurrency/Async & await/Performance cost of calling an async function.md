# Performance cost of calling an async function

When we mark a function using the await keyword we are acknowledging a potential suspension point within the code, same for all of the functions callers.
This has a performance cost, just because we mark a function using the await keyword does not mean the compiler will suspend the function, it means there
is a POSSIBILITY of suspension. 

> Swift has two different calling conventions. The sync calling function is more efficient and the async function calling convention is less efficiant.

The async calling convention is less efficient because the coompiler does not know if the function will be suspended so it uses this calling convention
instead. 

However, what happens at runtime depends on whether the call suspends or not:

- if suspension does occure swift will suspend all the nessesary function and their callers, this does come a performance cost. But the performace cost paid
up front will be maid up in the performace gained from using async/await.

- If the suspension does not happen the function will continue to run with same efficiency and timing as the synch function. 
