## Creating a Picker

We can create a picker that will allow us to select from a range of different values.

Just like text fields pickers need a two way binding to a property so their value can be tracked. In our example we will loop through a range of numbers 
(2-99)

``` swift

struct ContentView: View {
    @State private var numberOfPeople = 2 // we need to have a State property to reflect changes to the UI whenever "numberOfPeople" has changed.
    
    var body: some View {
                Picker("Number of people", selection: $numberOfPeople) { // selection is bound to the number of people
                    ForEach(2..<100) { // here we are dynamically creating 99 rows.
                        Text("\($0) people")
                    }
                }
            /*
             If you are in a form{} you will have to add a NavigationView around the form. This will allow ios to slide in new views as needed.
             */
        
    }
}
``` 


https://user-images.githubusercontent.com/64448202/187463280-344f5fc6-5901-4f1a-857d-9cd8b0f5bce0.mov

