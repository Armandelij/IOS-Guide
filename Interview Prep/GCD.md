# GCD

GCD is a lower level APU for managing concurrent operarions

## Dispatch Queue

*GlobalQueue* - Used to perform non UI work in the background

*MainQueu* - Used to update the UI after completing work in a task on a concurrent Queue

*DispatchQueue Priorities*

- userInteractive
- userInitiated
- default
- utility
- background
- unspecified


## Example

``` swift
DispatchQueu.global(qos: .background).async {
  // background task
  DispatchQueue.main.async {
    // Ui updates in here.
  }

}


```
