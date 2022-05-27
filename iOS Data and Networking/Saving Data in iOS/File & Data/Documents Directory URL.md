# Documents Directory URL

In swift directories are represented using the URL struct. We can use the file manager to get the document directory URL. 

## Step 1 - Access the Default File Manager

``` swift
import Foundation

FileManager.default
```
## Step 2 - Finding the users Document Directory  by using file manager instance method named ".urls"
1. first argumanet is where you dictate you want a document directory.
2. The second arguemnt, is how yuu tell the file manager that the directory belongs to the user.

``` swift
FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
```

> the ".urls" returns an array of URLs, however there is only on document directory per iOS app. If you want a signle URL you will have to subscript at the arrays 
> only valid index [0]. this will grad the singular URL.


``` swift
FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
```

## Step 3 -  Add a computed property to make the proccess of accessing the doucument directory easy. 

``` swift
var documentDirectoryURL: URL {
FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
}
```
Since we are gonna use this short cut across application providing a file manager extension.
- We can also make the property static because we dont need an instance of file manager to access it.
- Default is also a static property of file manager, we dont need to explicitly state "FileManager" anymore. We still need to add back ticks to `default`
- because it is a swift keyword. 


``` swift
extension FileManager {
  static var documentDirectoryURL: URL {
  `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
```

## Step 4 - Now we can access the new property

``` swift
FileManager.documentDirectoryURL
```

> It is ideal to put reusable code in another file. 

## Step 5 - Create a new file and name it Extensions, then open a new file you can name it "FileManager"

Extensions
  FileManager
  
``` swift
extension FileManager {
  static var documentDirectoryURL: URL {
  `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
```

## back in the Playground 

The code below generates an error because the extension need to be public for other files to access it. 

``` swift
FileManager.documentDirectoryURL
```

## back in File Manager


``` swift
public extension FileManager {
  static var documentDirectoryURL: URL {
  `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
```

> An easy way to access the document directory is to right click the "file:///" URL that is shown on the right side of the play ground. then select open URL.
> The document for the current play ground should be displayed. 


