# How to make a task sleep

To put a task to sleep you need to use the **sleep()** method. 
> You have to use nano seconds as a reference the amount of time you want a task to sleep. So 1_000_000_000 represents 1 sec.

Youll have to call task.sleep() using the **await** keyword so it will cause the task to be suspended and also you will need to use **try** because 
sleep() wi;; throw an error

The example below will sleep a task for 4 seconds:

``` swift

try await Task.sleep(nanoseconds: 4_000_000_000)

```
