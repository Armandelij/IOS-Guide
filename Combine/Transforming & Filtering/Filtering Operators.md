# Filtering Operators

Filtering operators take values from a publisher and decides (conditionally) to pass them downstream to the consumer

## filter()

Takes in a predicate to determine which values to keep

``` swift

var subscriptions = Set<AnyCancellable>()

example(of: "filter") {
    //1
    let numbers = (1...10).publisher
    
    numbers
    //2
        .filter {$0.isMultiple(of: 3)}
    //3 
        .sink(receiveValue: { n in
            print("\(n) is a multiple of 3!")
        })
        .store(in: &subscriptions)
}
```
Understanding the code above:
1. Created a new publisher that will ommit a number of values
2. The .filter will filter the numbers that are a multiple of 3
3. .sink will recieve the value and print them 

## removeDuplicates
``` swift
 let words = "Wassup wassup! how are you doing today?"
        .components(separatedBy: " ") // will seperate components(words) by spaces
        .publisher
    
    words
    //1
        .removeDuplicates()
        .sink(receiveValue: {print($0)})
        .store(in: &subscriptions)
}
```
Understanding the Code above:
1. Removes duplicates from the words variable.


## CompactMap()
compactMap() allows you to ignore nil results from a map operation.

``` swift
example(of: "CompactMap()") {
    
    // 1
    let strings = ["a", "1.24", "3", "def", "34", "0.23"].publisher
    
    strings
    // 2
        .compactMap{Float($0)}
        .sink(receiveValue: {
            print($0)
        })
        .store(in: &subscriptions)
}
```

Understanding the code above
1. create a publisher on the string array
2. Use the compact method on the strings instance. It will attempt to convert all of the strings to floats, if an element cannot be converted to a float, it will be ommited from the output.








