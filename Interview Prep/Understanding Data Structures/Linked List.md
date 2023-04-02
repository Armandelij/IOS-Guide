# Linked List
Linked lists are a sequence of data items, where each item is referred to as a node.

> There are two types of lnked lists Singly linked and Doubly linked.

## Singly Linked lists

Singly linked lists are when each node only has reference to the next node.

![SingleLinkedList](https://user-images.githubusercontent.com/64448202/227803770-cf32ce7c-6057-47fd-9909-7f6c65672f25.png)


## Doubly linked lists

Doubly linked lists are when each node as a referrence to the previous and next node. 

![DoublyLinkedList](https://user-images.githubusercontent.com/64448202/227803794-735d45fd-2344-49f0-bb11-e49bdfb58971.png)


> You keep track of where the list ends and begins using pointers called head and tail.

## Nodes

Linked lists are made up of nodes, so to start we need to create a node class.

``` swift
public class Node {

}

```

## Values

We need to associte a value with a class, to do this we add our value property inside our node and initialize it 

``` swift
var value: String // this value can be of any type
 
init(value: String) { // here we initialize the value. We do this for non optional properties in the class
  self.value = value
}

```

## Pointers

Each node needs a pointer, not all nodes need a Previous pointer (referrence to the previous node) but all nodes need a Next pointer 
(referrences the next node). Since we are making a Doubly Linked List we will need to add both Next and Previous pointer to our Node

``` swift
var next: Node?

weak var previous: Node? // we use a weak variable to prevent retain cycles. Some cases ownership cycles can be created and this can bring back nodes from the dead after we've deleted them. If we delete a node we want that node to stay deleted.

```

## Your node should look like this:

``` swift
public class Node {

var value: String // this value can be of any type
var next: Node?  // The reason our next node is an optional is because its the last node in the list and doesnt point to another node.
weak var previous: Node? // Our previous node doesnt point to a

init(value: String) { // here we initialize the value. We do this for non optional properties in the class
  self.value = value
  }

}

```

## Linked List 

Now that we have created a Node it is time to create a Linked List. A Linked List will keep track of where the list ends and begins

``` swift 

public class LinkedList {

fileprivate var head: Node?
  private var tail: Node?

  public var isEmpty: Bool { 
    return head == nil
  }

  public var first: Node? { 
    return head
  }

  public var last: Node? {
    return tail
  }

}
```


## Append

To add new nodes to our list we will need a function that will help in doing that. We will declare a append method in our LinkedList class

``` swift
public func append(value: String) {
  // 1
  let newNode = Node(value: value) // creating our new node
  // 2
  if let tailNode = tail { 
    newNode.previous = tailNode
    tailNode.next = newNode
  } 
  // 3
  else {
    head = newNode
  }
  // 4
  tail = newNode
}
```

## Understanding the above code

1.
 ``` swift 
 //1
let newNode = Node(value: value)
```
Here we created a new node. The purpose of the node class is so that each node in th elinked list can point to the previous and next code.


``` swift
//2
if let tailNode = tail {
    newNode.previous = tailNode
    tailNode.next = newNode

```

2. 
If tail node is not nill, that means something exists within our linked list. if that is the case then have the new node point to the tail of the 
list as it pervious item. Now we configure the last implemented item to point to the new node as its next item. 


Finally we set the tail of the list to be the new item in either case. 

## Printing your Linked List


https://www.kodeco.com/947-swift-algorithm-club-swift-linked-list-data-structure





