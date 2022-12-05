# Closures

Closures are {blocks of functionality that can be passed around and used in your code}
> Known as anonymous or headless functions, they do not need the func keyword in the function name.

Below are multiple ways you can use closures

## Example 

## No Parameters or Return Type

``` swift

// this closure has no parameters or return types
var greet = {
    print("Hello")
}

greet()

```
## Closure that excepts a parameter

``` swift

// Closure that excepts a parameter
let greetUser = {(name: String) in
    print("Hey what is your name \(name)")
}

greetUser("Cassie")

// that accepts a parameter and returns a type
var findSquare = {(num: Int) -> (Int) in
  var square = num * num
  return square
}

// closure call
var result = findSquare(3)

print("Square:",result)

```

## Closures as Function Parameter

``` swift

// Closures as Function Parameter

func grabLunch(search: () -> ()) {
    print("Lets go out for lunch")
    // closure call
    search()
}

grabLunch(search:  {
    print("Tacos 1 mile away")
})


```
