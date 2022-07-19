# Set

A Set is a container that holds unique unrepeated values.

# Syntax

``` swift
var bookbag: Set<String> = ["Laptop", "Foler", "Binder", "Gum"]
```
> Sets are good for finding duplicate elements in a collection of values

``` swift
let values: [String] = [...]
var bookbag: Set<String> = []
for value in values {
  if bag.contains(value) {
    print("Your bookbag already has a \(value)")
    
    }
    bag.insert(value)
}
```

> Values also have no notion of order
