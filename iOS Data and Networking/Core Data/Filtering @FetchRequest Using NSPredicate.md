# Filtering @FetchRequest Using NSPredicate

With SwiftUIs @FetchRequest proeprty wrapper, we can provide an array of sort descriptors that will control the order of results. Furthermore we can also
provide an NSPredicate to control which results shoild be shown.

 Example set Up: 
 Your Code data model should should like this
 
 <img width="723" alt="Screen Shot 2022-06-18 at 10 25 36 AM" src="https://user-images.githubusercontent.com/64448202/174442825-838cdb46-0fc1-4f89-9a5d-775f3f934c16.png">


Create a ContentView with the code below

``` swift
struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [], predicate: nil) var ships: FetchedResults<Ship>

    var body: some View {
        VStack {
            List(ships, id: \.self) { ship in
                Text(ship.name ?? "Unknown name")
            }

            Button("Add Examples") {
                let ship1 = Ship(context: moc)
                ship1.name = "Enterprise"
                ship1.universe = "Star Trek"

                let ship2 = Ship(context: moc)
                ship2.name = "Defiant"
                ship2.universe = "Star Trek"

                let ship3 = Ship(context: moc)
                ship3.name = "Millennium Falcon"
                ship3.universe = "Star Wars"

                let ship4 = Ship(context: moc)
                ship4.name = "Executor"
                ship4.universe = "Star Wars"

                try? moc.save()
            }
        }
    }
}
```

 Our Fetch Request provides:
 1. sortDescriptors:[]  (This means that Core Data will not display the information in any order) 
 2. predicate:nil (This means there is no filtering)
 3. var ships: (Storing FetchedResult<Ship> in the variable ships)
 
 ``` swift
 @FetchRequest(sortDescriptors: [], predicate: nil) var ships: FetchedResults<Ship>
 ```

The code above returns the ships with no sorting 

<img width="368" alt="Screen Shot 2022-06-18 at 11 01 50 AM" src="https://user-images.githubusercontent.com/64448202/174444416-b75df5f4-028f-4b54-9fd3-9a2a378fd6c3.png">

 
 However we can change the sorting to display only ships from the Star Wars Universe, we can do by altering the predicate. The code below will only display 
 ships from the star wars universe
 
 > The %@ "means insert data from here" It allws us to provide data as a parameter rather than inline
 
 ``` swift
 @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "universe == %@", "Star Wars")) var ships: FetchedResults<Ship>
 ```
<img width="368" alt="Screen Shot 2022-06-18 at 11 19 16 AM" src="https://user-images.githubusercontent.com/64448202/174445018-341d12c5-3a64-4845-abac-caa9e4c3f591.png">

 



