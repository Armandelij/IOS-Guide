# Arrays 

Arrays are a generic storing container that stores an ordered collection of elements. 

## Example

``` swift 
let colors = ["Red", "Blue", "Green"]
```
> Since an array is a sequence you can iterate through it at least once
> Its also a collection, meaning that it can be traversed multiple times.

Arrays are known as a generic collection because it can work with any type.

## Order

Arrays have an order, the elements in the array correspond to a 0 based index. You can retrieve an element from the array by doing the following:

``` swift
colors[0]

```

## Random Access

Arrays have random access collection which allows you to retrieve an elemtn in a constant amount of time. This houldnt be taken for granted, data structures
such as linked lists and and tree do not have constant access time.

## Insert Location 

The most efficiant way in adding an element to an array is to append it to the end to the array.

``` swift
colors.append("Black")
print(colors) // ["Red", "Blue", "Green", "Black"]
```

You can insert elements anywhere inside the array, this comes at a cost because now the elements within the array have to shift backwards to accomodate
space. 

``` swift
colors.insert("Yellow", at: 0)
```
With arrays it is not ideal to insert elements at the beginning of the array, if this is a need, it would be better to use a different data structure. 


