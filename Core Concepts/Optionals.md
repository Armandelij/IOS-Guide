# Optionals
## Optionals allow us to represent a value or the absence of a value within a variable.

Optionals can only be used with variables because the value of the variable is subject to change.  Meaning that sometimes the variable will have a value and sometimes it will not, making the variable that holds the value mutable.
A variable with the absence of a value is known as "nil". **nil MEANS THERE IS NO VALUE ** 
  
 Representing the absence of a value with 0 will still result in Swift identifying that variable as having a value because 0 is an Int. Optionals all have a type. It will have type or no type (nil). 
 
 ## Example
  
``` swift 
var carModel: String? // To turn the variable to an optional String. Add a "?" after the type. 
    carModel = "Audi"

```

## Setting optionals to nil will void it of any value

``` swift
var carModel = nil
```

 It is important to understand that the compliler does not know if the optional has a value, until it is unwrapped. There are many ways to unrap optionals

## Force Unwrapping
Force unwrapping, unwraps the variable without checking if there is a value or not. The lack of a value when that variable is unwrapped will result in a fatal error, which will crash the app. 

``` swift
var unwrappedCarModel = carModel! // In case optioanl does contain a value


