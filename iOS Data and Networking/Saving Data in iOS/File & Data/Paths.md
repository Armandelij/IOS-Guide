# Paths

The String components of a URL are known as its path.

## Example

1. the path name is the name of the file.
2. it will be relative the docment URL AKA we will put it in the documents folder.

``` swift 
let remindersDataURL = URL(fileURLWithPath: "Reminders", relativeTo: FileManager.documentsDirectoryURL)
```

``` swift
stringURL = FileManager.documentsDirectoryURL
.appendingPathComponents("String")
.appendingPathExtension("txt")

stringURL.path

``` 

Both APIs perform the same thing. 
