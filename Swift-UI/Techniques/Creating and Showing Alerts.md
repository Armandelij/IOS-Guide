# Creating and Showing Alerts

We can create alerts in our applications by:
1. Creating an @State property that is initially false
2. Create a button that, when tapped will change our property wrapped variable to true
3. We can attatch the .alert to the button closure.
4. We then can modify the alert.


``` swift
struct ContentView: View {
    @State private var showingAlert = false // button is not showing bc its false
    
    var body: some View {
        //MARK: - Alerts
        Button("Show Alert") {
            showingAlert = true // once the button is pressed it will show true
        }
        .alert("Important message", isPresented: $showingAlert) {
            //Button("OK") {} // any button inside the alert will automatically dismiss it.
            Button("Delete", role: .destructive) {} // deletes code inside the closure
            Button("Cancel", role: .cancel) {} // Dismisses the button
        } message: { // adds a message in the button
            Text("Please read this")
        }
    }
}
```



https://user-images.githubusercontent.com/64448202/188230028-60bd46aa-ea2a-4608-8577-9d9a208588d8.mov


