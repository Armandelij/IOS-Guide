## Lazy

A lazy stored property is a property whose initial value is not calculated until the first time it is used. You write the keyword "lazy" before the
declaration. It is used to avoid unnecessary initialization of a property.

* Lazy cannot be used with let.
* If memeory is an issue using lazy can help.
* You cannot use computed properties with lazy. This is because a computed property returns the value everytime we access it after executing the code inside the computation block
* They can only be used with members of structs ot classes
* Lazy variables are not initialized authmatically so they ARE NOT thread safe.
