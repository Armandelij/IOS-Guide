# How to voluntary suspend a task

You may want to suspend a task if youre executing a long running task. Calling the **Task.yield()** will voluntary suspend the task so swift can give 
other tasks the chance to proceed.

An example of this would be to create a function that calculates the factor of a number.

## Example

``` swift

func factors(for number: Int) async -> [Int] {
    var result = [Int]()

    for check in 1...number {
        if check.isMultiple(of: 100_000) { // this task will yield every 100_000 checks
            await Task.yield()
        }

        if number.isMultiple(of: check) {
            result.append(check)
        }
    }

    return result
}

let factors = await factors(for: 120)
print("Found \(factors.count) factors for 120.")


> If a task has a higher priority than other tasks when running there is a chance that the task will not stop runnning if yield() is called. 
```
