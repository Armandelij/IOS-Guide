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


# replaceNil
replaceNil() transforms all of the instances of nil coming from the publisher with a value you provide.

``` swift
example(of: "replaceNil") {
    ["A", nil, "C", "D", "E"].publisher
    
    //1
        .replaceNil (with: "-")
    //2
        .map{$0!}
    //3
        .sink(receiveValue: {print($0) })
        .store(in: &subscriptions)
}
```
Understanding the code above:
1 .replace nil will do exactly that, it will replace nil with whatever you specify.
2 .map will take all of the values in the array and force unwrap them individually.
3 .sink will subscribe to the publisher and print them out. 

# replaceEmpty
replaceEmpty inserts a value if the publisher completes without emitting and values.
> The publisher must send a completion event, otherwise it does not know if the publisher is done emitting values.


# scan() 
Allows you to build upon the most recent output from the operator

``` swift

example(of: "scan") {
    //1
    var dailyGainLoss: Int { .random(in: -10...10) }
    //2
    let august2019 = (0..<22)
        .map { _ in dailyGainLoss }
        .publisher
    //3
    august2019
        .scan(50) { latest, current in
            max(0, latest + current)
        }
        .sink(receiveValue: {_ in })
        .store(in: &subscriptions)
}
```

Understanding the code above:
1. Here is a computed property that will return a random number between -10 to 10
2. We use the dailyGainLoss to create a publisher from an array of random Int. So **august2019** is now an array of Ints (stock prices) ranging from 0-22 (mot including 22).
3. The scan operator has a value of 50 **.scan(50)** wich will simulate a change to the stock price. max(0) will keep the stock price positive




















# flatMap()
Allows you to combine output from more than one publisher into one publisher to send to downstream comsumers



