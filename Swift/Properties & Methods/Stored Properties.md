# Stored Properties

Stored properties are constants or variables that store values to instances of classes ot structures. The variable properties can be assigned or re-assigned
at anytime. However, constants cannot be changed at anytime.

Structs and classes both have have stored instance proeprties and type properties. however, Enums only have stored type properties.

``` swift
struct Person {
let firstName: String
var lastName: String
var age: Int
}

var elijah = Person(firstName: "Elijah", lastName: "Armande", age: 28) // values stored in properties. 

elijah.age = 29

````

> With classes you will have to initialize the properties first. 


## Property Observers
There are two kinds of property observers willSet & didSet.
willSet: executes a piece of code right before a property changes. (Stores the incoming value as newValue)
didSet: executes a piece of code after the property has changed. (Stores the previous value as oldValue)

``` swift
struct Person {
let firstName: String
var lastName: String
    var age: Int {
        willSet {
            print("\(age) will be set to  \(newValue)")
        }
        didSet {
            print("\(firstName) age was changed.")
        }
    }
}

var elijah = Person(firstName: "Elijah", lastName: "Armande", age: 28)
elijah.age = 29
```









