# Structures

Creating a structure (struct) is similar to creating a blue print. You are basically describing the make up or providing chracteristics of the structure.

Creating a struct:
1. provide the keyword (struct) 
2. provide the name of the struct, followed by curly braces. The name of the struct should start with a capitol letter for naming convention purposes. 

# Example
``` swift
struct BballPlayer {

}
```


To provide charecteristics to the struct you must add what are known as properties inside the curley braces.

Providing Properties
1.  properties are like any other stored variable or constant. They can be declared or initialized.  

``` swift
struct BBallPlayer {
let name: String
var points: Int
var fouls: Int
}
```

## Methods & Mutating Methods
Functions inside of named types are knowm as methods. 

``` swift
struct BBallPlayer {
let name: String
var points: Int
var fouls: Int

func getfouledStatus(fouledOut: Int = 6) -> Bool {
  foul >= fouledOut
  }
  
   // when a structs method mutates, it needs to be explicitly stated by using the "mutating" key word before "func".
  mutating func addFoul() {
    fouls += 1
  }
  
}
```

# Creating Instances of the Student Struct
Creating instances allows us to create multiple objects using the properties of the struct. This why the struct is seen as a blue print. 

Creating instances
1. create a variable or constant 
2. set it equal to the struct name.
3. 3. set the value of the initilaizer. the initilizer is the properties that where created in the origional struct. It should generate itself

``` swift
var elijah = BBallPlayer(name: "Elijah", points: 49, fouls: 1)

```



