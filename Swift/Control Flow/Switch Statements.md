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

We can use switch staements inside of a function.
The function below takes an Int and returns a string. 

``` swift
func getDescription(for number: Int ) -> String {
    switch number {
    case 0:
        return "Zero"
    case 1...9:
        return "Numbers one through 9"
    case let negativeNumber where negativeNumber < 0: // value binding
        return "Negative"
    case _ where number > .max / 2: // using a where clause not binding to a new value
        return "Very Large!"
    default:
        return "No Description"
    }
}

getDescription(for: 0) // "Zero"

```
