# NavigationStack

## Pushing a new view on to the navigation stack

To get started using navigationLInk we can simply add a new view to the navigation stack using the code below. It is similar
to using **NavigationView**

This **NavigationLink** with **titleKey:destination:** will provide a clickable title and once clicked it will take your desired detailed view.

<img width="676" alt="Screenshot 2023-04-16 at 4 53 55 PM" src="https://user-images.githubusercontent.com/64448202/232341637-30c34659-a897-4f9a-b02a-9bb84e2270c7.png">

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


## Understanding **NavigationLink**

We can also use a **NavigationLink** that provides a value which allows you to present views based off of its value. This can be Decodable Encodable or a Hashable value. For example if you have a struct that struct will have to conform to the hashable and codable protocol. Once conformed it can then be used as a value in the **NavigationLink** 


<img width="676" alt="Screenshot 2023-04-16 at 4 51 44 PM" src="https://user-images.githubusercontent.com/64448202/232341507-36f77313-1963-4f58-8154-ece941970d76.png">

``` swift 
//1
let items = ["🍏", "🍐", "🍉", "🍇", "🍒", "🍊", "🥝", "🍑", "🍋", "🍍"]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(items, id: \.self) { fruit in
                                        //2                   3
                    NavigationLink("I choose \(fruit)", value: fruit)
                    }

```

Understanding the code above: 
1. Our array of items is a String of emojis. This is important to remember because our type has to fulfill the requirements
of the value. Which it does Strings, Ints, Bools are all inatley hashable and codable. 
2. Out title is a string protocol, this means it has to be a string type.
3. Our value type which is our fruit is what will be bounded to our **.navigationdestination**. The **.navigationdestination** is what will
display our view

## Navigation Destination

Navigation Destination is the new method added to SwiftUI, it returnes the destination based off of the value in the 
**NavigationLink**

<img width="580" alt="Screenshot 2023-04-18 at 10 44 28 AM" src="https://user-images.githubusercontent.com/64448202/232813445-bc4ee787-0b36-4a3b-9c40-e549099270ad.png">


Above you see there are two types of .navigationDestination methods, we are going to use the **(for:destination)**. This one will present views based off of our value in our navigationLink. The other **.navigationDestination** mehtod will present a
view based off of a binding. 

The **.navigationDestination** has to be placed somewhere inside the NavigationStack and not on the view itself. (DO NOT ATTATCH INSIDE A LOOP OR LIST ATTATCH IT TO THE CONSTRUCT ITSELF )

``` swift

struct Tab1: View {
    struct Tab1: View {
    let items = ["🍏", "🍐", "🍉", "🍇", "🍒", "🍊", "🥝", "🍑", "🍋", "🍍"]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(items, id: \.self) { fruit in
                    NavigationLink("I choose \(fruit)", value: fruit)
                    }
                //1                            2              3
                .navigationDestination(for: String.self) { fruit in
                    //4
                    ChosenView(item: fruit)
                }
```

Understanding the code above:
1. Notice how the **.navigationDestination** is on the **List** itself not in the list.
2. The navigation is for a type and the type in our case is a String, we identify the type by adding self. (String.self)
3. We get an instance of our hashable type (you can name it whatever youd like), for our purposes we named it fruit because it is a string that represents our fruit..
4. The body of the closure is the view that we want to display. We can pass our instance into view to show the UI.


## Here is all of the code 
``` swift
import SwiftUI

struct Tab1: View {
    let items = ["🍏", "🍐", "🍉", "🍇", "🍒", "🍊", "🥝", "🍑", "🍋", "🍍"]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(items, id: \.self) { fruit in
                    NavigationLink("I choose \(fruit)", value: fruit)
                    }
                //1                            2              3
                .navigationDestination(for: String.self) { fruit in
                    //4
                    ChosenView(item: fruit)
                }

                
                HStack {
                    NavigationLink("Tap to show preferred", value: items[7])
                        
                    NavigationLink(value: "🌊") {
                        Text("Other")
                    }
                }
                .buttonStyle(.borderedProminent)
                
            }
            .padding()
            .navigationTitle("Fruit of the Day")
            .navigationDestination(for: String.self) { stringValue in
                ChosenView(item: stringValue)
            }
        }
    }
}

struct Tab1_Previews: PreviewProvider {
    static var previews: some View {
        Tab1()
    }
}

struct ChosenView: View {
let item: String
var body: some View {
 Text("You chose \(item)")
        }

}
```

https://user-images.githubusercontent.com/64448202/232845308-157f8e14-bceb-41c3-ab80-875469cc4def.mov







