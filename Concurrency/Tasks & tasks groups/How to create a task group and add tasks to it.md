# How to create a task group and add tasks to it

Tasks groups are a collection of tasks that work in unison to produce a single result. 
> The tasks must return the same type of data, but you can use enums associated values to make them send back different kinds of data.


You create a task group by calling the **withTaskGroup** function, with this you tell it what type of data you want to return. 

An extremely simple example of this would be create a task group that retunes 5 constant strings, adding them to an array then joining that array into a 
string.

``` swift
func printMessage() async {
    let string = await withTaskGroup(of: String.self) { group -> String in
        group.addTask { "Hello" }
        group.addTask { "From" }
        group.addTask { "A" }
        group.addTask { "Task" }
        group.addTask { "Group" }

        var collected = [String]()

        for await value in group {
            collected.append(value)
        }

        return collected.joined(separator: " ")
    }

    print(string)
}

await printMessage()
```
Key things to understand:

1. We have to provide the type of data our task will return, in the case above it is (string.self), this allows for each child task to return a string
2. We have to specify that the return calue of the group will be by using **group -> String in**
3. **addTask()** is used once for each task we want to add to the group passing desired work we want the task to do.
4. Task groups conform to asynSequence, this allows us to read all the values from their children with **for await** or **group.next().
5. We call **await()** because the task group executes asynchronously. 

> The task above is sent in completion order and not creation order, this can jumple the words when being returned.  

If your task group the possibility of throwing errors than using **withThrowingTaskGroup() to handle errors outside the task group.




