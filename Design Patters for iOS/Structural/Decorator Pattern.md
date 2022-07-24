# Decorator Pattern

The Dercorator pattern dynamically adds behaviors and responsibilities to an object without modifying its code. Its an alternative to subclassing where you 
change a classes behavior by wrapping it in another object. 

There are two components to the decorator pattern: 
Core Object
 - The core object will have its behavior modified.
 
 Decorator Object
 - Brings out the changed behavior in the core object

The two behaviors above have two goals, behavior modification and how the behavior is modified dynamically or at runtime instead of compile time.


## Behavior Modificatons 
We change how the core works without modifying its existing class implementation. To do this we wrap the core object with decorators, which augment the
default behavior of the core object. 

> Decorators modify the objects they wrap

![Screen Shot 2022-07-24 at 11 53 47 AM](https://user-images.githubusercontent.com/64448202/180655578-6b2b2f6d-4592-4bef-be5d-9d8f626965ba.png)



Decorators share the same interface as the core object, however they provide a different implementation. Because of this the client or user doesnt know if
they are working with the decorator or core object. 

> The Decorator behaves as the middle man, it intercepts calls to the core object and provides customized behavior for the client.  


## Dynamic Modificatons 

> Decorators modify behavior dynamically 

Instead of hardcoding different variants of the core object we can seperate each behavior into its own wrapper class. These wrappers are then applied to 
the core object at runtime.


## Example

Imagine we have a race car game and in that game we have multiple cars with stock stats or stats that are specific to the car. Within the game we give users the option to customize their car, these customizations enhance or reduce the stats of a specific vehical.

> Think stock tires verses offroad or monster tires. In an offroad course offroad tires would increase traction at the expense of speed.


``` swift
// We are using a protocol to allow the vehical objects to give us the speed and traction stats
protocol Transporting {
    func getSpeed() -> Double
    func getTraction() -> Double
}

// race car conforms to Transporting because we need to access the getSpeed() and getTraction() stats. You can see the the RaceCar has its own dedicated stats
final class RaceCar: Transporting {
    private let speed = 10.0
    private let traction = 10.0
    
    func getSpeed() -> Double {
        return speed
    }
    
    func getTraction() -> Double {
        return traction
    }
}


//MARK: - Accessing the raceCar Class
let raceCar = RaceCar()
let defaultSpeed = raceCar.getSpeed()
let defaultTraction = raceCar.getTraction()


class OffRoadTireDecorator: Transporting {
  private let transportable: Transporting
  
  init(transportable: Transporting) {
    self.transportable = transportable
  }
  
  func getSpeed() -> Double {
    return transportable.getSpeed() - 3.0
  }
  
  func getTraction() -> Double {
    return transportable.getTraction() + 3.0
  }
}


// Create Race Car
let defaultRaceCar = RaceCar()
defaultRaceCar.getSpeed() // 10
defaultRaceCar.getTraction() // 10

// Modify Race Car
let offRoadRaceCar = OffRoadTireDecorator(transportable: defaultRaceCar)
offRoadRaceCar.getSpeed() // 7
offRoadRaceCar.getTraction() // 13
```

You can see that the instance of the desired raceCar is created then (defaultRaceCar)... Remember (defaultRaceCar) is a type and it is of type Transporting.
We can see can get the speed and the traction of the race car by using .getSpeed() and .getTraction()

We can modify the Race Car by creating an instance of OffRoadTireDecorator named (offRoadRaceCar) and providind the (defaultRaceCar) as a type. 
We can now modify the offRoadRaceCar by using .getTraction and .getSpeed

You can also decorate decorators, but well save that for later. 
