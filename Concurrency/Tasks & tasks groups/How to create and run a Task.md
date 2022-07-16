# How to create and run a Task

The code below is an example of two tasks that will fetch data from two different URLs, decode them into two different structs and then print the results.

Example:

``` swift
struct NewsItem: Decodable {
    let id: Int
    let title: String
    let url: URL
}

struct HighScore: Decodable {
    let name: String
    let score: Int
}

func fetchUpdates() async {
    let newsTask = Task { () -> [NewsItem] in
        let url = URL(string: "https://hws.dev/headlines.json")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([NewsItem].self, from: data)
    }

    let highScoreTask = Task { () -> [HighScore] in
        let url = URL(string: "https://hws.dev/scores.json")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([HighScore].self, from: data)
    }

    do {
        let news = try await newsTask.value
        let highScores = try await highScoreTask.value
        print("Latest news loaded with \(news.count) items.")

        if let topScore = highScores.first {
            print("\(topScore.name) has the highest score with \(topScore.score), out of \(highScores.count) total results.")
        }
    } catch {
        print("There was an error loading user data.")
    }
}

await fetchUpdates()
```

Understanding the above code:

1. To create a running task, you need to use its initializer and pass in the work you would like it to do
  - Tasks dont have to return a value, but if they do you need to specify what it needs to return. In our case it returns an array of **[NewsItems]**
``` swift
Task { () -> [NewsItem] in
```
2. Tasks start running immediatly, there is no start() method or anything.
3. The task will run concurrently with your other code, meaning it might run in parallel. Furthermore this means that the fetching and decoding happends inside the task, this keeps our main **fetchUpdated()** function free. 
> We can read the **value** of the task but we have to use the **await** key word. Whenever we want to read the value of an async function we have to use await.
4. Since we are accessesing a network an error might occur soo we will have to use **try**
5. Once the value from the task is copied out, you can refrain from using the await or try. keyword unless you need to access to the task itself. 






