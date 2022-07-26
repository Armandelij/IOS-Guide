# How to cancel a task group

You can cancel a task group in one of three ways:

1. If you call **cancel()** on the group
2. If one of the children in the task group throws an uncaught error, all the remaining tasks will be cancelled
3. The parent task of the group is cancelled. 

## Example

``` swift
func printMessage() async {
    let result = await withThrowingTaskGroup(of: String.self) { group -> String in
        group.addTask {
            return "Testing"
        }

        group.addTask {
            return "Group"
        }

        group.addTask {
            return "Cancellation"
        }

        group.cancelAll() //              <------
        var collected = [String]()

        do {
            for try await value in group {
                collected.append(value)
            }
        } catch {
            print(error.localizedDescription)
        }

        return collected.joined(separator: " ")
    }

    print(result)
}

await printMessage()
```

Even though we called **cancelAll()** after creating the three tasks, when the code is ran the three strings will still get printed out because cancelling a 
group tasks is cooperative, so unless you check for cancellation calling **cancelAll()** wont amount to much. 

We can check for a cancellation by using **try Task.checkCancellation()** To try this out we can add replace the first **addTask()** with this 

``` swift
group.addTask {
    try Task.checkCancellation()
    return "Testing"
}
```

1. It is important to understand that all three tasks start immediatley, they may or may not run in parallel.
2. Some of the tasks may have already began to run, after us calling **cancelAll()**
3. the tasks finish in completion order, so when we iterate over the group we might recieve the results from any of the three tasks. 

It is possible that the first task to complete calls the **Task.checkCancellation()** this means our loop will exite and an error message will be print and 
no other tasks will be executed. However if the third task calls the **Task.checkCancellation()** the other previous tasks have executed and in that case
we will get our other out puts

> **cancelAll()** only cancels remaining tasks. 








