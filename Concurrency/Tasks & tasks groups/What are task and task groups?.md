# What are task and task groups?

Async/await by themselves still prohibit us from writting concurrent code. To perfrom actual concurrency (multiple pieces of work to run at the same time)
swift gives two specific types for making and managing concurrency, these types are **Task** and **TaskGroup**. 

## Task
Use task when you want one or two independent pieces to work to start.

## TaskGroup
If you want to split one job into multiple concurrent operations then TaskGroup is ideal. 
> Task groups works better when the individual operations return the same type of data.



Task and TaskGroup can be created with one or four priority levels, high, medium, low, and background. 
