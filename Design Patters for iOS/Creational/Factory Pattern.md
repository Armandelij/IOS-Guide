# Factory Pattern

The fatory pattern is another Creational design pattern because it envolves the creation of an object. It is helpful when you need to provide a high level
flexibility in your code. 

Factory patterns encapsulate the implementation of creating objects, which adheres to a common base class or interface.

``` swift

protocol Environment {
    var identifier: String {get}
}

class DevEnvironment: Environment {
    var identifier: String {return "dev"}
}


class LiveEnvironment: Environment {
    var identifier: String {return "live"}
}


class EnvironmentFactory {
    enum EnvType {
        case dev
        
        case live
    }
    
    func create(_ type: EnvType) -> Environment {
        switch type {
        case.dev:
            return DevEnvironment()
            
        case.live:
            return LiveEnvironment()
        }
    }
} // End of Environment Factory


let factory = EnvironmentFactory()

factory.create(.dev)
```
Understanding the code above:

1. We have two classes DevEnvironment and LiveEnvironment both classes inherit from the protocol Environment.
 
2. The EnvironemntFactory class includes an Enum of type EnvType. The enum has two cases **dev** and **live**.
 
3. The **create** function in the EnvironmentFactory has a switch statement that has case **dev** that returns the DevEnvironment and a case **live** that retuns the LiveEnvironment.
 
 > if anyone wants to use LiveEnvironemt or DevEnvironment they can use an instance of EnvironmentFactory and use its "create" function property.
 
4. We've accessed it above by storing EnvironmentFactory() into the constant factory.
 ``` swift 
 let factory = EnvironmentFactory()
 ```
 
5. We then use the instance "factory" and then use dot notation to access the create function then pass in ".dev" or ".live" It will return either DevEnvironment or LiveEnvironment
 
 ``` swift
 factory.create(.dev)
```

 
