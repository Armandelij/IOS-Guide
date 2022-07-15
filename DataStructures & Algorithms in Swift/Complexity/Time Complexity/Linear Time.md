# Linear Time

As the size of the input array increases, the number of iterations that makes increases by the same size.

Example

``` swift
func printNames(names: [String]) {
    for name in names {
        print(name)
    }
}

printNames(names: ["Elijah", "Bob", "Stacey", "Brooke"])
```

> The amount of data increase, the amount of time it takes to complete increases

The Big O notation for linear time is O(n)
