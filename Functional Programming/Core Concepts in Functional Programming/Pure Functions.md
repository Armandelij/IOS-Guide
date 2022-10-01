# Pure Functions

Any function or method in functional programming is a pure function

##Example

``` swift
var a = 2
var b = 4

func add(x, y) {
  return x + y
  
  }
```

In the code above notice how the **add()** function doesnt access variables a & b. What it does is it takes its own input parameters **x & y,** performs the operation and returnes it back to the caller. 
