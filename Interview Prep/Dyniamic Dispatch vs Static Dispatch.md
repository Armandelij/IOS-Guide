# Dynamic Dispatch vs Static Dispatch 

*Dynamic Dispatch*
When the compiler does not know what method is being called at runtime and has to figure it out, that is what is known as dynamixc dispatch. The reason
for this is because swift allows you to override methods and properties of a superclass in one of its subclasses. 

*Static Dispatch*
This when the compiler does know which method will be called at runtime, this does create a performance boost. You can mark a base class with the final
keyword to achieve static dispatch.

You can mark a method with "class" or "static" and depending on what you will choose will determine how it will be dispatched. 
