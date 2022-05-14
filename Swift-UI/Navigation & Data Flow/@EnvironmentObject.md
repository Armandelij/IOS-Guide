# EnvironmentObject
@EnvironmentObject allows us to create views that rely on shared data across an entire application. 

## Example

CONTENT VIEW

``` swift
class DataExample : ObservableObject {
    @Published var text = "Counter"
    @Published var counter = 0
}

struct ContentView: View {
    @StateObject var data = DataExample() // lets this view know that the object exists inside this view
    
    var body: some View {
        VStack {
            
            
        }
        .environmentObject(data) // all of the views inside the Vstack will have access to the data object
    }
}
```
We may have a Data Example class like the one above that conforms to the ObservableObject protocol. 
We create an @StateObject for each object that conforms to the the ObservableObject protocol.
``` swift
class DataExample : ObservableObject {
    @Published var text = "Counter"
    @Published var counter = 0
}
```


> The @StateObject should be created in the same view the object was created in. We can use the @EnvironmentObject in place of the @StateObject in other views of the where the object did not originate from.

``` swift
struct ContentView: View {
    @StateObject var data = DataExample() // lets this view know that the object exists inside this view
```

In this example a VStack is created to line all of its child view vertically. The .environmentObject will be attatched to the end of the VStack so that all of the child views within the Vstack will have access to the object. 

``` swift
var body: some View {
        VStack {
            
            
        }
        .environmentObject(data) // all of the views inside the Vstack will have access to the data object
```

