## Tabs

Tabs are another way to navigate throught an application. Normally they are at the top or bottoom of a view, also the information associated with the 
tab is unrelated to the other tab(s)

![Screenshot 2023-04-04 at 11 07 53 AM](https://user-images.githubusercontent.com/64448202/229836335-474994c6-8ed3-4bf9-b791-841be6e897d4.png)

1. To start create a **FirstTab** and **SecondTab** folder

![Screenshot 2023-04-04 at 11 13 07 AM](https://user-images.githubusercontent.com/64448202/229837915-37a1ca9b-2c54-46cb-a765-49a41703cc25.png)

2. Now we will create the views we want our tabs to navigate to

![Screenshot 2023-04-04 at 11 33 34 AM](https://user-images.githubusercontent.com/64448202/229843352-67110465-cebc-4360-b7b1-4be839525313.png)

3. In our First and Second Tab Views we are just going to display some text to differenciate between different view when they are clicked on

``` swift
import SwiftUI

struct FirstTabView: View {
    var body: some View {
        Text("First Tab")
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
```

4. Do the same for the second tab view but use 

``` swift
Text("Second Tab")
```

## Content View

Content View is where we will add our **TabView**. This will house our **FirstabView** and our **SecondTabView**

``` swift

struct ContentView: View {
    var body: some View {
    //1
        TabView {
            //2
            FirstTabView()
            //3
                .tabItem{Text("First")}
            //4
                .tag(1)// sets a unique tag value for this view
            
            SecondTabView()
                .tabItem{Text("Second")}
                .tag(2)

            }
        }
    }
```

Understanding what we did in the code above:
1. We created a **Tabview{}** that will hold our views as well as our **tabItem**. 
2. We added our **FirstTabView** this is what will be shown when the **tabItem** is pressed. 
3. **tabItems** are the actual buttons the user will tap on, the text is the name that will be displayed for the user to tap on. It is a modifier that is attatched to the view to be shown. 
4. **.tags** are used to distinguish views from one another.




https://user-images.githubusercontent.com/64448202/229858203-a0f18f68-07a1-428d-b44c-c04f29e31c79.mov






