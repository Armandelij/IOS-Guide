# Decoding Dates

Below is a JSON COde snippit

``` swift
let personJson = """
{
  "id" : 7,
  "name" : "Aidan Lynch",
  "birthday" : "27-03-1993",
}
"""
```

We would create a struct as normal and make it conform to the decodable protocol

However in this case we are provided string Key Value pair "birthday : 27-03-1993". instead of making this a string property in our struct we can use
the Date type instead

``` swift
struct Person: Decodable {
    let id: Int
    let name: String
    let birthday: Date
}
```
Prior to decoding we can create a date formatter. 
1. create a constant for the DateFormatter()
2. then use the dateFormate property on "dd-MM-yyyy"
> You can go to  https://nsdateformatter.com to create the proper string use with the "formatter.dateFormate"

``` swift
let formatter = DateFormatter()
formatter.dateFormat = "dd-MM-yyyy"
```

turn our JSON into unicode

``` swift
let person1Data = personJson.data(using: .utf8)! // force unwrapping just for the sake of this exercise
```

Create our decoder
``` swift
let decoder = JSONDecoder()
```

With the decder created we can specify a decoding strategy. We then can pass in our formatter we defined earlier
``` swift
decoder.dateDecodingStrategy = .formatted(formatter)
````
Now to decode the data
``` swift
let thisPerson = try! decoder.decode(Person.self, from: person1Data)
```



## Other Decoding Strategies and Decoding from a Bundle.

Below is an Event JSON file that contains an array of objects

Rescources
   Events
  
          ``` swift
          [
           {
              "name":"Vancouver Event",
              "date":1582966800,
              "website":"https://www.vancouverconventioncentre.com"
           },
           {
              "name":"Los Angelas",
              "date":1588158000,
              "website":"https://www.staplescenter.com"
           }
        ]

        ```
        
 First we will create our struct, this time the date in an Int in a different format. We can use the site previously mentioned to figure out what format it is
 in.
 
 ``` struct
 struct Event: Decodable {
    let name: String
    let date: Date // unix epoc timestamp. seconds since 1970
    let website: URL
}
 ```
        
  create a source constant for our bundle
  
  ``` swift
  guard let sourcesURL = Bundle.main.url(forResources: "Events", withExtension: "json") else {
      fatalError("Could not locate Rvents.json")
  }
  
  ```
  
  convert the contents of the url into unicode .utf8
  ``` swift
  guard let eventData = try? Data(contentsOf: sourcesURL) else {
    fatalError("Could not convert Event.json data")
}
  ```
  
 Create our decoder and define our date decoding strategy
 
 ``` swift
 let decoder2 = JSONDecoder()
decoder2.dateDecodingStrategy = .secondsSince1970
 ```
 
Now to decode the data

``` swift
guard let events = try? decoder2.decode([Event].self, from: eventData) else {
    fatalError("There must be a problem decoding the data....")
}
```




