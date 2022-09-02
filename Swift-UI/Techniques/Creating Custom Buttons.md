# Creating Custom Buttons

We can go beyond stock buttons that Apple has given us and create our own buttons.

``` swift
var body: some View {
        
        //MARK: - Custom buttons
        
        Button { // closure for action
            print("Button was tapped") // action
        } label: {
            Text("Tap me!") // adds a label to the center of the button. The modifiers modify the Text()
                .padding()
                .foregroundColor(.white)
                .background(.red)
        }
    }
``` 

The making of a cutom button starts out by:
1. Using the "Button" keyword then a closure.
3. The closure contains the action the button will perform. This can and should be an outside function, that is in another struct.
5. After the first closure we will brovide the **label:** keyword to start our label, this will be followed by another closure which will have the
label and all of its modifications 

> When modifying, the order of the modifiers is important. 


<img width="317" alt="Screen Shot 2022-09-02 at 3 04 11 PM" src="https://user-images.githubusercontent.com/64448202/188220688-7df41bd9-f4a1-4ce0-831f-c2717057db72.png">

``` swift
var body: some View {
        //MARK: - Custom buttons
        
        Button {
            print("Edit functionality")
        } label: {
//            Image(systemName: "pencil") // When you want just an image
            Label("Edit", systemImage: "pencil") // when you want an Image and label
        }
        
    }

```

<img width="317" alt="Screen Shot 2022-09-02 at 3 18 18 PM" src="https://user-images.githubusercontent.com/64448202/188222585-e9551bf2-bd00-4e3b-afc7-516b146f2ffb.png">







