# Logarithmic Time

There are scenarios where only a subset of of input needs to be inspected, leading to a faster runtime. 


Example

``` swift
let numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450]

func naiveContains(_ value: Int, in array: [Int]) -> Bool {
    for element in array {
        if element == value {
            return true
        }
    }
    return false
}


naiveContains(56, in: numbers)

```

In this case as data increases the time it takes to execute the algorithm executes at a slow rate. 

Big O notation for logarithmic time complexity is O(log n)
