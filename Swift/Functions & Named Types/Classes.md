# Classes

Classes are reference types instead of value types. (structs are value types).

## Example

``` swift
class Pet {
    let name: String
    let type: String
    var toys: [String] = []   
   }

```

Simailar to a struct you create a class by:
1. providing the key word "class"
2. providing the name of the class
3. Providing properties inside of the curly braces

> unlike structures classes do not have inate initializers, so they will need to be provided.

``` swift

class Pet {
    let name: String
    let type: String
    var toys: [String] = []
    
    init(name: String, type: String, toys: [String]) {
        self.name = name
        self.type = type
        self.toys = toys
    }
}

```

to provide initializers for the properties in the class you will need to:
1. provide the key word "init(){}"
2. inside the () you will need to provide the value type for each name. 
3. Within the body of the initializer you need to assign the parameters to the classes properties. 

> In classes the mutating key word in regards to functions is not nessesary becasue classes are a reference type.


