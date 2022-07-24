# Decorator Pattern

The Dercorator pattern dynamically adds behaviors and responsibilities to an object without modifying its code. Its an alternative to subclassing where you 
change a classes behavior by wrapping it in another object. 

There are two components to the decorator pattern: 
Core Object
 - The core object will have its behavior modified.
 Decorator Object
 - Brings out the changed behavior in the core object

The two behaviors above have two goals, behavior modification and how the behavior is modified dynamically or at runtime instead of compile time.


## Behavior Modificatons 
We change how the core works without modifying its existing class implementation. To do this we wrap the core object with decorators, which augment the
default behavior of the core object. 

> Decorators modify the objects they wrap

![Screen Shot 2022-07-24 at 11 53 47 AM](https://user-images.githubusercontent.com/64448202/180655578-6b2b2f6d-4592-4bef-be5d-9d8f626965ba.png)



Decorators share the same interface as the core object, however they provide a different implementation. Because of this the client or user doesnt know if
they are working with the decorator or core object. 

> The Decorator behaves as the middle man, it intercepts calls to the core object and provides customized behavior for the client.  


## Dynamic Modificatons 

> Decorators modify behavior dynamically 

Instead of hardcoding different variants of the core object we can seperate each behavior into its own wrapper class. These wrappers are then applied to 
the core object at runtime.


## Example






There are two common implementations of this pattern: **Extensions** and **Delegation**
