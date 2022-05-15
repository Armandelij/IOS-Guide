#Lazy V & H Stacks
lazy V and H Stacks only load the content that is present on the screen, this is more efficient when there is a lot of content to load. 

> Regular V and H stacks load all of the content up front which can troublesome of there is a lot of content to load. 

## Example
``` swift
struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1...10000, id: \.self) {value in
                    Text("Row\(value)")
                }
            }
        }
    }
}
```

The ScrollView is created to make sure that each element can scroll into view

The LazyVStack is then put into the ScrollView. This will tell swift UI to only load the contnet once it scrolls into view.

Inside the LazyVStack is code that will display 10,000 rows of numbers

> Again swift will load each element as they scroll into view. 


https://user-images.githubusercontent.com/64448202/168471068-2fb15f94-7ce9-4575-aebd-d75619f013b9.mov





