# Reading text from user with TextField.md

To allow this we need 3 things:

1. A state property that will monitor itself and re-invoke the UI when it changes
2. Text field that will allow the user to enter in data.
3. We can use the **text** or **value** parameter that will allow the user to use the **$** to bind whatever state property that needs to be shown. 

## Example 

``` swift
struct ContentView: View {
    @State private var username = "" // This is a state property that will monitor the username variable and it will update itself whenever there is a change.
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username) // The first parmameter is the name you want to display and the second is the binding you want to be written on the UI. In this case it is "username"
            }
        }
    }
}
```

https://user-images.githubusercontent.com/64448202/187346904-0f9c2348-015e-472e-b916-ebb33f19dd3f.mov


The state property monitors any changes to the variable its wrapped with and sends it to the **$username**. The @State property will re-invloke the UI 
whenever it changes and the **$** will display those changes. 

