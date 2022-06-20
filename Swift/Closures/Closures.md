# Closures

Closures are a similar type of function, they are self contained blocks of functionality that can be passed around.
The difference between Closures and Functions are:

1. Closures do not have names unlike functions.
2. Closures also do not allow argument labels.
3. They also dont contain default values.
4. Closures can be written inline unlike function.

Lets take a look at the syntax below
The whole closure is listed inside the curley braces, the body of the closure doesnt start untill after the "in" keyword is used.

![Screen Shot 2022-06-20 at 11 19 05 AM](https://user-images.githubusercontent.com/64448202/174633556-5388c96b-5c7b-40bc-a6da-fdaeed35c862.png)

lets create 2 functions that do the same thing but one will be a function and the other will be a closuer.


``` swift
func add(a: Int, b: Int) -> Int { // accepts to Ints in the parameter list and returns an Int
    a + b
}

var addClosure = { (a: Int, b: Int) -> Int // this also accepts to Ints and returns an Int using closure syntax
    a + b
}

```
Now you can call a closure similar to how you would call a function


``` swift

add(a: 7, b: 3) // functions have argumment labels

addClosure(7, 3) // closures do not have argument labels

```

You can also define closures inline as an argumment. 




``` swift

typealias Operate = (Int, Int) -> Int

// Below is a higher order function. We can pass anything that matches the type signature of Operate. 

func printResult(_ operate: Operate, _ a: Int, _ b: Int) {
    print(operate(a, b))
}


printResult(
    { (a: Int, b: Int) -> Int in
        a * b + 100},
    3, 10)
```



