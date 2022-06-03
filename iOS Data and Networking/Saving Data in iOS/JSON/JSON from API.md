# JSON from Application Programminng Interface (API)

We are going to create an API request that retrives all of the followers from Paul Hudsons Git hub.
We will enter the url https://api.github.com/users/twostraws/followers into address bar and see the results
in the window. We will build a structure regarding the login and id of each of Paul Hudsons followers.

# Example 
1. Create the struct and make it conform to the decodable protocol, with properties login and id.

``` swift
struct GHFollower: Decodable {
let login: String
let id: Int
}
```

2. Create a function that will retrieve the data
  
  ``` swift

func getJSON() {  
//3.  Valid date the url with a guard statement and if it fails it will exit the function
guard let url = URL(string: "https://api.github.com/users/TwoStraws/followers") else {
      return
    }
//4. Wrap URL in a URL request
    let request = URLRequest(url: url)
    
//5. Create and start a networking task
    URLSession.shared.dataTask(with: request) {(data, response, error) in
//6. inside the URL request we can check and see if there is an error and if there is print it or return the function doing nothing.
        if let error = error {
            print(error.localizedDescription)
            return
        }
//7. checking to see if there is data or not. Return from the function if there is no data.
        guard let data = data else {
        return
        }
//8. Set up decoder and check to see if the reponse is valid or else return
        let decoder = JSONDecoder()
        guard let decoderData = try? decoder.decoder([GHFollower].self, from: data) else {
          return
        }
        
        let followers = decodedData
        for follower in followers {
          print(follower.login)
        }
        
        
    }.resume() // allows data task to execute
 }
 
 getJSON()
 
 ```
 
## We can update this function to make it reusable
``` swift
 
 /*
 1. create a function to retrieve the followers
    
    - Add a completion call back that will take an optional array of GHFollower and return void
 */
 
      // 1. Create a string url so we dont have to hard code the url
func getJSON(urlString: String, completion: @escaping ([GHFollower]?) -> Void) {
guard let url = URL(string: urlString) else {
    return
}

let request = URLRequest(url: url)

URLSession.shared.dataTask(with: request) {(data, response, error) in
    if let error = error {
        print(error.localizedDescription)
        completion(nil) //2. In the case of an error and the error doesnt exist completion will use nil as an array of GHFollower. This is why the [GHFollower]? is an optional.
        return
    }
    guard let data = data else {
        completion(nil) //3. if the coder cant decode our data it will use nil
        return
    }
    let decoder = JSONDecoder()
    guard let decodedData = try? decoder.decode([GHFollower].self, from: data) else {
        completion(nil) //
        return
    }

   completion(decodedData)//5. Parameter for the completion block
}.resume()
}

getJSON(urlString: "https://api.github.com/users/TwoStraws/followers") { (followers) in
    if let followers = followers {
        for follower in followers {
            print(follower.login)
        }
    }
}
 ```
