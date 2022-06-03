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

```


