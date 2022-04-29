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
        NavigationView {
            Text("Wassup")
                .navigationBarTitle("Navigation")
        }
    }
}
```
![Screen Shot 2022-04-28 at 9 41 05 PM](https://user-images.githubusercontent.com/64448202/165873081-f4de3c21-db75-48d2-b2f0-1d7d8172a24b.png)

> If we use the .navigationBarTitle() on the NavigationView{}, what we are saying is that all contents inside the NavigationView will have the same label, which in most cases is not ideal.
