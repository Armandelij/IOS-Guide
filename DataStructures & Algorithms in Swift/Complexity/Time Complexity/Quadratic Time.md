# Quadratic Time

Commonly known as **n squared**. This time complexity refers to an algorithim that takes time porportional to the square of the input size. 

``` swift

func printNames1(names: [String]) {
    for _ in names {
        for name in names {
            print(name)
        }
    }
}

printNames1(names: ["Elijah", "Bob", "Stacey", "Brooke"])
```

The function above prints out all the names in the array for all the names in the array. In this case there will be 16 print statements. 

> As the size of the input data increases, the amount of time it takes for the algorothm to run drastically increases. Quadratic time does not run well at
> scale. 

The Big O notation for quadratic time is O(n^2)
