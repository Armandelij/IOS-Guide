# @Published

The @Published property wrapper is used in conjuction with a property that is inside an object. When a property is marked with @Published is changed, the views will
be reloaded to reflect those changes.

## Example

``` swift
class Favorites: ObservableObject {
    @Published var favoriteCars = [String]()
}
```
> The @Published property wrapper allows us to create observable objects that can watch for for changes to the object marked with @Published. 
