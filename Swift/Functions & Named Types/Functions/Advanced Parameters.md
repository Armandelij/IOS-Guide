# Advanced Parameters

``` swift
let passingGrade = 50
let elijahGrade = 49
let javaGrade = 87
let javaAllGrades = [60, 96, 87, 42]

```


## Varaidic Parameters 
The function has 0 or more parameters of that type. this where the term variadic parameters come from.
Inside the body of the function the variadic parameter is treated like an array. so you can perform operation on it like you would an array.

``` swift
func getHighestGrade(for grades: Int...) -> Int { // takes 0 or more of the same type (Ints) and will return an it.
    grades.max() ?? 0 // .max returnes an optional 
}



getHighestGrade() // 0
getHighestGrade(for: elijahGrade, javaGrade) // 87

```

## Inout Parameters 
Allow you to change a parameter directly in a function.

To change a parameter directy:
  1. You need to use the "inout" keyword before the type of the parameter you want to change.
  2 To call the an inout function you have to add an (&) infront of the argument.
  
  ``` swift
  func incrementAndPrint(_ value: inout Int) { // Swift now recognizes the value as a local variable and not a constant.
    value += 1
    print(value)
}

incrementAndPrint(&count) // 1
incrementAndPrint(&count) // 2
incrementAndPrint(&count) // 3

  
  ```
  
  
  




``` swift
var count = 0
```
