# ScrollViewReader

Allows us to scroll down in a Scroll View to a particular location to display a view.

## Example

``` swift
struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        ScrollView {
            ScrollViewReader { value in // lets us refer to things within the ScrollView for scrolling purposes
                Button("Jump to #5") {
                    value.scrollTo(5) // scrolls to the vie of identifier #8 and will take the laziest view to default.
                }
                
                ForEach(0..<10) { i in
                    Text("Example \(i)")
                        .frame(width: 300, height: 300)
                        .background(colors[i % colors.count])
                        .id(i)
                }
            }
        }
    }
}
```
Inside the ScrollView we add a ScrollViewReader which will allow us provide code that will pass us data reagrding the code provided.

``` swift
ScrollView {
            ScrollViewReader { value in // lets us refer to things within the ScrollView for scrolling purposes
                Button("Jump to #5") {
                    value.scrollTo(5) // scrolls to the view of identifier #8 and will take the laziest view to default.
                }
```
The "value in" will lets us refer to things within the ScrollView for scrolling purposes.

The Button, once pressed will scroll to the view with the identifier 5 using the "value.scrollTo(5)" 
> It will default to the laziest view, meaning that it will display the view in the most efficiant manner, in this case since the view scroll from bottom to 
> top view 5 will appear at the bottom of the screen once the button is pressed.
> if you want the view to scroll to a desired position on the screen you can anchor parameter in "value.scrollTo(5, anchor: .top)". This will display the view 
> on the top of the screen. 

``` swift
ForEach(0..<10) { i in
                    Text("Example \(i)")
                        .frame(width: 300, height: 300)
                        .background(colors[i % colors.count])
                        .id(i)
                }
 ```
 The ".id(i)" refers to each view up to 10
 

https://user-images.githubusercontent.com/64448202/168473856-8f0c0c7a-64ed-4195-80f6-3a116c78389c.mov


 


