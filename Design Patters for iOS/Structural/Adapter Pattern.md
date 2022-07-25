# Adapter Pattern

Imagine you have a new iphone, the headphones you currently have only fit your previous phones headphone jack. Fortunatley, you're in luck because an 
adapter is something you can purchase to act as a medium so old and new devices can work together. This in a round about way is houw the Adapter pattern
works in swift.


The adapter pattern is about creating intermediary abstraction that translates to the old component of the new system. Sometimes it is called a wrapper
because it wraps the object and provides a new interface. 

To implement the Adapter pattern you need to create a new object that will box the old one in, then you will iimplement the target interface by wrapping
another adaptee object. 

Adaptee: Is the object we are adapting to fit a specific target.

Adapter: The object that wraps the original and produces new requirements specified by a target interface.

Target: The object we want to use the adaptee with.

# Use Cases

- Component shares similar functionality with existing objects
- Component has an interface that is incomaptible with objects. Component is ususally from a third party framework.
- Componenets obviously need to be intergrated within your application.


# Example

``` swift
protocol Jumping {
    func jump()
}

class Cat: Jumping {
    func jump() {
        print("Pounces")
    }
}


class Dog: Jumping {
    func jump() {
        print("Jumps Excitedly")
    }
}


let dog = Dog()
let cat = Cat()

// Both cat and dog are able to perform jump() Now lets intergrade a third party framework, that has a foreign animal (frog)


// Adaptee
class Frog {
    func leap() {
        print("Leaps")
    }
}
let frog = Frog()



// Adapter:
extension Frog: Jumping { // here we are providing new functionality to the Jumping Protocol. 
    func jump() {
        leap()
    }
}

```

Above we conformed Frog to Jumping, then created a wrapper for other objects to recognize. 
We didnt have to modify Frog() we just extended it with a new wrapper function.




## Making our Code Better

We can create a dedicated adapter class that holds foreign components in a private property. Now the caller cant manipulate the frog directly, this gives
us better encapsulation of the frog so we can have control over what gets exposed.

``` swift

class FrogAdapter: Jumping {
  private let frog = Frog()
  
  func jump() {
    frog.leap()
  }
}
```









