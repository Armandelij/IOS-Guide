# Functions & Named Types

Functions are data types, like Ints and Strings. This means that they can be assigned to contants and variables.

## Example

``` swift
func add(number1: Int, number2: Int) -> Int {
    number1 + number2
}

// here we are storing the "add" function in a variable.
var function = add

function (5, 5) // 10


```

High Order Functions: When a function is used as a parameter in another function

``` swift
func printResult(_ operate: (Int, Int) -> Int, _ a: Int, _ b: Int) { // a functions type is determined by its signature meaning the types in the parameter and its return type.

    let result = operate(a, b)
    print(result)
}

printResult(add, 9, 3)
printResult(*, 4, 2) // we can use the multiplication symbol bc the type signature (*) takes 2 Ints and returns an Int

```

We also can define a typealias to replace the type signature in a function.

``` swift

 typealias Operate = (Int, Int) -> Int

func printResult(_ operate: Operate , _ a: Int, _ b: Int) { // a functions type is determined by its signature meaning the types in the parameter and its return type.
    
    let result = operate(a, b)
    print(result)
}

printResult(add, 1, 1) // 2

```






