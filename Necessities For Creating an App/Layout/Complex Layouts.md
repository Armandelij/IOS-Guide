# Complex Layouts

What we are going to build 

// video file

This project assumes that you have built the nessecary individual views needed to implement them into our contentView. We will only be covering the
organization of those individual views and how to organize them so you arrive at the video above.

## Starting with the default ContentView

![Screenshot 2023-03-15 at 3 44 58 PM](https://user-images.githubusercontent.com/64448202/225425383-bcde9210-70b1-43b0-875a-0e75d0b6230b.png)


## Concept 1 and its code

https://user-images.githubusercontent.com/64448202/225429198-30e56373-e439-40fc-a6a7-aa17f7c80471.mov


![Screenshot 2023-03-15 at 4 09 51 PM](https://user-images.githubusercontent.com/64448202/225430694-0a2e0793-145b-4f58-8f04-8fd737f21df1.png)

**NavigationView:** With Navigation view we can push and pop views on and off one another as well as setting a title and adding buttons. In this example 
it is primarly used to give us the title which is "Animal" which is located at the top left hand side in bold.

**ScrollView:** ScrollView is responsible for giving us the ability to vertically scroll all of its child views. This will be more noticable when
when we add more views inside of it.

**LazyVStack:** Allows us to load our content as it appears on the screen and not all at once. Within the LazyVStack we implement a **ForEach** loop 
that allows us to loop over all of the information in out animal variable. 
