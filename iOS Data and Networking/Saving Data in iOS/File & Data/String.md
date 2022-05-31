# String

We can know open the file and read what the array of numbers represent in a text "txt" format.

## Example

Doing this will provide a path extension with the file "txt" that will show the text of the favoritebytes array

``` swift
try favoriteBytesData.write(to: favoriteBytesURL.appendingPathExtension("txt"))
```

<img width="736" alt="Screen Shot 2022-05-31 at 8 19 27 AM" src="https://user-images.githubusercontent.com/64448202/171171594-9114c96d-270d-44d7-bc9a-44264ab6b7f8.png">

## You can tell swift that you're working with a string by settting a variable equal to string.

``` swift
let string = String(data: savedFavoriteBytesData, encoding: .utf8)!
```

