## How to call async throwing functions

You can make asyc function throwing or non throwing to handle errors. However when we initially mark the function as being **async throws** we need to call
the function as **try wait**

## Example 
The code below attempts to download JSON Data from a server and then decode it. 


``` swift

func fetchFavorites() async throws -> [Int] {
    let url = URL(string: "https://hws.dev/user-favorites.json")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return try JSONDecoder().decode([Int].self, from: data)
}

if let favorites = try? await fetchFavorites() {
    print("Fetched \(favorites.count) favorites.")
} else {
    print("Failed to fetch favorites.")
}

```

Pay attention to the function declariation, the function is marked async throws. However at the call it is marked as **try await** the reverse of its function
declaration. 

> Think **asynchronous, throwing** in the definition and **throwing, asynchronous** at the call site.
