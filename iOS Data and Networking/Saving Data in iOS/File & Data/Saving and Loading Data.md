# Saving and Loading Data. 

## Example

``` swift
// we will be saving the data below in a document directory for this playground

let favoriteBytes: [UInt8] = [
  240,          159,          152,          184,
  240,          159,          152,          185,
  0b1111_0000,  0b1001_1111,  0b1001_1000,  186,
  0xF0,         0x9F,         0x98,         187
]
```


STEP 1 - Create a new instance of Data and pass the "favoriteBytes" constant as an argument

``` swift
let favoriteBytesData = Data(favoriteBytes)
```

Step 2 - We need to know where the data will be stored, now we will create a URL constant called favotieBytesURL with the URL initializer method.

``` swift
let favoriteBytesURL = URL(fileURLWithPath: "Favorite Bytes",
                           relativeTo: FileManager.documentDirectoryURL)
```

Step 3 - Data has a write method that takes a URL. We need to add a "try" before hand so it doesnt through an error

``` swift
try favoriteBytesData.write(to: favoriteBytesURL)
```

## Reading Data Back 

Step 1 - Create a constant and initilize it with Data. Put a "try" before data, then in the (contentsOf:) use the favoreitBytesURL

``` swift
let savedFavoriteBytesData = try Data(contentsOf: favoriteBytesURL)
```

Step 2 - Getting numbers back. we can use an array initilizer that accepts a data instance

``` swift
let savedFavoriteBytes =  Array(savedFavoriteBytesData)
```

Step 3 - Now we can see if the favoriteBytes and savedFavoriteBytes are the same
``` swift
favoriteBytes == savedFavoriteBytes
```

















