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

> It is important to understand that the compliler does not know if the optional has a value, until it is unwrapped. There are many ways to unrap optionals

## Force Unwrapping
Force unwrapping, unwraps the variable without checking if there is a value or not. The lack of a value when that variable is unwrapped will result in a fatal error, which will crash the app. 



``` swift
var unwrappedCarModel = carModel! // Use an (!) after the optional name to tell the compiler to force unwrap it. 
```
In the above code a new variable is assigned to the optional variable in case that variable does have a value. If the variable does contain a value it will be stored in the decalred variable. Provide a (!) after the optional variable to tell swift to force unrwap it.


## Optional Binding

``` Swift
if let carModel = carModel { // sharing variable and constant names is called shadowing
    print("My favorite car is \(carModel)")
} else {
    print("I dont have a favorite car")
}
```
The code above says "if this optional is not nil, store the value of the optional in this new constant"


## Nil Coalescing

Nil coalescing will allow you to check and see if there is a value in an optional variable. If there is no value (nil), you can set a default value.

``` swift
var firstName: String?
var requiredFirstName = firstName ?? "You must provide a first name" // The value after the ?? is the default value that will be stored in the decalred variable if the optional variable is nil.
```


