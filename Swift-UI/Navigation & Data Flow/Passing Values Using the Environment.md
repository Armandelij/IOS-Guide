# Passing Values Using the Environment Object

Sharing data within navigation stacks is made easy by using the NavigationView and environmentObject().
The NavigationView automatically shares its entire environment with every child view that it presents. 
Attaching the environmentObject to the navigationView itself will allow the environment object to be shared in any child view the NavigationView has.

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
