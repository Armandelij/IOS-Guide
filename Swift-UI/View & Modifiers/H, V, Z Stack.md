# H-Stack
H stack arranges its children (contents inside the bracket) on a Horizontal line.

## Example

``` Swift
struct ContentView: View {
    var body: some View {
        HStack{ // Anything between these brackets will align horizontally in the UI
            Text("Hello World!")
                .background(Color.red)
            Text("Hola World!")
                .background(Color.blue)
            Text("Salut World")
                .background(Color.orange)
        } //
    }
}
```

<img width="325" alt="Screen Shot 2022-04-26 at 11 00 31 AM" src="https://user-images.githubusercontent.com/64448202/165330642-a365e748-c2a1-4ec1-9a8b-29b76de83997.png">



