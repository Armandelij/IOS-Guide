# Optionals: An Optional type may or may not hold a value. 
> For example if an Int type is an optional and the number 0 is its stored value, the oprional by definition still has a value associated with it
> because 0 is still a valid value. Also optionals by default can not be constants because their nature implies mutability. 

## Optionals: are represented by a ? next to a VARIABLE

## Example

``` swift

struct Person {
    var firstName: String
    var middleName: String? // Optional value type
    var lastName: String
}


let bob = Person(firstName: "Bob", middleName: nil, lastName: "ThaBuilder")

print(bob.middleName)
```

## Unwrapping Optionals
> Optionals need to be saftley unrwapped. If the compiler expects a value to be there to use within the program and that value is not there, the
> program will crash because it needs that value to continue. 

*Force Unwrapping*: You can force unwrap an optional, this should be done only if you are 101% sure that a value will be there... if not the app will
crash. Force unwrapping is represented by using a ! .


``` swift
let bob = Person(firstName: "Bob", middleName: nil, lastName: "ThaBuilder")

print(bob.middleName!) // this will not compile because there is no value for the middle name.

```

*Optional Chaining*: You can use optional chaining in place of force unwrapping.
You can utilize optional chaining by using ?, similar to using a ! for force unwrapping.
> The result of an optional chaining call is the same as the return value.

``` swift
let firstLetter = bob.middleName?.first // here we are accesssing the middle name property which is an optional, so to access the values of that property we can use dot(.) notataion to access the values or other properties in the case of a class or struct
```
> It more or less allows us to access other properties. 

*Optional Binding*

Optional bindings allow us to saftley unwrap optionals. We start by providing a constant for the value of the variable to be stored in if its avaialble.
If the value is not available, the optional binding will not run. 


``` swift
let bob = Person(firstName: "Bob", middleName: nil, lastName: "ThaBuilder")

func tellMeAboutThePerson(person: Person) {
    print("first name is \(person.firstName)")
    
    // Optional Binding - this part of function will only run if a value for person.middleName is present
    if let middle = person.middleName {
        print("middle name is \(middle)")
    } // end
    
    print("last name is \(person.lastName)")
   
}

tellMeAboutThePerson(person: bob)
```

Interviewer: What is an Optional

Answer: An optional is a swift type that may have a value or it may not have a value and it must be also be a variable.

