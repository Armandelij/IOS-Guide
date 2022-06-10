# Core Data Stack

The building blocks of Core Data are known as the stack. The Stack consists of the Object Model, Object Conext and the Persistent Store Coordinator. 

![Core Data Stack](https://user-images.githubusercontent.com/64448202/173053276-760714a9-69a1-4542-aee9-a0182c992e60.jpeg)


## Managed Object

The managed object model is an instance of the **NSManagedObjectModel** class, it represents the data model of the Core Data Application.  
The data model "purple rectangle above" houses the application bundle that contains the data scheme of the application.

> The data scheme is a collection of entities, these entities can have attributes and relationships.

**Key Take Aways**
> The manageed object model is an instance of the MSMabagedObjectModel class and that it is what the data model of the Core Data represents.  
