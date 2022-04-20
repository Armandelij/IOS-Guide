# While Loops
While loops will repeat the execution of a code block until the condition evaluates to false. If the initial condition of the statemnt is false, it will not execute.  

## Example
``` swift 
var i = 1 

while i < 10 { 
    print(i)
    i += 1
}
```
> The i variable is conventionaly used regarding loops in general, it is used to represent the index within loops. 

In English, the code above means "while i is less than 10 print i then increment it +1". 
The code within the parenthese 
``` swift
 { 
    print(i)
    i += 1
}
```
will continue to execute until the while statement
``` swift
while i < 10
```
evaluates to false. It will evaluate to false once i is not less than 10. 

# Repeat While Loops
Repeat while loops will execute at least once before evaluting the condition

## Example
``` swift
var i = 1 

repeat {
    print(i)
    i += 1
} while i < 10 
```
The code above will execute the code block (code in curley braces) once 
``` swift

{
    print(i)
    i += 1
}
``` 
Before evaluating the statement
``` swift
} while i < 10 
```
Again, once the statement evaluates to false, the code in the curley braces will not execute. In this case once i is not less than 10 the code will not execute. 

> The key difference between these two loops is that the while loop checks the condition before it is executed and and the repeat while loop will execute prior to checking the condition. 
