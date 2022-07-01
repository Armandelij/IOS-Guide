# EnvironmentObject
@EnvironmentObject allows us to create views that rely on shared data across an entire application. 

## Example

CONTENT VIEW

``` swift
class DataExample : ObservableObject {
    @Published var text = "Counter"
    @Published var counter = 0
}

struct ContentView: View {
    @StateObject var data = DataExample() // lets this view know that the object exists inside this view
    
    var body: some View {
        VStack {
            
            
        }
        .environmentObject(data) // all of the views inside the Vstack will have access to the data object
    }
}
```

We may have a DataExample class like the one below that conforms to the ObservableObject protocol. 

``` swift
class DataExample : ObservableObject {
    @Published var text = "Counter"
    @Published var counter = 0
}
```

> The @StateObject should be created in the same view the origional object was created in. We can use the @EnvironmentObject in place of the @StateObject in other views where the object did not originate from.

``` swift
struct ContentView: View {
    @StateObject var data = DataExample() // lets this view know that the object exists inside this view
```

In this example a VStack is created to line all of its child view vertically. The .environmentObject will be attatched to the end of the VStack so that all of the child views within the Vstack will have access to the object. 

``` swift
var body: some View {
        VStack {
            
            
        }
        .environmentObject(data) // all of the views inside the Vstack will have access to the data object
    
```


Now we will create other views that use the data from the data object and place them into the VStack of the content view so they can have access 

SAMPLEVIEW

``` swift
struct SampleView: View {
    @EnvironmentObject var data : DataExample// only use this inside of a view that has the parent view of the environmentObject data
    
    var body: some View {
        Text("\(data.text) : \(data.counter)")
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
            .environmentObject(DataExample())
    }
}
```

In the SampleView Struct that conforms to the View protocol we will use the @EnvironmentObject and it will be of type DataExample

``` swift
struct SampleView: View {
    @EnvironmentObject var data : DataExample// only use this inside of a view that has the parent view of the environmentObject data
```


In the SampleView_Previews we have to provide the preview with the DataExample() Object using the .environmentObject() method

``` swift
struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
            .environmentObject(DataExample())
    }
}
```
Now we can create our view that displays itself to the UI

``` swift
var body: some View {
        Text("\(data.text) : \(data.counter)")
    }
}
```

Now we will create one last View

TEXTBLOCKVIEW

Similar to the last view we will use the @EnvironmentObject with type DataExample within the TextBlockView

``` swift
struct TextBlockView: View {
    @EnvironmentObject var data: DataExample
``` 


Again this preview also needs the .environmentObject(DataExample()) 

``` swift
struct TextBlockView_Previews: PreviewProvider {
    static var previews: some View {
        TextBlockView()
            .environmentObject(DataExample())
    }
}
```

Now we will customize the view to display it on the UI

``` swift
var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 200, height: 60)
                .foregroundColor(.blue)
                .cornerRadius(9)
            Text("\(data.text) : \(data.counter)")
                .foregroundColor(.white)
        }
        .onTapGesture {
            data.counter += 1
        }
    }
```
The 2 views that we created "SampleView and TextBlockView" can now be added to the Content Views VStack
    
 CONTENTVIEW
 ``` swift
 class DataExample : ObservableObject {
    @Published var counter = 0
}

struct ContentView: View {
    @StateObject var data = DataExample() // lets this view know that the object exists inside this view
    
    var body: some View {
        VStack {
            TextBlockView()
            SampleView()
        }
        .environmentObject(data) // all of the views inside the Vstack will have access to the data object
    }
}
```    
Our results should look like this


https://user-images.githubusercontent.com/64448202/168439943-df0e6caf-ac9c-4d90-8ea1-cace534c749e.mov


    
