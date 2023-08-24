# Declarative Vs Imperative Programming


Declarative programming focuses heavily on recursions. Instead of loops functional programming uses recursions to maintain immutability through the code as opposed to loops which require mutability.


Below is an example of imperative programming:

``` swift 
var total = 0

for i in 1...10 {
total += 1
}
 print("imparative: total: /(total)")
```
> You can see in the example above that variable "total" is being modified inside of the loop, this demonstrates mutability.

Functional Programming on the other hand looks like this:

``` swift 

  func sum(start: Int, end: Int, total: Int) -> Int {
  
  if(start > end) {
    return total:
  
     }
  
  }
  return sum(start: start + 1, end: end, total: total + start)
  
  }
  print("Functional: total:" sum(start: 1, end: 10, total: 0))
```

> The recursion function accomplishes the same as the for loop. In case of the recursion the function calls repeatidlt calls itself, this way values are being modified. 



## Multithreaded Environment

Picture a multithreaded environment where one thread tries to access a thread while another thread tries to mutate it, this can lead the program to an unstable state. 


