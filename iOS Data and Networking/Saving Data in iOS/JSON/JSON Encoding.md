# JSON Encoding

JSON Encoding is the opposite of JSON Decoding. You can encode your data into a JSON Object or string.
To encode a struct or class you have 2 options. You can use the Encodable protocol or the Codable protocol.
The Codable protocol allows you to encode and decode your objects. The keyword Codable is conventioanlly 
used.
> You can use both Decodable and Encodable in your structs or classes. 


## Example

``` swift
//1. Struct has to conform the the Codable or Encodable protocol
struct Person: Codable {
    var name: String
    var age: Int
    var gender: String
    var partner: String?
    var isEmployed: Bool
}

// Below is what will be turned into a string
var people = [
    Person(name: "James", age: 45, gender: "Male", partner: "Emily", isEmployed: true),
    Person(name: "Elizabeth", age: 45, gender: "Other", isEmployed: false)
]

//2. We definde an Encoder instead of a Decoder this time
let encoder = JSONEncoder()

//3. let peopleJSONData = try! encoder.encode(people)

print(String(data: peopleJSONData, encoding: .utf8)!) // this will print out our people array
```

## More Complex Example
Everything struct or enum that is envolved in the encoding process must conform to the encodable protocol.

``` swift
//1. struct must form to the encodable protocol
struct Family: Codable {
//2. enum as well
    enum Gender: String, Codable {
        case Male, Female, Other
    }
//3. this struct as well
    struct Person: Codable{
        var name: String
        var age: Int
        var gender: Gender
        var partner: String?
        var isEmployed: Bool
        
    }
    var familyName: String
    var members: [Person]
    
}

let myFamily = Family(familyName: "Smith",
                      members: [
                        Family.Person(name: "James", age: 45, gender: .Male, partner: "Emily", isEmployed: true),
                        Family.Person(name: "Elizabeth", age: 45, gender: .Other, isEmployed: false)
])

// then encode as normal. 
let encoder2 = JSONEncoder()
let myFamilyJSONData = try! encoder2.encode(myFamily)
print(String(data: myFamilyJSONData, encoding: .utf8)!)

```
