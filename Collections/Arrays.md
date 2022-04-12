# Arrays
## Arrays store an ordered list of elements that are of the same type. 

## Example

> you can explicitly decalare an array by using a pair of brackets around the name of the type. This is more or less used for empty arrays

 ``` swift
 var colors: [String] = ["blue", "red", "black", "yellow", "orange"]
 ```
 > Swift can infer the type of the array by seeing the values inside of it. this eliminates the need to explicitly declare it

 ``` swift
 var colors = ["blue", "red", "black", "yellow", "orange"]
 ```
 ## Adding Elements to an array
 
 You can add values to an array using the append method
 
 ``` swift
 colors.append("white", "purple") // this will add "white" and "purple" to the end of the colors array
 ```
