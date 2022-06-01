# JSON Decoding
 
## Example 

JSON DATA

``` swift
let person1JSON = """
{
    "name": "James",
    "age": 45,
    "gender": "Male",
    "sign": "Sagitarius",
    "partner": "Emily",
    "isEmployed": true
}
"""

let person2JSON = """
{
    "name": "Mary",
    "age": 45,
    "gender": "Female",
    "sign": "Taurus",
    "isEmployed": false
}
"""
```
 Decode JSON objects using structs: 
1. The struct must conform to the the decodable protocole as well as all of it properties. 
2. Also we can lable the properties of the struct variable or constant name using the "key" name in the key value pair.
3. We can lable property type that coresponse to the "value" in the key "value" pair. 

``` swift
struct Person: Decodable {
    let name: String
    let age: Int
    let gender: String
    //let sign: String
    let partner: String? // if an object u are trying to decode does not have a property just make it an optional.
    let isEmployed: Bool
}

```

CREATING A DECODER 
1. We need to define a constant deocder as the JSON deocder 
> The JSON decoder requires a data object to decode. but the constance we have are strings (JSON Data). 
2. We need to assign the JSON object to a constant so we can decode it using the .data(using: .utf8)
> When converting a string into data the return type is optional, but we can saftley force unwrap it.
 
``` swift
let decoder = JSONDecoder() // JSONDECODER requires objects to decode
// Converting string into data objects
let person1JSONData = person1JSON.data(using: .utf8)!
```
DECODE THE DATA USING THE DECODER
1. Create a constant and use decoder.decode to decode the type into a Person struct. You are decpding it from the person1JSONData constant.
> This procedure can fail so we use "try".

``` swift
let person1 = try! decoder.decode(Person.self, from: person1JSONData)

print(person1.name) // James
print(person1.partner) // Emily

```

PERSON 2 

``` swift
let person2JSON = """
{
    "name": "Mary",
    "age": 45,
    "gender": "Female",
    "sign": "Taurus",
    "isEmployed": false
}
"""
```

We can use the same decoder on person2, we just need to change the name
The code below produces an error because the second object (person2) has no partner key value pair and the Person struct indicates that there is a parnter String. to solve this make partner a String optional

``` swift
let person2JSONData = person2JSON.data(using: .utf8)!
// decode data using decoder. We want to use the person struct so we use Person.self
let person2 = try! decoder.decode(Person.self, from: person2JSONData)
//print(person2.name)
//print(person2.partner)

```

# ARRAYS

The array below is an array of JSON objects which can be decoded.

``` swift
let personsJSON = """
[
    {
        "name": "James",
        "age": 45,
        "gender": "Male",
        "sign": "Sagitarius",
        "partner": "Emily",
        "isEmployed": true
    },
    {
        "name": "Mary",
        "age": 45,
        "gender": "Female",
        "sign": "Taurus",
        "isEmployed": false
    }
]
"""
```
> We created a Person struct in the previous example, we can use it again because each object has Key Value pairs that correspond to Person struct.

Again we must convert the JSON object into data, convert the data into an array

``` swift
 //convert array into data
let personsJSONData = personsJSON.data(using:.utf8)!
 //convert the data into an array. Since we are decoding an array we need an array of the person struct.
let personsArray = try! decoder.decode([Person].self, from: personsJSONData)
```

Looping through the data
 If the person doesnt have a partner, we can use nil coelesing to express that. 

``` swift
for person in personsArray {
    print("\(person.name)'s partner is \(person.partner ?? "none")")
}
```

> We can pick and chose what we want to decode from the JSON objects. From there we can build our classes and structs accordingly.

## Complex Objects

``` swift

let familyJSON = """
{
    "familyName": "Smith",
    "members": [
        {
            "name": "James",
            "age": 45,
            "gender": "Male",
            "sign": "Sagitarius",
            "partner": "Emily",
            "isEmployed": true
        },
        {
            "name": "Mary",
            "age": 45,
            "gender": "Female",
            "sign": "Taurus",
            "isEmployed": false
        }
    ]
}
"""
```
If you look closley "memebers" is an array of our Person struct. We can use that in a new array.

``` swift
struct Family: Decodable {
    let familyName: String
    let members: [Person]
}

let familyJSONData = familyJSON.data(using: .utf8)!
let myFamily = try! decoder.decode(Family.self, from: familyJSONData)

``` 

We can create a better model to for the family object by including a gender property in our person struct

``` swift
struct Family2: Decodable {
    enum Gender: String, Decodable { // creates a gender of string type cases
        case Male, Female, Other
    }
    struct Person: Decodable {
        let name: String
        let age: Int
        let gender: Gender
        //let sign: String
        let partner: String? 
        let isEmployed: Bool
            
        }
    let familyName: String
    let members:[Person]
}

let myFamily2 = try! decoder.decode(Family2.self, from: familyJSONData)
for member in myFamily2.members {
   print(member.name)
}
```


