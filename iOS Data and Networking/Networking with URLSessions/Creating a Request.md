# Creating a Request

1. We need to define the URL remote image 

``` swift
let url2 = URL(string: "https://bit.ly/2LMtByx")!

```

We create a URLRequest object by passing the URL object to the intializer and store the results in a VARIABLE named request. we will later modify this variable

``` swift
let url2 = URL(string: "https://bit.ly/2LMtByx")!

var request2 = URLRequest(url: url2)
```
Now we pass the URLRequest object to the dataTask(with: completionHandler).
The method is similar to the one we used earlier, the difference is that it accepts a URLRequest object instead of a URL object.


``` swift
let url2 = URL(string: "https://bit.ly/2LMtByx")!

var request2 = URLRequest(url: url2)

let task2 = URLSession.shared.dataTask(with: url2) { data, response, error in
    if let data = data {
        let image = UIImage(data: data)
    } else if let error = error {
        print("HTTP Request Failed \(error)")
    }
}

task2.resume()
```

The benefits of using the URLRequest are that it allows us to configure the HTTP request the URL sessions performs

You can also request the HTTP Header fields by using the setValue(_:forHTTPHeaderField) It is a mutating method that sets the value for a given HTTP header field.

``` swift
request2.setValue("application/json", forHTTPHeaderField: "Content-Type")
```



