# Using AsyncSequence with map(), filter()

AsyncSequence has some of the same implementations as the same method that comes with sequence



## map()
Mapping with an async sequence creates a new async sequence with type **AsyncMapSequence** 

url.lines reads the contents of a url line by line. In the example below with the "url.lines.map()" it will turn each line uppercase.

``` swift
func shoutQuotes() async throws {
    let url = URL(string: "https://hws.dev/quotes.txt")!
    let uppercaseLines = url.lines.map(\.localizedUppercase)

    for try await line in uppercaseLines {
        print(line)
    }
}

try? await shoutQuotes()
```

## filter()


