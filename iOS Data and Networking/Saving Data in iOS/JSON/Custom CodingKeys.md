# Custom Coding Keys

The problem below is that the JSON file provides us with an array of objects and each object has a "feed" key and each value is another object. 
There is also an "entry" key, however in the first array the "entry" value is an array itself of objects, but in the second one it is a single object.
 
The objects are all the same but the first time there is an array and the second time there is not. This is an issue when trying to decode JSON files such 
this.


``` swift
let booksJSON = """
[
  {
    "feed": {
      "publisher": "Penguin",
      "country": "ca"
    },
    "entry": [
      {
        "author": "Margaret Atwood",
        "nationality": "Canadian"
      },
      {
        "author": "Dan Brown",
        "nationality": "American"
      }
    ]
  },
  {
    "feed": {
      "publisher": "Penguin",
      "country": "ca"
    },
    "entry": {
      "author": "Pierre Burton",
      "nationality": "Canadian"
    }
  }
]
"""
```
A way to solve this is to create codingkeys with a custom initializer that would convert a single entry object into an array with only one element.

1. Create Book struct and have it conform to the Decodable protocol. Then provide a struct for each object in the array followed by thier exclusive 
properties.

2. In both cases Feed is a single object so we can "let feed: feed". For entry since it is an array in the second object and not in the first, setting
entry as an array [Entry] will give us problems. The best way to solve this is to create custom keys with an initializer that would convert a single entry object into an array.

3. Now we must set up a CodingKeys enum that is type String and conforms to the CodingKey protocol. Each property of the booksJSON object will be a case
"feed and entry".


3. Extend the Book structure to conform the decodable property by emplimenting its initializer.

``` swift
struct Book: Decodable {
    enum CodingKeys: String, CodingKey {
        case feed, entry
    }
    
    struct Feed: Decodable {
        let publisher: String
        let country: String
    }
    struct Entry: Decodable {
        let author: String
        let nationality: String
    }
    let feed: Feed
    var entry: [Entry] 
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self) // extracting a container that we can read using the Keys of our coding key enum
        }

```

With the container defined we can assign each of the keys to the corresponding property type. 
1. Since we know feed will work all of the time we can use the "try decoder.container()" 
2. However in entry, somethimes there will be an array and sometimes there will not be an array. We can provide a do{} catch{}
 - the do{} will attempt to read it as an array, if it is it will be decoded as an array of entry objects.
 - If its not an array the catch will see if its single value and add it to an empty array

``` swift
init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self) 
        feed = try container.decode(Feed.self, forKey: .feed) // feed  will work all of the time
        do {
            entry = try container.decode([Entry].self, forKey: .entry)
        } catch {
            let newValue = try container.decode(Entry.self, forKey: .entry)
            entry = [newValue]
        }
             
    }
   
 // Now we can decode
let decoder = JSONDecoder()
let bookJSONData = booksJSON.data(using: .utf8)!
let books = try! decoder.decode([Book].self, from: bookJSONData)

```
## Property wrappers such as @Published, do not conform to codable
 
``` swift
class User: ObservableObject, decodable {
 var name = "Aidan Lynch"
 var age = 27
}

```
To work around this we need to create our own coding keys
1. create our own enum with the name CodingKey. The enum must be of type String and conform to the CodingKey protocol.
2. Use the @Published wrapper for the name property.
3. Create an initializer (remeer it has to be a required init because it is a class)
4. Inisde the initializer we extract the container
5. Then assign each of the properties to the contents that come from the container, "name and age".  


``` swift

class User: ObservableObject, Decodable {
    enum CodingKeys: String, CodingKey {
        case name, age
    }
    @Published var name = "Aidan Lynch"
    var age = 27
    
    required init(from decoder: Decoder) throws { // since user is a class we have to use the required keyword
        let container = try decoder.container(keyedBy: CodingKeys.self) // inside the initializer we extract the container
        name = try container.decode(String.self, forKey: .name)
        age = try container.decode(Int.self, forKey: .age)
        
    }
}

```





