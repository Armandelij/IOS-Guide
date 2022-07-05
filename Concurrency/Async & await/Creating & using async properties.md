# Creating & using async properties

You can also create async properties in swift, we must also use **await** to access them and maybe even **throws** to handle any errors that can be thrown
when computing a property.  

> This is only possible for read only properties. 

Below is a RemoteFile struct that stores a URL and a type that conforms to Decodable. The struct doesent fetch the URL but it fetches the contents of the URL
whenver the property is requested

``` swift

// First, a URLSession instance that never uses caches
extension URLSession {
    static let noCacheSession: URLSession = {
        let config = URLSessionConfiguration.default
        config.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        return URLSession(configuration: config)
    }()
}

// Now our struct that will fetch and decode a URL every
// time we read its `contents` property
struct RemoteFile<T: Decodable> {
    let url: URL
    let type: T.Type

    var contents: T {
        get async throws {
            let (data, _) = try await URLSession.noCacheSession.data(from: url)
            return try JSONDecoder().decode(T.self, from: data)
        }
    }
}

```
So every time the contents property is accessed we are fetching the contents of the URL as apposed to storing the URL contents when a RemoteFile instance
is created. Because of this the property is marked with both **async and throws** so the caller can use **await**

An example of this with swift UI code would look like this 

``` swift

// First, a URLSession instance that never uses caches
extension URLSession {
    static let noCacheSession: URLSession = {
        let config = URLSessionConfiguration.default
        config.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        return URLSession(configuration: config)
    }()
}

// Now our struct that will fetch and decode a URL every
// time we read its `contents` property
struct RemoteFile<T: Decodable> {
    let url: URL
    let type: T.Type

    var contents: T {
        get async throws {
            let (data, _) = try await URLSession.noCacheSession.data(from: url)
            return try JSONDecoder().decode(T.self, from: data)
        }
    }
}

struct Message: Decodable, Identifiable {
    let id: Int
    let user: String
    let text: String
}

struct ContentView: View {
    let source = RemoteFile(url: URL(string: "https://hws.dev/inbox.json")!, type: [Message].self)
    @State private var messages = [Message]()

    var body: some View {
        NavigationView {
            List(messages) { message in
                VStack(alignment: .leading) {
                    Text(message.user)
                        .font(.headline)
                    Text(message.text)
                }
            }
            .navigationTitle("Inbox")
            .toolbar {
                Button(action: refresh) {
                    Label("Refresh", systemImage: "arrow.clockwise")
                }
            }
            .onAppear(perform: refresh)
        }
    }

    func refresh() {
        Task {
            do {
                // Access the property asynchronously
                messages = try await source.contents
            } catch {
                print("Message update failed.")
            }
        }
    }
}
```





