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





