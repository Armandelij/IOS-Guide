# Creating Views in a Loop

Creating a numerous amount of view by hand can be costly luckily it is possible to create multiple views inside of a loop.

## Example 
``` swift
struct ContentView: View {
    let footballTeam = ["Ravens", "Cardinals", "Chargers", "Chiefs"]
    @State private var selectedTeam = "Ravens"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your team", selection: $selectedTeam) {
                    ForEach(footballTeam, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}
```

The code above does 4 things:
1. Has an array of possible football team names. This array will not mutate so no need to wrap it with @State

``` swift
let footballTeam = ["Ravens", "Cardinals", "Chargers", "Chiefs"]
```

3. Has a @State property that storing the current team selected. When the user selects a team that team will be displayed, this is variable to change that is why its wrapped with @State.

``` swift
@State private var selectedTeam = "Ravens"
```

5. Creates a picker view that asks users to select their favorite team. This uses a two-way bidning to the state property.

``` swift
Picker("Select your team", selection: $selectedTeam) 
```

7. Uses ForEach Loop to loop over all of the football teams. 

``` swift
ForEach(footballTeam, id: \.self) {
                        Text($0)
                    }
```
In the ForEach loop swift will ask us what makes each string unique, in this case each string in thier own right are unique, that is why "\.self" is used. 



## Results


https://user-images.githubusercontent.com/64448202/168802739-9003b99c-bc97-4832-a300-99f48f49804f.mov






