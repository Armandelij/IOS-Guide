# Functions

Functions let you define a reusable block of code that performs certain task.
> Functions inside of classes or structs are called methods. Whenever a function belongs to a named type it is a method

## Example
``` swift
func printWassup() {
    print("Wassup World")
}
```

What comes before the first curley brace is knonw as the functino declaration and what is inside the curley braces is known as the code block, where the code goes.

To call a function you must specify the function name followed by paraentheses (). The code inside the cueley braces above will execute. 

``` swift
printWassup()
```
## Parameterize Your Functions

This is when the function behaves different depending upon the information passed throught via its parameters.

``` swift
var a: Int
var b: Int

func doMath(a: Int, b: Int) {
    print(a + b)
}

doMath(a: 5, b: 5)
```

When you call a function that uses parameters, you have to provide arguments for those parameters.
The parameters are what is inside the parentheses(parameter list) in the declaration of the function. If there are more than one paremeters they must be sperated by commas .
You must specify the name of the parameter as well as the type associated with the name

``` swift
func doMath(a: Int, b: Int) {
    print(a + b)
}
```
When you call the functinon you must provide the name of the parameter followed by the argument. Multiple arguments must be seperated by commas 

``` swift
doMath(a: 5, b: 5)
```
