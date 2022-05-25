# Function Overloading
Creating resembuling functions with the same name is known as function overloading.

>There are 4 ways you can overoad a function

# Example

``` swift
// Data

let passingGrade = 50
let elijahGrade = 49
let bobGrade = 87
let bobAllGrades = [60, 96, 87, 42]

```
 - Overload using Different Number of Parameters

``` swift

func getpassedStatus(for grade: Int) -> Bool {
    grade >= passingGrade
}

// This function has another parameter 
func getpassedStatus(for grade: Int, lowestPass: Int) -> Bool {
    grade >= passingGrade
}

```

The second function has an additional parameter so when it is called swift will know what function to identify. 

``` swift
getpassedStatus(for: bobGrade, lowestPass: 80) // uses the second function with a different parameter
getpassedStatus(for: elijahGrade) // uses the first function and assumes the passing grade is 50

```

> If possible use default values instead of overloads. It will make your code much more managable

The function calls bellow will be from the same function. 

``` swift
func getPassedStatus(for grades: Int, lowestPass: Int = passingGrade) -> Bool {
    grades >= passingGrade
}

getPassedStatus(for: bobGrade, lowestPass: 80)
getPassedStatus(for: elijahGrade)

```

 - Overloading using Different Parameter Types

``` swift
func getPassedStatus(for grades: Int, lowestPass: Int = passingGrade) -> Bool {
    grades >= passingGrade
}


func getPassedStatus(for grades: [Int]) -> Bool {
    var totalGrade = 0
    for grade in grades {
        totalGrade += grade
    }
    let averageGrade = totalGrade / grades.count
    return averageGrade >= passingGrade
}


getPassedStatus(for: bobAllGrades)
```
The parameter type in the second function is an array of integers which fulfill the different parameter type protocol.

 - Overload using Different Argument Lables, like "stride" functions.

Strides allow us to create sequence of values that skip a certain amount between each value.
> Strides can count forwards and backwards

``` swift
//You can use strides like how u use ranges.
for i in stride(from: 10, to: 0, by: -2) {
    print(i)
}

// this function has the same func name but uses a different argument lable.
for i in stride(from: 10, through: 0, by: -2) {
    print(i)
}

```

 - Overload using different Return types

``` swift

func getValue() -> Int {
    return 13
}

func getValue() -> String {
    return "Roar"
}

let stringValue: String = getValue() // you will need to explicitly state the value type to tell swift which function you wasnt to use.

```

## Overloading Rules: muust have 1 of the 4 differences to be valid.
 1. Different Number of parameters
 2. Different parameter types
 3. Different argument labels
 4. Differnt return types


