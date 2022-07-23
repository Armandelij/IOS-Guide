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

