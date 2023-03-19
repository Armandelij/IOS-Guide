# Complex Layouts

What we are going to build 

// video file

This project assumes that you have built the nessecary individual views needed to implement them into our contentView. We will only be covering the
organization of those individual views and how to organize them so you arrive at the video above.




## 1st Section and its code


https://user-images.githubusercontent.com/64448202/226215976-5d65447d-a412-4f81-8427-d8d80d431512.mov


<img width="992" alt="Screenshot 2023-03-19 at 7 19 45 PM" src="https://user-images.githubusercontent.com/64448202/226216091-eb734a5c-fba8-46f2-9536-5528eeac1fd1.png">





**NavigationView:** With Navigation view we can push and pop views on and off one another as well as setting a title and adding buttons. In this example 
it is primarly used as a parent container to all the views as well as to give us the "Animal" title which is located at the top left hand side in bold.

**ScrollView:** ScrollView is responsible for giving us the ability to vertically scroll all of its child views. This will be more noticable when
when we add more views inside of it. We can also specify the direction in which the content scrolls, in the case of the content above we used the
.horizontal modifier so we can scroll horizontally. 



**LazyHStack:** Allows us to load our content horizontally as it appears on the screen and not all at once. Within the LazyHStack we implement a **ForEach** loop that allows us to loop over all of the information in out animal variable. 


## 2nd Section and its code

https://user-images.githubusercontent.com/64448202/226216650-108d0aa6-2df6-4db9-b492-efba1c81b1e8.mov


<img width="914" alt="Screenshot 2023-03-19 at 7 34 25 PM" src="https://user-images.githubusercontent.com/64448202/226216812-0b0879f8-dac0-43be-8dee-99110eb8f7fa.png">

**LazyHGrid:** LazyHGrid gives us access to **rows** and **spacing** argument and with that we can specify how many rows we want as well as the spacing 
bwtween those rows. To make contentView easier to read a rows constant was created, so when we implement it in the **LazyHGrid** it is easier to read


<img width="914" alt="Screenshot 2023-03-19 at 7 34 46 PM" src="https://user-images.githubusercontent.com/64448202/226216821-5438da8f-8b02-417e-a89b-9cf33ddd26ce.png">

For this view the only thing we changed was the view, we changed it from the **AnimalCardView()** to **AnimalTileView()** The nessecary arguments 
associated with the **AnimalTileView()** were also implemented. 




## 3nd Section and its code

https://user-images.githubusercontent.com/64448202/226217848-08d8c02d-6734-4bc4-ad68-9902dc4333b9.mov








