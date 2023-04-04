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

To print our output we need to make our Linkedlist adopt the **CustomStringConvertable** protocol. We do this by adding the following:

``` swift
// 1
extension LinkedList: CustomStringConvertible {
  // 2
  public var description: String {
    // 3
    var text = "["
    var node = head
    // 4
    while node != nil {
      text += "\(node!.value)"
      node = node!.next
      if node != nil { text += ", " }
    }
    // 5
    return text + "]"
  }
}

```
1. We created an extension to our Linked list class and adopted the CustomStringConvirtable protocol. The protocole expects us to implement at computed property with the name **description**,  with the **String** type.

2. We declared a **description** property, it is a read only property and it returns a string.
3. We declare a **text** variable that will hold the entire string. For now it holds the opening brace to represent the start of a list
4. Now we loop through th elist appending the value to each item to the text String.
5. Add a closing brace to the end of the text variable.


## Accessing Nodes

We can access nodes by index. To do this we declare a **nodeAt(index:)**  method in our LinkedList class. This will return our node at the specified index


``` swift
public func nodeAt(index: Int) -> Node? {
  // 1
  if index >= 0 {
    var node = head
    var i = index
    // 2
    while node != nil {
      if i == 0 { return node }
      i -= 1
      node = node!.next
    }
  }
  // 3
  return nil
}
```

1. we implemented a check make sure the specified index is not negative. This will prevent an infinite loop if the **index** is negative.
2. Loop through node untill we reach the specified index.
3. If the index is less than 0 or greater than the number of items in the list return nil.

## Removing all Nodes

To remove all nodes we just asign nil to the head and tail

``` swift
public func removeAll() {
  head = nil
  tail = nil
}

```

## Generics

With Generics we can abstract away the type requirement frok our linked list. Initialy we used a string value to indicate what type of value should
be given to the node.

Below is our current node class

``` swift
public class Node {

var value: String 
var next: Node?  
weak var previous: Node? 

init(value: String) { 
  self.value = value
  }

}

```




