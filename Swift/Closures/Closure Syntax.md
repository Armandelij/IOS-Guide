# Closure Syntax

There are multiple syntax variations you can use to create a closure. Lets take a look at some below.

``` swift
typealias Operate = (Int, Int) -> Int



let longClosure =  { (a: Int, b: Int) -> Int in
    a * b
} // this is a closure in its long form

let noParameterTypes: Operate =  { (a, b) -> Int in
    a * b
} // since we are specifying the type using the Operate typealias, the types in the parameter list can be inferred 


let noReturnType: Operate =  { (a, b) in
    a * b
} // Our typealias Operate spcifies the return type so we can leave the return type out of this closure


let shortClosure: Operate = {$0 * $1}
// Each parameter is given a number starting with 0 and we can referr to the parameter by using a "$" and number of the parameter. 
```

You can call all of these closures and with the same arguemnts and the results should be the same. 

## Closure that takes nothing and returns nothing

``` swift
let voidClosure: () -> Void // If the type of closure is clear then the short syntax version is ideal. 

```

## Trailing Closure Syntax

When you call a function that takes the closure as the last parameter you can use trailing closure syntax.

``` swift

func printResult(_ a: Int, _ b: Int, _ operate: Operate) {
    print(operate(a, b))
}

printResult(10, 3) {$0 * $1 + 10} // the parentheses close after the second argument, then the closuers opening curley brace
    
```

