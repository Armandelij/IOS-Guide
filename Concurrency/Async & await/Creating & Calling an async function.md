# Creating & Calling an async function

You can create an async function in two steps:
  - Step 1. Declaring the function as **async** 
  - Step 2. Calling that function using **await**

Reasons why we should use async when downloading information from the internet:

- The user could have a bad cellphone connection 
- If your application needs to perform complex arithmatic and the system is preocupied. 
- Uploading information to the internet suffers the same complications as downloading, so it should be done asynchronously


# Example

Below is a code snippet of a weather application that dowmloads temeratures from a server, calculates the average temp, then uploads the results.

``` swift
func fetchWeatherHistory() async -> [Double] {
    (1...100_000).map { _ in Double.random(in: -10...30) }
}

func calculateAverageTemperature(for records: [Double]) async -> Double {
    let total = records.reduce(0, +)
    let average = total / Double(records.count)
    return average
}

func upload(result: Double) async -> String {
    "OK"
}

func processWeather() async {
    let records = await fetchWeatherHistory()
    let average = await calculateAverageTemperature(for: records)
    let response = await upload(result: average)
    print("Server response: \(response)")
}

await processWeather()
```
In the code above there are 4 total async functions. The first 3 functions:
- Downloads the data
- Proccesses the data
- Then upload results

The final function "processWeather()" calls the prior functions one by one.

# Important Notes

- Every await call in the last function is a potential suspension point.
- Each await call will be completed in sequential order waiting for the previous to complete. (anything could happen in-between each await call)
- When an await call finishes, its value will be assigned to one of the constants (records, average and response)

> Remeber the function call also needs to use the await keyword await "processWeather()" 
 







