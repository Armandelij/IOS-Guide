# Conditional Saving of NSManagedObjectContext

Checking to see if any changes need to be saved prior to saving will create a lower impact (more efficiant) when the times comes to save.

To avoid Core Data from doing extra work use the "hasChanges" property provided by the managed object. The "hasChanges" property is set to true when
an the object has unsaved changes, furthermore the contex also has a "hasChanged" property that checks whether the any object owned by the conect has changes.

``` swift

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        Button("Save") {
            try? moc.save()
        }
    }
}


```
