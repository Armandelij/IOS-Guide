# filter, reduce & sort

## filter
filter: Filter will return an array that has elements that pass the filter specified in your closure. 
It takes an element of the sequence as its argument and returns a boolean value indicating whether the element should be included in retuned array.

Using filter:
Step1: create a constant and set it equal to the numbers array.
Step2: Call the .filter method on the array "numbers.filter". 
Step3: Specify a filter in the closure using one of the elements in the array.

``` swift
var numbers: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]
var people = ["Elijah", "Stacey", "Alexa", "Dillon", "Mo", "Sam" ]

let numbersLessThan5 = numbers.filter {$0 < 5} // [0, 1, 2, 3, 4]

let shortNames = people.filter {$0.count < 5} // ["Mo", "Sam"]
```

## reduce
Allows you to combine all the elements in an array and return an object of any type.

Using reduce:
Step1: Create a constant and set it equal to the numbers array
Step2: Call the .reduce method on the array "numbers.reduce"
Step3: Specify a filter in the closure using one of the elements in the array.

``` swift
let numberSum = numbers.reduce(0) {$0 + $1} // 36

let oneLongWord = people.reduce("") {$0 + String($1)} // ElijahStaceyAlexaDillonMoSam
```

## sort
Sort allows you to sort any mutable collection of elememnts that conforms to the Comparable prortocol. Elements are sorted in ascending order.

``` swift
people.sort() // ["Alexa", "Dillon", "Elijah", "Mo", "Sam", "Stacey"]

// you can sort collection in descending order by using the > operator

people.sorted(by: >) Stacey", "Sam", "Mo", "Elijah", "Dillon", "Alexa"]
```




