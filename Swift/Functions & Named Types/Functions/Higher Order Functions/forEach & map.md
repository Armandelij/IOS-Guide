# forEach & map

forEach & map are higher order functions that are used when dealing with collections.

forEach: Iterates over a collection and passes each element into a block of code and runs that code. forEach does not return anything.
map: Does the same thing as forEach, but it returns a collection of elements and has the capability of changing the type.

## Example

The below code will be the collection we will be working with

``` swift 
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
```

## forEach
Steps for creating a forEach loop
 
 1. Start with the collection you want to iterate over
 2. Call the forEach method on that collection (.forEach)
    - The method takes one closure or function as an argument.
    - That closure will take the same type as the element in the collection and return nothing.

``` swift
prices.forEach { price in
    print(price)
}
```

Below is a forEach loop with the same idea as the above example but with less code.

We can use shorter syntax for the above code. Already there is no parameter or return type, only left to do is remove the parameter name and in and replace it with $0


``` swift
prices.forEach {print($0)}
```


## map

map Does the same thing as forEach but it returns a collection.
     - map is good for changing one collection of one type into another.

Using map
 1. create a variable to store the array values.
 2. call map on on the origional array.
    - the parameter type is decided by the collection youre calling map on
        we can give it a name and rely on type inference for the type.

``` swift
let salesPrices = prices.map {(price) -> Double in
    price * 0.9
    
}
```
shortended syntax: The return type can be inferred by the contents of the closure and we dont have to name the parameter

``` swift
let salesPrices1 = prices.map {$0 * 0.9}

// we can transform this double array into a string array.

let priceLabels = salesPrices.map {(price) -> String in
    String(format: "%.2f", price)
    
}
```








