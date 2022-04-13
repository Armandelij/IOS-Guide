# Arrays
## Arrays store an ordered list of elements that are of the same type. 
> Arrays are 0 indexed. Meaning that the first element in the array has a position of 0

## Example

> you can explicitly decalare an array by using a pair of brackets around the name of the type. This is more or less used for empty arrays

 ``` swift
 var colors: [String] = ["blue", "red", "black"]
 ```
 > Swift can infer the type of the array by seeing the values inside of it. this eliminates the need to explicitly declare it

 ``` swift
 var colors = ["blue", "red", "black"]
 ```
 ## Adding Elements to an Array
 You can add values to an array using the append method
 
 ``` swift
 colors.append("white", "purple") // this will add "white" and "purple" to the end of the colors array
 ```
## Combining Sepereate Arrays
You can combine seperate arrays of the same type by using the =+ operators

``` swift
colors += ["yellow", "orange", "green"] // colors = ["blue", "red", "black", "white", "purple", "yellow", "orange", "green"]
```

## Operating on Arrays
You can access an element by referenceing its index position in an array

``` swift
colors[1] // "red"
```

## Array Slice
An array slice is a subset of elements of an array

``` swift
let firstThree = colors[1...3] // firstThree = ["red", "black", "white"]
```
The subset firstThree is not 0 based becase it references the colors array. To make it 0 based you need to specify it as an array.

``` swift
let firstThree = Array(colors[1..3])
firstThree[0] // "red"
```
## Emtying an Array
you can empty an array by using the .removeAll() method

``` swift
colors.removeAll() // []
```

## Determining How Many Elements are in an Array
You can determine the amount of elements in an array using the .count method

``` swift
colors = ["blue", "red", "black", "white", "purple", "yellow", "orange", "green"]
colors.count // 8  
```
> not to be confused with the postion which starts at 0 there are 8 elements within the colors array

## Checking if a Value Resides in an Array
You can check if an element exists within an array by using the .contains method

``` swift
colors.contains("red")
```

## Inserting and Removing Elements at Specific Positions in an Array
You can insert elements at certain positions in an array using the .insert method

``` swift
colors.insert("pink" at: 0) // colors = ["pink", "blue", "red", "black", "white", "purple", "yellow", "orange", "green"]
```

You can remove specific elements in an array using the .removeAt method

``` swift
colors.removeAt(at: 1)
```



