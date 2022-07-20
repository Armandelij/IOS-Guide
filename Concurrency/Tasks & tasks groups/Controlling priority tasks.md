# Controlling priority tasks

You can have priority tasks such as **.high** or **.background**, the priority can also be **nil** if no priority was assigned. The priority is used by 
the system to determine which tasks should run next. However this is not set in stone, its more of a suggestion over than a rule


``` swift
func fetchQuotes() async {
    let downloadTask = Task(priority: .high) { () -> String in
        let url = URL(string: "https://hws.dev/chapter.txt")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return String(decoding: data, as: UTF8.self)
    }

    do {
        let text = try await downloadTask.value
        print(text)
    } catch {
        print(error.localizedDescription)
    }
}

await fetchQuotes()
```

If you dont directly assign a priority to a task Swift will do it for you, below are three rules Swift will handle for automatically deciding priority:
1. If the task was created from another task(parent), it will inherit the priority of the parent task,
2. If the new task was created from a main thread it will be assigned the highest priority. **.userInitiated**
3.  If the task wasnt created by a new thread or a main thread, Swift will either query the priority of the thread to give it a nil property. 


## .High or .userInitiated
This should only be used for tasks that the user started and is activley waiting on.

## medium
For most of your tasks the the user isnt activley waiting for.

## .low or .utility
Good for anything long enough to require a progress bar. Like copying files and importing data.

## .background
Something the user cant see like building a search index. Theoretically could take hours.








