# Adding Bar Button Items

It is possible to add leading and trailing buttons to the navigation view

## Example

``` swift
struct ContentView: View {
    @State private var cart = 0
    
    var body: some View {
        NavigationView {
            Text("Cart: \(cart)")
                .navigationBarTitle("Navigation")
                .navigationBarItems(
                    leading:
                        Button("Subtract 1") {
                            self.cart -= 1
                        },
                    trailing:
                        Button("Add 1") {
                            self.cart += 1
                            }
                    )
        }
    }
}
```
https://user-images.githubusercontent.com/64448202/167273207-c0a3f828-a6de-4302-a529-a87503a5eb5f.mov


Inside the navigationView under the navigationBarTitle is where we will add our navigationBarItems. 
The navigationBarItems() consists of leading and trailing paramemters that allow for the positioning of our button.
It is ideal to put the parameters "leading" and "trailing" on seperate lines for readability.


