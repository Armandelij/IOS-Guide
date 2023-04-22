## Transforming Operators

# collect()
The collect() operator takes a stream of individual values from a publisher and turns them into an array of values.

``` swift
var subscriptions = Set<AnyCancellable>()

example(of: "collect") {
    
    //1 
    ["A", "B", "C", "D", "E"].publisher
    
    //2
        .collect(2) // You can limit the number of items the .collect method will collect. Here it specifies two.
        
    //3 
        .sink(receiveCompletion: {print($0) },
              receiveValue: {print($0) })
        .store(in: &subscriptions)
}
```

Understanding the code above:
 
 1. An array is initialized and a publisher is created from that array.
 2. the .collect method will take a stream of values from the publisher and turn them into an array of values.
 3. The .sink subscriber subscribes to the publisher and prints the values one by one.
 
 > It is commen to insert many operators between the publisher and the .sink subscriber

# map()
transforms values from a publisher before sending them downstream to consumers

``` swift
map{$0 * 2} // the passed in value is denoted as $0

```

``` swift 
example(of: "map") {
    
    let formatter = NumberFormatter()
    formatter.numberStyle = .spellOut
    
    //1
    [123, 4, 56].publisher
    
    //2
        .map {
            formatter.string(from: NSNumber(integerLiteral: $0)) ?? ""
        }
        .sink(receiveValue: {print($0)})
        .store(in: &subscriptions)
}
```

Understanding the code above:
1. Generate a publisher from the array of numbers
2. The map operator will take in the passed in value and procees it through the number formatter





