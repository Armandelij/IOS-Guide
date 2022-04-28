# State
@State is a property wrapper that allows for modification of values inside a struct.
> Normally this is not allowed because structs are value types. 

When @State is put before a property, it is then moved from the storage of the struct into a shared storage managed by SwiftUI
> This allows for the destruction and recreation of the struct without losing the state it was storing.
> @State should shouldnt be shared with other views, generally they should be shared with Int, String, and arrays.

## Example
``` swift
   struct ContentView: View {
    @State var placeHolderText = "Hello World" // variable that stores "Hello World"
    
    var body: some View {
        
        VStack {
            Text("\(self.placeHolderText)") // displays the text
            
            CustomButton1(placeHolderText: self.$placeHolderText)
            CustomButton2(placeHolderText: self.$placeHolderText)
        }
    }
}
   ```

# Binding
@binding allows us to declare a value that comes from elsewhere, and that it should be shared elsewhere. 

For example the code above uses an @State property on the placeHolderText variable. Here is again below. 
``` swift
@State var placeHolderText = "Hello World"
```
This current variable/value is only accessable inside of its current struct (ContentView). The @State property attached to it allows us to represent that variable/value else where if we choose to. The @Binding property will allow us to share the variable/value between @State property elsewhere in the code. 

## Example
``` swift
struct CustomButton1: View {
    @Binding var placeHolderText: String
    
    var body: some View {
        Button("cat says") {self.placeHolderText = "Meow"}
    }
}

struct CustomButton2: View {
    @Binding var placeHolderText: String
    
    var body: some View {
        Button("dog says") {self.placeHolderText = "Roof"}
    }
}
```


