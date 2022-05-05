# Programatic Navigation

Programatic Navigation allows us to activate a navigation link setting what state it is watching to true. We can do this by using the isActive parameter. 

## Example
``` swift
struct ContentView: View {
    @State private var isShowingDetailedView = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: Text("Second View"), isActive:
                                $isShowingDetailedView) { EmptyView() }
                
                Button("Tap to show detail") {
                    self.isShowingDetailedView = true
                }
            }
                .navigationBarTitle("Navigation")
        }
    }
}
```

1. The isActive parameter is tied to the NavigatinonLink and it allows us to read or write whenever the navigation link is currently active.
2. The isActive parameter is binded to $isShowingDetailView because it need to watch for the change in state. The @State property is tied to the isShowingDetailedView variable. 
3. The Button is set to is true through the when triggered. The triggering of the button is what makes the navigation happen. Now th user does not have to interact with anything inside the navigation link. 

# Progrmatically Showing different Navigation Links
This can be done by creating a tag for the @State variable to watch.


## Example
``` swift
struct ContentView: View {
    @State private var selection: String? = nil // nil by default... nothing being shown
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                // this nav link should show text second view/ when the selection property is equal to second.
                NavigationLink(destination: Text("Second View"), tag: "Second",  selection: $selection) { EmptyView()}
                
                NavigationLink(destination: Text("Third View"), tag: "Third", selection: $selection) {EmptyView()}
                
                
                Button("Tap to show second") {
                    self.selection = "Second"
                }
                
                Button("Tap to show third") {
                    self.selection = "Third"
                }
            }
                .navigationBarTitle("Navigation")
        }
    }
}
```


``` swift
 @State private var selection: String? = nil
 ```
The optional variable with the @State property can be of any type it should be set to nil, so nothing is shown on the screen.

``` swift
NavigationLink(destination: Text("Second View"), tag: "Second",  selection: $selection) { EmptyView()}
```
The navigation link above says, show destination "Second View" when the the selection property is equal to "Second"

