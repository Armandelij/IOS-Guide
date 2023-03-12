# Dynamic Arrays

## How do Dynamic Arrays Work
A dynamic array grows automatically when you try to add elements to an array that is a its capacity. 

## APPROACH

When an array is full and you want to add an element you will need to create a function. The function creates a new array that can be of a specific size
(bigger than the previous). The function would also copy the elements from the last array. You can reduce the size of the array, remove and add elements from a postion in the array. 

## Features of a Dynamic Array

**Adding Elements** 

 Add an element to the end of the array (most efficiant). This will keep the time complexity constant (meaning this operation will take the same 
 time to complete no matter how large the array is.)
 
 You can insert elements within an array but this is costly because all the elements in the array will have to shift backwards by 1 index which takes *n* steps
 
> Ideally you want to add elements to the end of an array, if what you need calls for you to add elements to the beginning of an array, a different data structure should be used. 

You can append an element into an array in swift by using  (arrayName.append)

``` swift

people.append("Bob") // this will add "Bob" to a string array named people

```

Below are different methods for adding elements to an array

``` swift
people.insert("kevin", at: 2)


``` 

 
 An additional factor that determines the speed of inserting an element is the capacity of the array. If you try to add elements to an array
 that is at maximum capacity the array must restructure itself to make more room for more elements. 
 > You do this by copying all the elemets in the current array to the elements in a bigger container. This comes at a time cost because all the elements within the array will have to be visited and copied. 

So if a copy of an array is made, an insertion of an element at the end of the new array with the copied elements could take **(n)** steps to complete.

> Swifts standard library has a strategy that minimizes the times a copy needs to occure. The library will double the capacity of the storage each time it runs out of capacity.
 
 
 **Deleting Elements** 
 
 It is ideal to delete elements from the end of an array because all of the elements do not have to shift if you're deleting elements at a specific index. However you can still delete elements at specific indexs like the first index and at any index. below are different methods and there use cases when deleting elements
 
 
 ``` swift
 people.removeFirst() // this will remove the first element in the people array. 
 
 people.remove(at: 1) // this will remove the the element at the second index in the array named people
 
 ```
 
 > .removeFirst() and .remove(at:) will modify the origional array
 
 
 ``` swift
  print(people.dropFirst()) // .dropFirst will not modify the original array.

 ```
 
 > Here are more ways to remove elements from an array: https://ohmyswift.com/blog/2022/04/24/different-methods-to-remove-the-last-item-from-an-array-in-swift/
 
 
 
 
 
 
 
 
 
 
