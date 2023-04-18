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
