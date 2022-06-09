# Switch Statements

The switch statement takes a value and compares it against multiple possible matching patterns. It then executes code based of the first
pattern the matches successfully.
> A switch statement can be an alternative solution to the "if statement" due to its ease at responding to multiple potential states.

The simplest form of a switch statement comapres a value against one or more values of the same type. 

## Example

``` swift
let firstCharInName: Character = "e"

switch firstCharInName {
case "a":
    print("apple")
case "e":
    print("First character in my name")
default:
    print("Some other character")

}

// Prints "First character in my name"

```

## Complex Example

