# Time Complexity 

Time complexity is the amount of time it takes to run an algorithm as the input size increases. 

## Constant Time

Constant time has the same running time no matter the size of the input data. 

Example:

```swift
func checkFirst(names: [String]) {
    if let first = names.first {
        print(first)
    } else {
        print("no names")
    }
}

checkFirst(names: ["Stacey", "Bob"])
```

The size of the array above has no affect on the running time because because the function only checks the first element of the array.

> As input data increases the amount of time the algorithim takes to complete does not change. 

The Big O notaion for constant time is O(1)


# Linear Time






