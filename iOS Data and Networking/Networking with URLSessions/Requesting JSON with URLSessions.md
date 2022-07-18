# Requesting JSON with URLSessions

First we need to decode the response, we should use the Decodable protocol along with JSONDecoder.

 The struct below will conform to the Decodable Protocol and it will define two properties, title and author which are Strings

``` swift
struct Book: Decodable {
    
    let title: String
    let author: String
}
```

We still need to define the URL of the remote image

``` swift
let url3 = URL(string: "https://bit.ly/2LMtByx")!


```
We can still create a request object by passing the URL object to the initializer and store the results
in a variable.

``` swift

struct Book: Decodable {
    
    let title: String
    let author: String
}

let url3 = URL(string: "https://bit.ly/2LMtByx")!

var request3 = URLRequest(url: url3)
```

We can update the URL object and set the Content-Type HTTP HEader field to "application/json"

``` swift
struct Book: Decodable {
    
    let title: String
    let author: String
}

let url3 = URL(string: "https://bit.ly/2LMtByx")!

var request3 = URLRequest(url: url3)

request3.setValue("application/json", forHTTPHeaderField: "Content-Type")
```


Now we create a JSONDecoder instance and use the decode(_:from:) method. this allows us to pass in the type of the value to decode from the provided 
JSON object and the JSON object to decode.

``` swift
struct Book: Decodable {
    
    let title: String
    let author: String
}

let url3 = URL(string: "https://bit.ly/2LMtByx")!

var request3 = URLRequest(url: url3)

request3.setValue("application/json", forHTTPHeaderField: "Content-Type")



let task3 = URLSession.shared.dataTask(with: url) { data, response, error in
    if let data = data {
        if let books = try? JSONDecoder().decode([Book].self, from: data) {
            print(books)
        } else {
            print("Invalid Response")
        }
    } else if let error = error {
        print("HTTP Request Failed \(error)")
    }
}
```




