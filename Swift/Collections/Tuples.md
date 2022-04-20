# Sets
Sets are an unorder collection of unique values of the same type.

## Creating an empty Set
``` swwift 
var setOne: Set<Int> = [1, 2, 3,]
```
You can populate, remove, and check if a calue is present by using some of the same methods used when operating with arrays.
``` swift
someSet.insert(7)
someSet.remove(2)// the remove method returns the removed element. So the element can be stored in a variable
```
> You can also compare sets with other sets
``` swift
var setOne: Set<Int> = [1, 7, 3,]
let setTwo: Set<Int> = [5, 7, 13]

let intersection = setOne.intersection(setTwo) // The .intersection method will return the common elemnts between the two sets, in this case it will be (7)
let difference = setOne.symmetricDifference(setTwo)// The .symmetricDifference will returne the different elemnts between the two sets.
let union = setOne.union(setTwo) // The .union method returns all the elements from both Sets without repeating them. 
```
