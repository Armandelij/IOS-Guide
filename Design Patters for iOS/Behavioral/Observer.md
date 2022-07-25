# Observer

The Observer pattern notifies when other objects change state. The objects involved dont need to know about the one another, this encourages a decoupled
design. It is a one to many design pattern where one object notifies one or more objects of changes in state. 

The common implementation requires that an observer registers interest in the state of another object. When a particular object changes state the observer
will be notified. 

Requirements to use the Observer pattern
- Register an Observer
- Notify/Update the observer when a state changes
- Discard the observer when it is not needed anymore.


## Example

Say an auctioneer needs to notify all bidders when he acceps a new high bid. We need to allow all bidders to subscribe to the auctioneer so that they can 
tell them when there is a new high bid. 

This example is a good senario for the observer pattern. The bidders will subscribe to auctioneer.


We need to create an obserable protocol, this will allow each of our bidders can conform to it. Furthermore, each bidder needs an id so they can be removed
from an array of bidders in the future.

``` swift
protocol Bidder {
    var id: Int {get}
    func update(bid : Float)
}
```
The auctioneer will store a list of bidders who want to be notified of a new high bid. Managing the list of bidders would require them to register, deregister and notify functions. 


# NOT COMPLETE

















