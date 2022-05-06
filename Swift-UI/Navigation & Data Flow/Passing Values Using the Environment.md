# Passing Values Using the Environment Object

Sharing data within navigation stacks is made easy by using the NavigationView and environmentObject().
The NavigationView automatically shares its entire environment with every child view that it presents. 
Attaching the environmentObject to the navigationView itself will allow the environment object to be shared in any child view the NavigationView has.

## Example 

``` swift
class User: ObservableObject {
    @Published var score = 0
}

struct ChangeView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            Text("Score: \(user.score)")
            Button("Increased") {
                self.user.score += 1
            }
        }
    }
}


struct ContentView: View {
    @ObservedObject var user = User()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Score: \(user.score)")
                
                NavigationLink(destination: ChangeView()) {
                    Text("Show Detailed View")
                }
            }
                .navigationBarTitle("Navigation")
        }
        .environmentObject(user)
    }
}
```

To demonstrate this, we will need to create an observed object that will host the data.

``` swift
class User: ObservableObject {
    @Published var score = 0
}
```

We can now create a detail view that uses the EnvironmentObject. Since the ChangeView now has access to the user class we can now update the score. 

``` swift
struct ChangeView: View {
    @EnvironmentObject var user: User

    var body: some View {
        VStack {
            Text("Score: \(user.score)")
            Button("Increase") {
                self.user.score += 1
            }
        }
    }
}
```

Now in our content view we can we can create a new instance of user that will be shared in the NavigationView environment. 

``` swift
struct ContentView: View {
    @StateObject var user = User()

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Score: \(user.score)")
                NavigationLink(destination: ChangeView()) {
                    Text("Show Detail View")
                }
            }
            .navigationTitle("Navigation")
        }
        .environmentObject(user)
    }
}
```

















