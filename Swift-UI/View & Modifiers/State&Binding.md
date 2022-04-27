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

#Binding

