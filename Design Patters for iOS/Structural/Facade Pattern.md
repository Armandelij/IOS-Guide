# Facade Pattern

The facade pattern hides the structural logic. The purpose is to provide an singler interface to a complex subsystem, instead of exposing the user to a set 
of classes and their APIs 

This pattern is ideal when working with a large number of classes, especially when they are hard to understand.


For example, lets say we have a car factory and in that car factory we have a departmemnts or (class's) dedicated to making different parts of the car. From a users perspective the user doesnt care or shouldnt see the how the different departments make the parts of the car. THe client just wants a simple way to access the car.

``` swift

class Engine {
    func produceEngine() {
        print("Produce Engine")
    }
}

class Body {
    func produceBody() {
        print("Produce Body")
    }
}

class Accessories {
    func produceAccessories() {
        print("Produce Accessories")
    }
}

class FactoryFacade {
    let engine = Engine()
    let body = Body()
    let accessories = Accessories()
    
    func produceCar() {
        engine.produceEngine()
        body.produceBody()
        accessories.produceAccessories()
    }
}

let factoryFacade = FactoryFacade()
factoryFacade.produceCar()

```
![Screen Shot 2022-07-24 at 10 19 29 AM](https://user-images.githubusercontent.com/64448202/180651290-4d6587c2-553c-4d4d-af2e-07f3e25f4035.png)

> The Facade is make up of subsystems in our case the subsystems are the Engine, Body, and Accessories class. 

If you want to access those subsystems you can create constant that is equal to the FactoryFacade(). Now you have access to its properties. 
