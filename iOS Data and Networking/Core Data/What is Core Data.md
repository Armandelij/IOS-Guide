# What is Core Data

Core data is is a framework developed by Apple, it is the M "model" in MVC. Core data has the ability to persist data to disk, this comes as an additional 
feature of Core Data. Moreover, Core data is a framework that excels at managing the object graph. Object graphs are objects that are related to one another,
it manages the life cycle of the objects and has the ability to persist the object graph to disk. 


![Object Graph](https://user-images.githubusercontent.com/64448202/173051115-fe952424-9e02-45cd-b4c8-7ff36140b3c1.jpeg)


**Core Data can:**
- Provide a UI that can search the object graph it manages.
- Validate input.
- Provide data model versionsing.
- Provide change tracking. 

**Core Data Limitations:**
- Can only work with records that are in memory. So if you want to delete records core data would have to load them first.
- Core Data expects to be run on single thread however, there are various solutions that allow Core Data to work on a multithreaded environment. 


> Core data is NOT a database. 
> You should implelemt core data when you want to manage the model layer of the applicaiton. 



