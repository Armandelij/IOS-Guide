# Looping over an AsyncSequence using for await

We can loop over an AsyncSequence using **for, while, and repeat** loops. However we need to use either **await** or **try await** depending on wheather 
it can throw errors.

An Async Sequence may have some, all or none of its values availabel when you use it, becacuse of this we must use the await keyword when the value becomes
available 

The example below shows how to iterate over a Counter. a custom asyncSequence that produces Int values from 1 to a "howHigh value"

``` swift

for await i in Counter(howHigh: 10) { // we have to mark await here because we are reading a value from an async sequence
    print(i, terminator: " ")
}
```

We can test the existance of a sequence member like this:

``` swift
let found = await Counter(howHigh: 10).contains(5) // true
```




> An asyncSequence doesent generate or contain the values it just defines how you access them
