# Navigation Bar

We can add a navigation bar to the top of the UI to indicate the content of what is on the page. We can use the **Navigation {}** in our view and it will 
return a view like this:

``` swift
 NavigationView {
            Form {
                Section {
                    Text("Hello, world!")
                }
            }
            .navigationTitle("Wassup")
        }
```


<img width="1009" alt="Screen Shot 2022-08-28 at 8 56 43 PM" src="https://user-images.githubusercontent.com/64448202/187103208-7f2569fb-7831-4c54-be9e-9ce0f198198c.png">


To add a title to the top of the page we have to attatch it to whatever content is inside the navigation view. In the case above the modifier is attatched to the **Form{}** 

You can also have a smaller font by using 

``` swift
.navigationTitle("Wassup")
.navigationBarTitleDisplayMode(.inline)
```



