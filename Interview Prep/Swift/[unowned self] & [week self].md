# [unowned self] & [week self]

You should use [unowned self] & [week self] when you want to create a *Strong Reference Cycle* This is when a loop of ownership is created between
objects.

Any variable referenced inside of a closure is owned by that closure. So if the closure is around the objects will be around also. To stop this
ownership you would use [Unowned Self] or [weak self]. So if a class owns a closure and captures a strong reference to that class, there is now a strong
reference cycle between the closure and class. 


## Retain Cycle & Memory leaks
Retain Cycles happen when a series of instances all retain strong references of each other. When this happens all instances in the retain cycle will 
never be deallocated or removed, causing a memoty leak. A solution to retain cycles is using weak references 


> If self can be nil the closuer use [weak self].
> if self will never be nil in the closure use [unowned self]. 

Good Article on it https://www.advancedswift.com/strong-weak-unowned-in-swift/#strong-references-in-swift
