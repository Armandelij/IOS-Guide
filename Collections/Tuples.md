# Tuples

## Tuples are a collection of values that do not have to share the same type.

> The values in tuples are usualy related pieces of data that mean something when looked at collectivley. 

## Example

``` swift
let elijahsJeep = (2022, "Elijah", "manuel",  98000)

```

## Accessing the tuples values

> values in a tuple can be accessed by there position 

``` swift
//                  0       1         2         3  These numbers represent the position of each value in the tuple
let elijahsJeep = (2022, "Elijah", "manuel",  98000)
elijahsJeep.0 // 2022
elijahsJeep.1 // "Elijah"
```
> Its ideal to use words instead of numbers regarding your values because it gives provides more insight when evaluating a tuple. 

``` swift
let elijahsJeep = (manufactured: 2022, owner: "Elijah", transmission: "manuel", odometer: 98000)
elijahsJeep.transmission
elijahsJeep.owner
```
Now you can access values within the tuple using the provided name associated with each value, this creates less confusion when evaluating your code.

If you want to put a group of desired values into a variable, you can do that in one line of code.

``` swift
let (year, possesor, type, odometer) = elijahsJeep
```


