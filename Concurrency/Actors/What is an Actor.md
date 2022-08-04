# Actor

Actors are conceptual classes that can be used in a concurrent environments. Swift essential ensures that no two pieces of code attepts to access an actors
data at a time. 


## Key things to understand
- You can create actors using the **actor** keyword.
- Actors are a reference type. We can use actors to share state within a program
- They share many of the same features as classes. However they do not support inheritance, convience initializers, or **final** or **override**
- actors automatically conform to the Actor prtotocl, this is a protocol that no wither type can use. 


``` swift
actor User {
    var score = 10

    func printScore() {
        print("My score is \(score)")
    }

    func copyScore(from other: User) async {
        score = await other.score
    }
}

let actor1 = User()
let actor2 = User()

await print(actor1.score)
await actor1.copyScore(from: actor2)

```

Breaking down the above code

- the keyword **actor** is used in the same place as the class or struct keywords. Again it can have properties and methods
- The **printScore()** method has access to score property because the actor owns the that method.
- The copy score is an async function and in order to read it we must use the await keyword.
- Code outside the actor needs to use await as well.


## The main reason Actors are used in Swift

Actors ensure that access to a certain object is restricted to a single task at a time. 

Database access is a scenario where actors can be used, it can prevent conflicting data and eliminate data races.
