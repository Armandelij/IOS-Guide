# Immutable objects

Objects in functional prgramming are often immutable/constatnt or not subject to change. Because of this in functional programming we have to create
new objects to reflect the desired changes that would have implemented had the object been mutable. 

> Objects in functional programming are immutable. This is key when running programs in multi-threaded environments, it keeps your code safe.
> Per definition there are no variables in functional programming, however stored values are still called variables despite being constants. 

In the code below you can see that pure functions inputs **(x, y)** are not modified. 

``` swift 

func add(x, y) {
  return x + y
  
}





