# Core Data Stack

The building blocks of Core Data are known as the stack. The Stack consists of the Object Model, Object Conext and the Persistent Store Coordinator. 

![Core Data Stack](https://user-images.githubusercontent.com/64448202/173053276-760714a9-69a1-4542-aee9-a0182c992e60.jpeg)


## Managed Object

The managed object model is an instance of the **NSManagedObjectModel** class, it represents the data model of the Core Data Application.  
The data model "purple rectangle above" houses the application bundle that contains the data scheme of the application.

> The data scheme is a collection of entities, these entities can have attributes and relationships.

**Key Take Aways**
> The managed object model is an instance of the MSMabagedObjectModel class and that it is what the data model of the Core Data represents.  


## Managed Object Context

A managed object context is represented by an instance of the NSManagedObjectContexts class. It recieves model objects from the persistent store coordinator. 

The managed object context is teh object you will work with most as a developer. The NSManagedObjectContext class is seen as the workhorse of the Core Data framework because it creates, reads, updataed and deleted model objects. 


## Persistent Store Coordinator

The persistent store coordinator is represented by an instance of **NSPersistentStoreCoordinator**. The persistent store coordinator keeps a reference to the managed object model. Every parent managed object context keeps a reference to the persistent store coordinator. 


# Setting Up the Stack 

Given a data model the NSPersistentContainer class creates the managed object model, managed object context and the persistant store coordinator

``` swift
var persistentCoreContainer: NSPersistentContainer = {}()

```

Inside the closure we are going to create an instance of persistant container. THe initializer for this class takes the name of the data model created.
- The name value is used to name the persistant store and used to look up the name of the NSManagedObject model object to be used with the persistant. 

``` swift
var persistentCoreContainer: NSPersistentContainer = {
let container = NSPersistentContainer(name: "Reminders")
return container
}()

```

Now we need to call the .loadPersistentStores method.
1. THe method takes 2 completion blocks with 2 arguments
  - an instance of **storeDescription**. This allows you to custiomize and load the persistent store. This only for customization and we will ignore it for now.
  - an instance of **error** just in case the stack fails



``` swift
var persistentCoreContainer: NSPersistentContainer = {
let container = NSPersistentContainer(name: "Reminders")
container.loadPersistentStores { (storeDescription, error) in
      if let error = error as NSError? {
        fatalError("Unresolved error \(error), \(error.userInfo)")
      }
    }
return container
}()

```











