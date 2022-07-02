# What is a synchronous function

A synchronous function is a function that completes all of its work on a single thread. The function can interact with other threads, but it can request 
that work happens elsewhere.

For example: 
When function A is called it will continue untill complete, then return a value. If while working function A calls function B, C, D, and E function A will complete all of its work and the the other function will complete their work in one by one. Each function will execute on the same thread, just not at the same time.

> When a function calls another function calls another function it is handled as a function stack. 
> The stack frame is when the system stores all of the data required for that new function. 

Each newley created stack gets pushed on top of the previous one. Once the function completes, the stack frame related to that function is popped off and destroyed. 

## Synchronous Functions & Blocking

If function A calls function B and needs to know what its return value is, function A has to wait for function B to finish before proceeding. This is problematic because now a whole thread has been blocked, and might take seconds to waiting for data to return. 

## Thread Explosion
When a queue blocks its thread, a new thread will be created to handle the work. Thread explosion is simply when there are more threads threads than there are CPU Cores 
