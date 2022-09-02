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
