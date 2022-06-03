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
