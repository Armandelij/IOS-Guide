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

We can use the same decoder on person2. We just need to change the name

``` swift
let person2JSONData = person2JSON.data(using: .utf8)!
// decode data using decoder. We want to use the person struct so we use Person.self
let person2 = try! decoder.decode(Person.self, from: person2JSONData)
//print(person2.name)
//print(person2.partner)

```


