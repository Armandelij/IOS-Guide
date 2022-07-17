# Task & Detached Task

## Task
Begins working immediatley and inherits the priority of the caller, any task local values and its actoe context. 
> They are similar to static properties on a type, except rather than everything sharing that property, each task has its own value.

## Detached Task
Do not inherit the task local values of their parent becase they do not have a parent. They start working immediatley as well.


## Tasks & Actors

Creating a task inside of an actor will isolate that specific actor to that task. 
