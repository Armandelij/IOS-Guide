# Using continuation to convert completion handlers into async function


Older swift code completion handlers to notify us when some work has been completed, eventually you are going top have to use it from an async function.
The problem is that completion handlers are not asynchronous, we can bridge the gap between the two by using continuations to convert completion handlers
into async functions. 

The code below fetches some JSON from a web server, decodes it into an attay of Message structs, then sends it back using a completion handler:

``` swift

struct Message: Decodable, Identifiable {
    let id: Int
    let from: String
    let message: String
}

func fetchMessages(completion: @escaping ([Message]) -> Void) {
    let url = URL(string: "https://hws.dev/user-messages.json")!

    URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            if let messages = try? JSONDecoder().decode([Message].self, from: data) {
                completion(messages)
                return
            }
        }

        completion([])
    }.resume()
}
```

The dataTask(with:) method is not an async function, so integrating it into code that uses modern async swift is going to get complicated.
Swift provides us with continuations, which are objects we can pass into completion handlers as captured values. When the completion handler executes we
can return the finished value, throw an error, or send back a Result. Regarding the fetchMessages(), we want to write a new async function that calls the
origional, in its completion handler well return the value that was sent back. 

``` swift

struct Message: Decodable, Identifiable {
    let id: Int
    let from: String
    let message: String
}

func fetchMessages(completion: @escaping ([Message]) -> Void) {
    let url = URL(string: "https://hws.dev/user-messages.json")!

    URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            if let messages = try? JSONDecoder().decode([Message].self, from: data) {
                completion(messages)
                return
            }
        }

        completion([])
    }.resume()
}

func fetchMessages() async -> [Message] {
    await withCheckedContinuation { continuation in
        fetchMessages { messages in
            continuation.resume(returning: messages)
        }
    }
}

let messages = await fetchMessages()
print("Downloaded \(messages.count) messages.")
```

Continuation is done using the withCheckedContinuation() function, it passes itself into the continuation that is needed to work with. 

It is called a checked continuation because swift checks to see if we are using it correctly and by correctly meaning: the continuation must only be 
resumed once. 

> If you call the checked contiuation more than once, swift will hault the program.
> If you fail to resume the program seift will print out a warning similar to this: “SWIFT TASK CONTINUATION MISUSE: fetchMessages() leaked its continuation!”












