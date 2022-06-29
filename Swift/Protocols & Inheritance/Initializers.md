# Initializers

All stored properties must have initial values. This means the child class has to have initialized properties of its own class as well as the super classes properties.

``` swift
class Vehical {
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


class Truck: Vehical {
    var flatBed = true
}


class motorcycle: Vehical {
    var helmet: Bool

    init(name: String, tires: Int, doors: Int, motor: Bool, make: String, helmet: Bool) {
         self.helmet = helmet // need to initialize helmet to
         super.init(name: name, tires: tires, doors: doors, motor: motor, make: make) // super.init accesses the initializers in the parent class. 
         Because we still need to initialize the values in the new class to use them
    }
}


motorcycle(name: String, tires: Int, doors: Int motor: Bool, make: String, helmet: Bool)

/*  as you see above we have to provide values for every property in this instant even if we dont want to use them.
 We could provide a default value but that will not always solve the initializer inheritance problem. We can override an initializer to resolve this 
 */

```


Again All stored properties have initial values. This means the child class has to have initialized properties of its own class as well as the super classes properties.


## Override 

``` swift
class Vehical {
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


class Truck: Vehical {
    var flatBed = true
}


class motorcycle: Vehical {
    var helmet: Bool
    
    override init(name: String, tires: Int, doors: Int, motor: Bool, make: String) { // 
        self.helmet = true
        super.init(name: name, tires: tires, doors: doors, motor: motor, make: make)
    }
    
    // now the vehicle truck and motorcycle have access to this initializer
    
    
}


```



