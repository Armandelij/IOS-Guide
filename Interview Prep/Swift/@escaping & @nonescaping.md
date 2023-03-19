# @escaping & @nonescaping

## @escaping

If a closure is passed as an argument to a function and it is invoked after the Funtion returns, the closure is escaping. @escaping is usually used
or required for network calls. You want your completion handler to live after the return statement.

## nonescaping

In Swift 1 and Swift 2 by default all closure parameters were escaoping by default. in Swift 3 all closure prameters are nonescaping by default, if 
you want to escape the parameter you have to use the @escaping with the closure parameter. 

## Benefits 
If the compiler knows the closure is nonescaping it will take care of memory allocation. This will provide a performance boost. 
