# How to cancel a Task

We can request a task to stop working, the task itself on the otherhand may completley ignore the request because if the task stopped it could put the 
program in an inconsistent state.

There are multiple things you should know before working with tasks.

1. You can explicitly cancel a task by calling the **cancel()** method
2. You can determine if a task has been cancelled or not by using the **Task.checlCancellation()**
3. The **Task.CheckCancellation()** method if called will throw a CancellationError if the task has been cancelled, otherwise it wont do anything.
4. **Task.sleep** method will still sleep even when cancelled.
5. If task is apart of a group and any part of the group throws an error, the other tasks will be cancelled and awaited.
6. If you start a task using SwiftUIs task() modifier, the task will cancel automatically when the view disappears. 


Below is a function that retrieves some data using a task, it then decodes it into an array and then returns it. 

``` swift
func getAverageTemperature() async {
    let fetchTask = Task { () -> Double in
        let url = URL(string: "https://hws.dev/readings.json")!
        let (data, _) = try await URLSession.shared.data(from: url)
        try Task.checkCancellation() // explicit check for a cancellation after the network request. 
        let readings = try JSONDecoder().decode([Double].self, from: data)
        let sum = readings.reduce(0, +)
        return sum / Double(readings.count)
    }

    do {
        let result = try await fetchTask.value
        print("Average temperature: \(result)")
    } catch {
        print("Failed to get data.")
    }
}

await getAverageTemperature()
```
In this case try **Task.checkCancellation()** is a static call because it will be applied to every task is inside. 

We can alter the above code to handle the error ourselves. We can have the task return 0 if it is cancelled or fails to retrieve any data. 

``` swift
func getAverageTemperature() async {
    let fetchTask = Task { () -> Double in
        let url = URL(string: "https://hws.dev/readings.json")!

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if Task.isCancelled { return 0 } // returns 0 if the task is cancelled

            let readings = try JSONDecoder().decode([Double].self, from: data)
            let sum = readings.reduce(0, +)
            return sum / Double(readings.count)
        } catch {
            return 0 // returnes 0 if it failed to retrieve any data. 
        }
    }

    fetchTask.cancel()

    let result = await fetchTask.value
    print("Average temperature: \(result)")
}

await getAverageTemperature()
```










