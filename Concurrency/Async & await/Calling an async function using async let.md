# Calling an async function using async let

When you want to run several async functions at once you will want to use **async let** 
An example of this would be making two or more network requests, none of which relate to each other. 
> This basically means that request 1 doesnt rely on request 2, 3, etc to run. 

## Example

Below are two structs to store data: one for user account data and one to store messages. 

``` swift
struct User: Decodable {
    let id: UUID
    let name: String
    let age: Int
}

struct Message: Decodable, Identifiable {
    let id: Int
    let from: String
    let message: String
}
```

The data from these two structs can be fetched independantly, this is where we can use **async let**

``` swift

func loadData() async {
    async let (userData, _) = URLSession.shared.data(from: URL(string: "https://hws.dev/user-24601.json")!)

    async let (messageData, _) = URLSession.shared.data(from: URL(string: "https://hws.dev/user-messages.json")!)
}
```

Key Points:
- the data(from:) method is async, however we dont beed to use the **await** keyword because it is implied by **the async let**
- the data(from:) method is also throwing, but we dont need to use **try** because we dont need to read the return value yet. 
- Both of these calls begain immediatly but might complete in any order.

Both network requests are in motion, now we need to decode thier return data into structs, and use them
- In our do catch block, both our data(from:) calls might throw, since we may need to read theses values we need use **try**
- Both data(from:) calls are running concurrently and out main loaderData() is executing, because of this we need to read thier values using **await** in
case they arent ready. 

So to complete the function we would use **try await** for each network request, then print the result out. 
``` swift
struct User: Decodable {
    let id: UUID
    let name: String
    let age: Int
}

struct Message: Decodable, Identifiable {
    let id: Int
    let from: String
    let message: String
}

func loadData() async {
    async let (userData, _) = URLSession.shared.data(from: URL(string: "https://hws.dev/user-24601.json")!)

    async let (messageData, _) = URLSession.shared.data(from: URL(string: "https://hws.dev/user-messages.json")!)

    do {
        let decoder = JSONDecoder()
        let user = try await decoder.decode(User.self, from: userData)
        let messages = try await decoder.decode([Message].self, from: messageData)
        print("User \(user.name) has \(messages.count) message(s).")
    } catch {
        print("Sorry, there was a network problem.")
    }
}

await loadData()
```

In conclusion the swift compiler will track which **async let** constant that could throw errors and enforce **try** when reading their value. 



