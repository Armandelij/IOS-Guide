# Dynamic Arrays

## How do Dynamic Arrays Work
A dynamic array grows automatically when you try to add elements to an array that is a its capacity. 

## APPROACH

When an array is full and you want to add an element you will need to create a function. The function creates a new array that can be of a specific size
(bigger than the previous). The function would also copy the elements from the last array. You can reduce the size of the array, remove and add elements from a postion in the array. 

## Features of a Dynamic Array

**Adding Elements:** 
 Add an element to the end of the array (most efficiant). This will keep the time complexity constant (meaning this operation will take the same 
 time to complete no matter how large the array is.)
 
 You can insert elements within an array but this is costly because all the elements in the array will have to shift backwards by 1 index which takes *n* steps
 
> Ideally you want to add elements to the end of an array, if what you need calls for you to add elements to the beginning of an array, a different data structure should be used. 
 
 An additional factor that determines the speed of inserting an element is the capacity of the array. If you try to add elements to an array
 that is at maximum capacity the array must restructure itself to make more room for more elements. 
 > You do this by copying all the elemets in the current array to the elements in a bigger container. This comes at a time cost because all the elements within the array will have to be visited and copied. 

So if a copy of an array is made, an insertion of an element at the end of the new array with the copied elements could take **(n)** steps to complete.

> Swifts standard library has a strategy that minimizes the times a copy needs to occure. The library will double the capacity of the storage each time it runs out of capacity.
 
