# Creating a Data Task.

1. The point here is to fetch data for an image. To do this we need to define the URL for the remote image

``` swift
let url = URL(string: "https://bit.ly/2LMtByx")!
```

2. Now we need to create a data task, which is a instance of the URLSessionDataTask class.
> A task is tied to a URLSession instance
3. We then get the singleton session object through its shared class property. "URLSession.shared".

We use the "URLSessions.shared" instance to to create a data task, we invoke the "dataTask(with:)" This method returns a URLSessionsDataTask instance
that that accepts two arguments "URL" object and completion handler. The completion handler is a closure which executes when the data task successfully or
unsuccessfully. 

Our closure which in this case is the completion handler accepts three arguments Data optional object, "URLResponse" object, and an optional Error object

``` swift
let url = URL(string: "https://bit.ly/2LMtByx")!

let task = URLSession.shared.dataTask(with: url) { data, response, error in

}
```


A data task and either succeed or fail. If the task fails then error will have a value. If it succeeds then data and response will have a value. For now
we are not concerned with the reponse object.

4. We saftley need to unwrap the data object and use it to create a UIIMage instance. If the data is equal to nil, then the HTTP request has failed and we
will print an error to the console.
5. We need to call resune() on the task to execute it. 

``` swift
let url = URL(string: "https://bit.ly/2LMtByx")!

let task = URLSession.shared.dataTask(with: url) { data, response, error in
    if let data = data {
        let image = UIImage(data: data)
    } else if let error = error {
        print("HTTP Request Failed \(error)")
    }
}
task.resume()
```

On the right side you should see the dimesions of an image object

<img width="1149" alt="Screen Shot 2022-07-17 at 12 26 01 PM" src="https://user-images.githubusercontent.com/64448202/179411394-2d314df5-0c12-4894-9899-5e487029b30f.png">










