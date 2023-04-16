# NavigationStack

## Pushing a new view on to the navigation stack

To get started using navigationLInk we can simply add a new view to the navigation stack using the code below. It is similar
to using **NavigationView**

``` swift 
var body: some View {

//1
        NavigationStack {
            VStack {
            //2
                NavigationLink("Show Detail View") {
                    DetailView() 
                }
            }
            //3
            .navigationTitle("Navigation")
            
            
        }
    }
}
```
Understanding the code above:
1. NavigationStack is the new API we use instead of **NavigationView**. **NavigationView** is now depricated.
2. Navigation Link will allow us to push view on to the navigation stack 
3. Just like with **NavigationView** in NavigationStack we need use the **NavigationTitle** on a container inside the **NavigationStack** not on the **NavigationStack**


https://user-images.githubusercontent.com/64448202/232340419-b76ac7a8-3b8c-4f6f-91ff-2cdf0a81f42b.mov

