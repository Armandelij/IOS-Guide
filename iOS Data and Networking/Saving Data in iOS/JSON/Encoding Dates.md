# Encoding Dates


## Example 

``` swift
struct Event: Codable {
    var name: String
    var date: Date
    var website: URL
}
let myEvents = [
    Event(name: "Vancouver Envent", date: Date(), website: URL(string: "https://www.vancouverconventioncentre.com")!),
    Event(name: "Los Angelas", date: Date() + 30, website: URL(string: "https://www.staplescenter.com")!)
]

//1. create a JSONEncoder
let encoder3 = JSONEncoder()

//2. Use date encoding strategy
encoder3.dateEncodingStrategy = .millisecondsSince1970

//3. encode
let myEventsJSONData = try! encoder3.encode(myEvents)
print(String(data: myEventsJSONData, encoding: .utf8)!)

```

