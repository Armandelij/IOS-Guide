# What calls the first async function

Since only async function can call other async there has to be a function that initiates it all.

There are three main approaches to this:

## First Approach 

We can declare our main method in our app as async

``` swift
func processWeather() async {
    // Do async work here
}

@main
struct MainApp {
    static func main() async {
        await processWeather()
    }
}
```

## Second Approach 

The second approach is using SwiftUI modifiers such as refreshable() and task(). Both of these modifiers can call async functions. 

``` swift
struct ContentView: View {
    @State private var sourceCode = ""

    var body: some View {
        ScrollView {
            Text(sourceCode)
        }
        .task {
            await fetchSource()
        }
    }

    func fetchSource() async {
        do {
            let url = URL(string: "https://apple.com")!

            let (data, _) = try await URLSession.shared.data(from: url)
            sourceCode = String(decoding: data, as: UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines)
        } catch {
            sourceCode = "Failed to fetch apple.com"
        }
    }
}
```

## Third Approach 

The third approach uses a Task API that allows us to call an asyc function from a sync function. 

``` swift

struct ContentView: View {
    @State private var site = "https://"
    @State private var sourceCode = ""

    var body: some View {
        VStack {
            HStack {
                TextField("Website address", text: $site)
                    .textFieldStyle(.roundedBorder)
                Button("Go") {
                    Task {
                        await fetchSource() // since we care about the return value we have to use the await keyword. If we are not concerned, no need to use it.
                    }
                }
            }
            .padding()

            ScrollView {
                Text(sourceCode)
            }
        }
    }

    func fetchSource() async {
        do {
            let url = URL(string: site)!
            let (data, _) = try await URLSession.shared.data(from: url)
            sourceCode = String(decoding: data, as: UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines)
        } catch {
            sourceCode = "Failed to fetch \(site)"
        }
    }
}


```

The botton that is used to call an asyc function is not async itself, however we can wrap our work in a Task which can then be used by the button. 
> Tasks will always run to completion, meaning you arent awaiting for the result of the task, so you wont run the risk of being suspended. 







