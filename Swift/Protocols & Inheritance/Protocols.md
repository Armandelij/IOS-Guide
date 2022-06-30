# Protocols

Protocols act as a blueprint for methods and properties. They are properties and method skeletons that are void of implementation. You can define theses
properties and methods in when definning other classes.

## Property and Method Requirements
A protocol can be used to specify whether a property is gettable or settable. It also specifies the type intance property rather than specifying whether it
is a stored property. 


## Example
**Property Requirements:** are decalred by using the "var" keyword as property variables {get set} is used to declare gettable amd settable variables.

**Initializer Requirements:** We can initialize protocols to follow type conformance. We can just use the signature of the intializer and not the body.

**Method Requirements:** Since protocols are meant for mapping and not for performance the body of any initializer or method cant be used

``` swift
protocol Animal {
var name: String {get} 

init(name: String)

func speak()

}
```

# Class Only Protocols

When the user wants to define protocols with classes, the user should define the class first followed by the protocols inheritance list. 

``` swift

class Dog: Animal {
    let name: String // We use "let" because a constant counts as a get only property concering protocols
  var tricksLearnedCount: Int
  
  init(name: String, tricksLearnedCount: Int) {
    self.tricksLearnedCount = tricksLearnedCount
    self.name = name // no such thing as a superclass because the parent class is a protocol
  }
  
  convenience required init(name: String) {
    self.init(name: name, tricksLearnedCount: 0)
  }
  
   func speak() {
    print("Bow wow! My name is \(name)!")
  }
    
    // since all of theses classes are base classes you cant have override initializers
    
    
    class Cat: Animal {
    let name: String
    
    required init(name: String) {
      self.name = name
    }
    
   func speak() {
    print("My name is \(name). Please leave me alone. I must look at this wall.")
  }
}

let animals: [Animal] = [Dog(name: "Fang"), Cat(name: "Mr. Midnight")] // animal is no longer a super class of dog and cat swift does not know what the elemtns in 
the array have in common. We can use explicit typing here. [Animal]
for animal in animals {
  animal.speak()
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
```

