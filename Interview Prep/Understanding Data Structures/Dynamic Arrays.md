# Dynamic Arrays

## How do Dynamic Arrays Work
A dynamic array grows automatically when you try to add elements to an array that is at its capacity. 

## APPROACH

When an array is full and you want to add an element you will need to create a function. The function creates a new array that can be of a specific size
(bigger than the previous). The function would also copy the elements from the last array. You can reduce the size of the array, remove and add elements from a position in the array. 

## Features of a Dynamic Array

**ADDING ELEMENTS** 

 Add an element to the end of the array (most efficient). This will keep the time complexity constant (meaning this operation will take the same 
 time to complete no matter how large the array is.
 
 You can insert elements within an array but this is costly because all the elements in the array will have to shift backward by 1 index which takes *n* steps
 
 ``` swift
people.insert("Kevin", at: 2)

``` 
 
> Ideally you want to add elements to the end of an array, if what you need calls for you to add elements to the beginning of an array, a different data structure should be used. 

You can append an element to the end of an array in swift by using  (arrayName.append)

``` swift

people.append("Bob") // this will add "Bob" to the end of a string array named people

```
 
 An additional factor that determines the speed of inserting an element is the capacity of the array. If you try to add elements to an array
 that is at maximum capacity the array must restructure itself to make more room for more elements. 
 > You do this by copying all the elements in the current array to the elements in a bigger container. This comes at a time cost because all the elements within the array will have to be visited and copied. 

So if a copy of an array is made, an insertion of an element at the end of the new array with the copied elements could take **(n)** steps to complete.

> Swift's standard library has a strategy that minimizes the times a copy needs to occur. The library will double the capacity of the storage each time it runs out of capacity.
 
 
 **DELETING ELEMENTS** 
 
 It is ideal to delete elements from the end of an array because all of the elements do not have to shift as opposed to deleting elements at a specific index. However, you can still delete elements at specific indexes like the first index and any index. below are different methods and their use cases when deleting elements
 
 
 ``` swift
 people.removeFirst() // this will remove the first element in the people array. 
 
 people.remove(at: 1) // this will remove the element at the second index in the array named people
 
 ```
 
 > .removeFirst() and .remove(at:) will modify the origional array
 
 
 ``` swift
  print(people.dropFirst()) // .dropFirst will not modify the original array.

 ```
 
 **RESIZING AN ARRAY** 
 
 When an array has an extreme amount of capacity compared to its element count resizing the array capacity may be needed because the array is allocating unnecessary memory.
 
 To mitigate reallocation, swift has a "reserveCapacity(_:)" method. This is useful when you know roughly how many elements will occupy the array.
 You can declare this method when you initialize the array.
 
 > You can still append elements that surpass the reserve capacity amount, this will however trigger reallocation.


## ADVANTAGES 
 1. Random access of elements 0(1)
 2. Good locality of reference and data cache utilization
 3. Easy to insert/delete at the end

## DISADVANTAGES
1. Waste more memory than a linked list
2. Shifting elemnts is time consuming
3. Expanding/Shrinking the array is time consuming




 
 
 
 ## Here are more ways to remove elements from an array: 
  
  https://ohmyswift.com/blog/2022/04/24/different-methods-to-remove-the-last-item-from-an-array-in-swift/
 
 
 ## Good resource on Swift arrays: 
 
 https://heartbeat.comet.ml/diving-into-data-structures-in-swift-arrays-4ffd516bde9b
 
 
 
 
 
 
 
