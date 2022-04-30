# Passing Data Between Views

## Example
In order to disply data on the next view you have to pass in data. So we will create a new Struct view and name it ResultView.

Next..

We will create a variable body which conforms to some View. Whats inside here will be displayed on the screen. 

``` swift
struct ResultView: View {
    var choice: String
    
    var body: some View {
        Text("You chose \(choice)")
    }
}
```

In the ContentView Struct we show whats in the ResultViews body view by using a NavigationLink.

In ContentView we can use the navigationLink() with its its destination: argument and provide it with our ResultView Struct. Inside our ResultView we can pass in the choice argument and provide a value.

  ``` swift
   struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
               Text("Heads or Tails")
                
                NavigationLink(destination: ResultView(choice: "Heads")) {
                    Text("Choose Heads")
                }
                
                NavigationLink(destination: ResultView(choice: "Tails")) {
                    Text("Chose Tails")
                }
                
                
                
            }
                .navigationBarTitle("Navigation")
        }
    }
}
   ```

https://user-images.githubusercontent.com/64448202/166123743-6340df0f-fc83-4482-84d6-919e0018b4f8.mov





