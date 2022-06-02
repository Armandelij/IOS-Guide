# JSON From Local File

This section will show you how to retrive and decode JSON from a file.

> This is a JSON formatter https://jsonformatter.curiousconcept.com 

 When you store a file in the rescources folder it is then considered a bundle.
 
 Rescources
    Flat Colors 

The data below is the JSON inside of the "Flat Colors" file
> The data below is just a portion of a larger JSON file but this is all that is need for this exercise

``` swift
{
   "palette_name":"Flat Colours",
   "palette_info":"For Design",
   "palette_colors":[
      {
         "sort_order":0,
         "description":"Flat Powder Blue (Light)",
         "red":170,
         "green":186,
         "blue":241,
         "alpha":1.0
      },

```
  With information above we can now build the apporproate struct to aid in the decoding of this data
  
  ``` swift
  struct Color_Palette: Decodable {
    struct PaletteColors: Decodable {
        let sort_order: Int
        let description: String
        let red: Int
        let green: Int
        let blue: Int
        let alpha: Double
    }

    let palette_name: String
    let palette_info: String
    let palette_colors: [PaletteColors] // This property will create an array of PaletteColors 
}
```
  
  
  1. Assign bundle URL to a constant

``` swift

guard let sourcesURL = Bundle.main.url(forResource: "FlatColors", withExtension: "json") else {
    fatalError("Could not find FlatColors.json") // if file does not exist
}
 ```
 
  2. Now that we have the URL we can get the data component of that file so we can decode it into our JSON

``` swift
 
guard let colorData = try? Data(contentsOf: sourcesURL) else {
    fatalError("Could not convert data")
}
```


3. define our decoder

``` swift
let decoder = JSONDecoder()
```

4. decode the data

``` swift

guard let flatColor = try? decoder.decode(Color_Palette.self, from: colorData) else {
    fatalError("There was a problem decoding the data...")
}
``` 

Now we can use flatColor and its properties. 

  
  
  
  
  
