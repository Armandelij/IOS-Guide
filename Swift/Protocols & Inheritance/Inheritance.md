# Inheritance
Inheritance allows us to create a new class from an existing one. The new class that derives from the existing one is known as the derived class, subclass or parent class.

## Example

Create properties and initialiaze them as you normaly would.

``` swift
class vehical {
    var name: String
    var tires: Int
    var doors: Int
    var motor: Bool
    var make: String
    
    init(name: String, tires: Int, doors: Int, motor: Bool, make: String) {
        self.name = name
        self.tires = tires
        self.doors = doors
        self.motor = motor
        self.make = make
        
    }
}
```

To inherit the propertise of an existing class or parent class create a the desired class but after that use the colon (:) provide the name of the parent class. 
> Think of it as saying "Truck class is of type Vehical"

``` swift
class Truck: Vehical {
    var flatBed = true
}

let ram = Truck(name: "Ram", tires: 4, doors: 4, motor: true, make: "Dodge")

```

Now the Truck class has all of the proeprties as the Vehical class. We can create as many classes from the vehical class as we want. 






