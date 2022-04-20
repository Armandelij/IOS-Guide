# Dictionaries
## Dictionaries are an unordered collection of pairs where each pair is composed of a key and value.

> Keys must be of the same type and the values must share the same type.
> The same key cannot appear twice in a dictionary, however 1 or more keys can point to the same value.

The difference between dictionaries and arrays are that keys in a dictionary can be of any type and they have no order. However in arrays indexes (the position of each element) has to be of the type int. Furthermore the indexs in arrays sequential (0,1,2,).

## Example

Creating an empty dictionary

``` swift
var wardrobe: [String: Int] = [:] // You must explicitly declare the type of each value and key of an empty dictionary. 
```

Creating a dictionary with stored values

``` swift
//                     Key    Value
var classAndGrades = ["Math": "C", "Science": "A"] // the compiler knows that you want a string for the key and value by use of type inferance. No need to explictly declare the type.
```

## Updating an Existing Dictionary.
You can update the value of a dictionary by using the .updateValue method

``` swift
//                   value           key
wardrobe.updateValue("8", forKey: "Jeans")
```
You can also update a dictionary by using short hand syntax

``` swift
wardrobe["T-Shirts"] = 20
```

## Accesseing Values in a Dictionary

``` swift
wardrobe = ["Jeans": 8, "T-Shirts": = 20, "Shoes": 5, "Hoodies": 6]
```

You access the value of a dictionary by provided the name of the dictionary followed by the key surrounded in brackets.
``` swift
wardrobe["Shoes"] // 5
```
> You can use some of the same methods on dictionaries as you can with arrays. For example, to see if an array is empty (.isEmpty) or how many pairs are in the dictionaty (.count) 

``` swift
wardrobe.isEmpty // false
wardrobe.count // 4
wardrobe.removeValue(forKey: "Hoodies") // the remove value methods returns the key, just in case you wanted to do something with it

// Since you cannot have a key without a value in a dictionary. You can set that key with a nil value to remove the pair
wardrobe["Jeans"] = nil // ["T-Shirts": = 20, "Shoes": 5]
``` 

## Iterating Through Dictionaries
You can iterate through Dictionaries using a couple of methods. Using the for loop just like arrays but you have to account for the keys and values. You can also use the (.keys) or (.values) method

``` swift
       key      value
for (clothes, quanity) in wardrobe { // the (quanity) and (clothes) indexs are made up names for the key associated with the clothes and value associateed with the quanity, they can be any given name. Make sure the name given to the key is first
  print("I have \(quanity) \(clothes)")  
}
```
> If you want to exclude a Key or Value you can insert an underscore (_) in place of the endisired Key or Value
``` swift
for (clothes, _) in wardrobe {

}
```

> you can also use the .keys or .values method
``` swift
for clothes in wardrobe.keys { // here you can eliminate the need tor and underscore

}

for quanity in wardrobe.values { 

}
```











