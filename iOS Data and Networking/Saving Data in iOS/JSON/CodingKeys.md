# Coding Keys

 In a an earlier lesson (Getting JSON from a Local File) we were provided a JSON file that used snake_case format instead of conventional camelCase used in swift. 
 
 
 ``` swift
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
 
 We created a struct like the one below to properly reflect the JSON file, however this is format uses snake_case and swift uses camelCase.
 
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
    let palette_colors: [PaletteColors]
}
```
 

 Changing the properties in our struct forcing us to change values everywhere else in our code. The code will fail because the properties do not correspond to the JSON Keys.

 we can fix this using another Decoding Strategy. "keyDecodingStrategy", we can change all of the properties without our code breaking usng an enum. The enum has to have a raw value string and conform to the CodingKey protocol.
 
# Using an enum to change the properties. 

Since we have 2 structs we have to create 2 enums, 1 per struct.
1. create an enum with the name name CodingKeys: make it of type string and protocol type CodingKey
2. create a case with the desired property name and set the value to the value of the Key Value pair in the JSON file.
3. Make sure you change all of property names to match the case names in the enum.


 ``` swift
 struct ColorPalette: Decodable {
    enum CodingKeys: String, CodingKey {
        // the case will the desired property name and the case value will be the existing key calue.. (JSON value)
        case name = "palette_name"
        case info = "palette_info"
        case colors = "palette_colors"
    }
    
    struct PaletteColor: Decodable {
        enum CodingKeys: String, CodingKey {
            case order = "sort_order"
            case description = "description"
            case red = "red"
            case green = "green"
            case blue = "blue"
            case alpha = "alpha"
        }
        let order: Int
        let description: String
        let red: Int
        let green: Int
        let blue: Int
        let alpha: Double
    }
    let name: String
    let info: String
    let colors: [PaletteColor]
}
 
 ```
 
 Now you can proceed as normal with decoding.
 
 
 
 
