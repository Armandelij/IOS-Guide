# Forms

A lot of apps require a user to input some information, it may ask them to set some preferences and sometimes it may allow you to order food from a menue.

Swift provides us a dedicated view type called **Form {}** Forms are scrolling list of static controls like text and images, however it can also include text, fields, toggle switches, buttons and a lot more.

You can create a basic form with the code below:

``` swift 

Form {
    Text("Hello, world!")
}

```

It will create a view is the simulator that looks like this:

<img width="368" alt="Screen Shot 2022-08-28 at 8 25 25 PM" src="https://user-images.githubusercontent.com/64448202/187101416-64472831-a3f5-40cd-8ab5-097ab71289ea.png">

However you are only allowed to have 10 arguments per form. There are work arounds to this. Within a **Form{}** you can add **Group{}**

<img width="991" alt="Screen Shot 2022-08-28 at 8 37 02 PM" src="https://user-images.githubusercontent.com/64448202/187102077-60b4c5b8-b6f3-4ac6-bb70-de39670357b5.png">

Groups dont change the way the UI looks it just allows you to work around the limitation of 10 child views inside of a parent. 


If you want to split the form into chunks you can use the **Section{}** view. It will look something like this.

<img width="1009" alt="Screen Shot 2022-08-28 at 8 41 48 PM" src="https://user-images.githubusercontent.com/64448202/187102353-a9ba91cb-d249-4e9c-b9c1-b2660d166f81.png">




