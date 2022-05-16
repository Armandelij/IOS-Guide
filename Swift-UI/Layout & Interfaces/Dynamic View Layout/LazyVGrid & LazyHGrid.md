# LazyVGrid & LazyHGrid

Swift provides us with the Lazy V & H Grid that provides us with grid layout with a fair amount of flexibilty. 

You will need at least three things to accomplish a grid, they are:
1. Raw Data.
2. An array of GridItmes that describe the desired layout.
3. Finally a "LazyVGrid or LazyHGrid" that will bring together your data and layout.

## Example 
``` swift
struct ContentView: View {
    // 1. Making Data
    let data = Array(1...1000).map {"Item \($0)"}
    
    //2. define the layout (rows & colomns)
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        ScrollView(.horizontal) { // loads the elements as they scroll on the screen
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(data, id: \.self) {item in
                  VStack {
                      Capsule()
                          .fill(Color.blue)
                          .frame(height: 50)
                      Text(item)
                          .foregroundColor(.secondary)
                      
                      
                      
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
```
First we will enter in the data. The data will be an array of numbers that will transfrom into a string of numbers.

``` swift
struct ContentView: View {
     //1. Making Data
    let data = Array(1...1000).map {"Item \($0)"}
```

Next we will define the layout with rows or colomns 

``` swift
let layout = [
         //adaptive fills the screen the minimum means they will be 80 points in size
         GridItem(.adaptive(minimum: 80))
        ]
```

Now we can make our Grid View

``` swift
var body: some View {
        ScrollView(.horizontal) { // loads the elements as they scroll on the screen
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(data, id: \.self) {item in
                  VStack {
                      Capsule()
                          .fill(Color.blue)
                          .frame(height: 50)
                      Text(item)
                          .foregroundColor(.secondary)
                    
                    }
                }
            }
            .padding(.horizontal)
        }
    }
```

All of the views are lazy loaded, meaning all the views are not loaded upfront and will be loaded as they scroll onto the screen.


https://user-images.githubusercontent.com/64448202/168612021-527a2032-2dc8-4cb6-a6da-63ede6342678.mov






