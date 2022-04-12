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

Yo


