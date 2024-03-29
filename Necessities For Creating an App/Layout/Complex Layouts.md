# Complex Layouts

What we are going to build 

https://user-images.githubusercontent.com/64448202/226217848-08d8c02d-6734-4bc4-ad68-9902dc4333b9.mov

This project assumes that you have built the nessecary individual views needed to implement them into our contentView. We will only be covering the
organization of those individual views and how to organize them so you arrive at the video above.




## 1st Section and its code


https://user-images.githubusercontent.com/64448202/226215976-5d65447d-a412-4f81-8427-d8d80d431512.mov


<img width="992" alt="Screenshot 2023-03-19 at 7 19 45 PM" src="https://user-images.githubusercontent.com/64448202/226216091-eb734a5c-fba8-46f2-9536-5528eeac1fd1.png">





**NavigationView:** With NavigationView we can push and pop views on and off one another as well as setting a title and adding buttons. In this example 
it is primarly used as a parent container to all the views as well as to give us the "Animal" title which is located at the top left hand side in bold.

**ScrollView:** ScrollView is responsible for giving us the ability to vertically scroll all of its child views. This will be more noticable when
when we add more views inside of it. We can also specify the direction in which the content scrolls, in the case of the content above we used the
.horizontal modifier so we can scroll horizontally. 



**LazyHStack:** Allows us to load our content horizontally as it appears on the screen and not all at once. Within the LazyHStack we implement a **ForEach** loop that allows us to loop over all of the information in our animal variable. 


## 2nd Section and its code

https://user-images.githubusercontent.com/64448202/226216650-108d0aa6-2df6-4db9-b492-efba1c81b1e8.mov


<img width="914" alt="Screenshot 2023-03-19 at 7 34 25 PM" src="https://user-images.githubusercontent.com/64448202/226216812-0b0879f8-dac0-43be-8dee-99110eb8f7fa.png">


<img width="914" alt="Screenshot 2023-03-19 at 7 34 46 PM" src="https://user-images.githubusercontent.com/64448202/226216821-5438da8f-8b02-417e-a89b-9cf33ddd26ce.png">

**LazyHGrid:** LazyHGrid gives us access to **rows** and **spacing** argument and with that we can specify how many rows we want as well as the spacing 
bwtween those rows. To make contentView easier to read a rows constant was created, so when we implement it in the **LazyHGrid** it is easier to read

For this view the only thing we changed was the view, we changed it from the **AnimalCardView()** to **AnimalTileView()** The nessecary arguments 
associated with the **AnimalTileView()** were also implemented. 




## 3nd Section and its code

https://user-images.githubusercontent.com/64448202/226217848-08d8c02d-6734-4bc4-ad68-9902dc4333b9.mov


<img width="984" alt="Screenshot 2023-03-21 at 9 25 39 PM" src="https://user-images.githubusercontent.com/64448202/226778000-e364ffab-1f3f-4b42-9f99-50be896e1ec4.png">

In the third section we implement a LazyVStack which is similar to our other LazyV/H stacks views. In this LazyVStack a we have access to the "pinned Views" argument which lets us specify different headers for our content. 

**Section** We can specify our section with a header so Xcode will generate it for us. Here we insert our ForEach loop into our section and at the end ouf our section we can customize our header for this specific section.

<img width="435" alt="Screenshot 2023-03-21 at 10 04 46 PM" src="https://user-images.githubusercontent.com/64448202/226783137-58acc044-b294-41ce-bdad-c39ab3a173cc.png">


## Thanks for viewing you can check out the entire project by following the link below

Project Files: https://github.com/Armandelij/ScollView-MiniProject-


