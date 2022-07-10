# try, catch, do and throw

Swift has provided some neat mechanisims to ensure the production of safe software, this mitigated any situation for failing code. 


## throw

Swift gives us the keyword **throw** we can provide a method with the **throw** keyword and if that can throw an error if it finds itself in an unacceptable
state.  

An example of this would be creating a valid password that passes all of the nessesary requirements like length, special characters. It is up to the the
developer to define theses errors. 

## example

The method below encrypts a string using the password provided 

``` swift
func encrypt(_ str: String, withPassword password: String) throws -> String {
    // complicated encryption goes here
    let encrypted = password + str + password
    return String(encrypted.reversed())
}
```

## try

The keyword **throws** actually stops the program from running, for a good reason of course. Swifts "try/catch" system allows the developer to mark any
methods that can throw using **try** 


``` swift
let encrypted = try encrypt("secret information!", withPassword: "12345")
```

> Even after the labeling the method with **try** swift still wont compile the code because we havent told swift what to do when an error is thrown.

## do catch

**do catch** comes to the rescue. **do catch** starts of a block of code that might fail and handles those failures. 

``` swift
do {
    let encrypted = try encrypt("secret information!", withPassword: "12345")
    print(encrypted)
} catch {
    print("Something went wrong!")
}
```
The code above will remove all of the errors in xcode and compile. However it wont do anything significant because we havent provided any possible error 
cases.

## How to throw an error

Before throwing an error we need to make a list of possible errors. We do this by using enumerations.
The enum represents the type of error and we use it with the built in **Error** enum

``` swift
enum EncryptionError: Error {
    case empty
    case short
}
```

These above two cases defines two possible errors, we one error dedicated to an empty entry and another dedicated to the password being short.

Put this at the start of encrypt():

``` swift
guard password.count > 0 else { throw EncryptionError.empty }
guard password.count >= 5 else { throw EncryptionError.short }

```

Since there are several ways a mothod call can fail we need to express that by provided multuple messages depending on how the method failed. 

``` swift
do {
    let encrypted = try encrypt("secret information!", withPassword: "")
    print(encrypted)
} catch EncryptionError.empty {
    print("You must provide a password.")
} catch EncryptionError.short {
    print("Passwords must be at least five characters, preferably eight or more.")
} catch {
    print("Something went wrong!")
}
```

Now we have meaningful messages assocaited with all of our cases. But we still need to account for one more case and that is a generic case that accounts
for all possible errors
> Remeber swift wants exhaustive try/catch error handling. You will have to handle this in a switch/case block 



Lastly when you use **try!** you do not need to provide a **do catch** around any code, because you are promising it will never fail.

Example:

``` swift

let encrypted = try! encrypt("secret information!", withPassword: "12345")
print(encrypted)


```







