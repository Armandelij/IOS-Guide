# Dictionaries
## Dictionaries are an unordered collection of pairs where each pair is composed of a key and value.

> Keys must be of the same type and the values must share the same type.
> The same key cannot appear twice in a dictionary, however 1 or more keys can point to the same value.

The difference between dictionaries and arrays are that keys in a dictionary can be of any type and they have no order. However in arrays indexes (the position of each element) has to be of the type int. Furthermore the indexs in arrays sequential (0,1,2,).

## Example

Creating an empty dictionary

``` swift
var wardrobe: [String: Int] = [:] // You must explicitly declare the type of each value and string of an empty dictionary. 

//                     Key    Value
var classAndGrades = ["Math": "C", "Science": "A"] // the compiler knows that you want string for the key and value by use of type inferance. No need to explictly declare the type.
```
