# Observer

The Observer pattern notifies when other objects change state. The objects involved dont need to know about the one another, this encourages a decoupled
design. 

The common implementation requires that an observer registers interest in the state of another object. When a particular object changes state the observer
will be notified. 

Requirements to use the Observer pattern
- Register an Observer
- Notify/Update the observer when a state changes
- Discard the observer when it is not needed anymore.


# Creating a Disposable

We want our Observer to auto deinitialize when we remove any scene in our app that holds a reference to it. To do this we need to create a Disposable.
