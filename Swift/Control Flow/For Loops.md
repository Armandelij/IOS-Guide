# For Loop 
In for loops you arent checking each iteration to see if a condition is true. Instead the lopp will run a certain number of times determined by the number of elements 
in a squence.

> To work with For Loops you will have to understand ranges and how to work with them.


## Ranges

In swift we can represent a countable range or sequence of numbers and set it equal to a variable or constant

``` swift
let closedRange = 0...5 // the three dots indicate that this is a closed range and you want to include the upper bound value, in this case it is (5)

let halfOpenRange = 0..<5 // two dots and the < symbole represent a half open range this will exclude the value of the upper bound (5).
```

> Ranges can only count up, the first number must be smaller than the second number.
> Upper bounds can be represented by variables 

``` swift
let someValue = 10
var otherValue = 0
```
## For Loop

``` swift
for i in 1...someValue { // i is a temperary constant that is relevant for 1 iteration of the loop before it is destroyed. 
    otherValue += 1
}

print(otherValue) \\ 55
```

When the loop starts i is set to the first value in the range (1). Each iteratoin of the loop sets the value of i to the next value in the range then adds that to the 
"otherValue", untill the range runs out of values.

## Where Clause

You can specify the condition of a loop that will execute using logic operators. for example,
``` swift
for i in 1...someValue where someValue > 100 {
  print("Wassup") // this code will never run because someValue will never be greater than 100. 
}
```













