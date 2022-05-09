# @StateObject

 The @StateObject is created to insure that a reference type inside of a view remains alive in that view and other shared views. 

## Example

``` swift
class Vehicle: ObservableObject {
    var type = "Audi"
}


struct ContentView: View {
    @StateObject var vehicle = Vehicle()
    
    var body: some View {
        Text("Type: \(vehicle.type)")
            .padding()
    }
}
```

First we will need to create a class that can be referenced inside various views

``` swift 
class Vehicle: ObservableObject {
    var type = "Audi"
}
```

If we want to use the Vehicle object in various views using @StateObject, you will need to create it inside the view and use @StateObject.
``` swift
struct ContentView: View {
    @StateObject var vehicle = Vehicle()
    
    var body: some View {
        Text("Type: \(vehicle.type)")
            .padding()
    }
}
``` 
This insures that the Vehicle instance does not get destroyed when the view updates.
> @StateObject should only be used once per object, it should only be used inside the view that is responsible for creating the the object itself. 

