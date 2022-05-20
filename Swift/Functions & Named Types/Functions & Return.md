# Functions & Return 
With functions, we can have the results return the value. So when we call that function, the value can be 
stored into a variable or used in place.

## Example 

1. To have a value return something you must provide an "->" followed by the return type. 
2. Next is to provide a return statment inside the function body.

> The type of the value returned must match the type specified in function declaration

``` swift
let _1kClub = 1000
let elijah = (name: "Elijah", points: 2000, pet: "Java")
let zia = (name: "Zia", points: 999, pet: "Cookie")

func getPassStatus(for point: Int, lowestPointsPossible: Int = 1000) -> Bool {
    return point >= lowestPointsPossible
}
let elijahPassStatus = getPassStatus(for: elijah.points) \\ true
```

## Typalias
Typealiases allow you to explicity declair a type for a compound type (tuple). 

1. provide the Keyword "Typealias"
2. provide the name for the "Typealias" followed by an equal sign
3. provide the type annotation 

```swift
typealias Player = (name: String, points: Int, pet: String?)
```
Now we can specify each tuple with the Typalias Player

``` swift
typealias Player = (name: String, points: Int, pet: String?)
let elijah: Player = (name: "Elijah", points: 2000, pet: "Java")
let zia: Player = (name: "Zia", points: 999, pet: nil)

```

You can also write a function using the Player parameter. 

``` swift
func orderPetCollar(for player: Player) {
    guard let pet = player.pet else {return}
    print("One custom collar for \(player.name)'s pet \(pet)!")
}

orderPetCollar(for: elijah)
```

Since the Typealias has an optional string (String?) for pet, the guard let statment is used to saftley unwrap 
the optional.



