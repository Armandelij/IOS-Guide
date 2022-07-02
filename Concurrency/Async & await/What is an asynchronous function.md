# What is an asynchronous function

Asynchronous (async) functions are like regular function but have the ability to suspend themselves and their callers. This frees up the thread to do work 
preventing Thread Explosion.

Swifts functions are synchronous by default, however we can convert them to anync functions by adding the key word **async**.
Inside async functions we can call other asynchronous functions by using the **await** keyword.

The code below is a standard synchronous function named "randomD6()" that generateds and returnes a random number from numbers 1-6. 

``` swift
func randomD6() -> Int {
    Int.random(in: 1...6)
}

let result = randomD6()
print(result)
```

The code snippet below is almost identical to the code above, however keywords **async** and **await** are used. 

``` swift
func randomD6() async -> Int {
    Int.random(in: 1...6)
}

let result = await randomD6()
print(result)
```


## Async

Using the async keyword makes the function asynchronous. This asynchronous function returnes an Int, which means we cant use a SYNCHRONOUS function that returnes an Int. 
> See the async as a type, you cant use it in a place that expects a synchronous function. 

One thing to understand is that the marking the function with **async** keyword means the function MIGHT do asychronous work.  


## Await

Using **await** in our function means "runs this function asynchronously but wait for the return of the result prior to continuing. 

> Async function do not block when we call them with **await**. When we use await we are essentially marking suspension points where a function can suspend itself. 



