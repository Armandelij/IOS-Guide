# @ObservedObject
The @observedObject allows views to monitor the state of an external object, it will also send an notification of any change referring that object. 
> The @ObservableObject protocol should only be used with objects that have been created else where, this is because SwiftUI might destroy the object. 

## Exammple

``` swift
class Favorites: ObservableObject {
    @Published var favoriteCars = [String]()
}
struct ContentView: View {
    @ObservedObject var favorites = Favorites()
    
    var body: some View {
        Text("")
            .padding()
    }
}
```
The class favorites uses the @Published property to send change announcements when favoriteCars changes 

``` swift
class Favorites: ObservableObject {
    @Published var favoriteCars = [String]()
}
```
ContentView uses @ObservedObject to recieve any changes that the @Published property wrapper sent. 

 ``` swift
struct ContentView: View {
    @ObservedObject var favorites = Favorites()
    
    var body: some View {
        Text("")
            .padding()
    }
}
```
> Any type that is used with the @ObservedObject must conform to the ObservableObject protocol.

> @ObservedObject unlike @StateObject is designed for data outside of your current working view. 

> Not all properties cause a view to refresh, which would signal a view to refresh. So using @Published or custom announcemnts will work. 






