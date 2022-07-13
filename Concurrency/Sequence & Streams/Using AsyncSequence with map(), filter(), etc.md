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

with filter() we can check every line with a predicate and process only those that pass.

``` swift
func printAnonymousQuotes() async throws {
    let url = URL(string: "https://hws.dev/quotes.txt")!
    let anonymousQuotes = url.lines.filter { $0.contains("Anonymous") }

    for try await line in anonymousQuotes {
        print(line)
    }
}

try? await printAnonymousQuotes()
```

# prefix()

We can use prefix to read the first 5 values from an async sequence

``` swift
func printTopQuotes() async throws {
    let url = URL(string: "https://hws.dev/quotes.txt")!
    let topQuotes = url.lines.prefix(5)

    for try await line in topQuotes {
        print(line)
    }
}

try? await printTopQuotes()
```








