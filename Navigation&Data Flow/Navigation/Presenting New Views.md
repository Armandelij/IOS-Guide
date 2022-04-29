# Presenting New Views
If you want to navigate to another view use the NavigationView{} wrapped around the view you want to display on the UI

## Example

``` swift
struct ContentView: View {
    var body: some View {
        NavigationView {  
            Text("Wassup")
        }
    }
}
```

> Most of the time the (NavigationView{}) should be a the top level thing inside your view. Tabviews are an exception here. 

## Handling Titles for Navigation Views

Labeling the title using the (.navigationBarTitle()) modifier of the navigation View should be attached to the view that is wrapped inside the navigation view.
> Since the navigation view can push and pop views it would make sense to label the content inside the view, so swift can change the lable accordingly depending on the given name.


``` swift 
struct ContentView: View {
    
    
    var body: some View {
        NavigationView { //
            Text("Wassup")
                .navigationBarTitle("Navigation")
        } //
    }
}
```
![Screen Shot 2022-04-28 at 9 41 05 PM](https://user-images.githubusercontent.com/64448202/165873081-f4de3c21-db75-48d2-b2f0-1d7d8172a24b.png)

> If we use the .navigationBarTitle() on the NavigationView{}, what we are saying is that all contents inside the NavigationView will have the same label, which in most cases is not ideal.

## Using Navigation Link
The (NavigationLink) will allow you to push and pop views.

``` swift
struct ContentView: View {
    
    
    var body: some View {
        NavigationView { 
            NavigationLink(destination: Text("Second View")) { //
            Text("Wassup")
            } //
                .navigationBarTitle("Navigation")
        }
    }
}
```

The NavigationLink has a destination and that destination will be what is displayes when the it navigates to that view. What is wrapped inside the brackets of the navigatio link will be a button for the user to press which will send them to the second screen. 

https://user-images.githubusercontent.com/64448202/166080641-1053586a-2c36-4af0-b1b6-444516276523.mov

> swift adds color to the navigation link in the UI and turns it blue to notified users that it is interactive. However in certain cases for example when you add an image as a navigation link swift will turn the image blue to signify it is interactive.
>  In this case use the (.renderingMode(.origional)) modifier on the image to restore it back to normal.
















