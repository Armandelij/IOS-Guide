## While Loops
While loops will repeat the execution of a code block until the condition evaluates to false. 

# Example
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
