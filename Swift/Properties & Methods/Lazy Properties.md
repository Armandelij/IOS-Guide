# Lazy Properties

Lazy Variables are evaluated once they are used. This helps if you have large complex objects in your code that take up a lot of computing power.

## Example

```swift
struct Person {
    var age = 16

    lazy var fibonacciOfAge: Int = {
        fibonacci(of: self.age)
    }()
    

    func fibonacci(of num: Int) -> Int {
        if num < 2 {
            return num
        } else {
            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
        }
    }
}

var singer = Person()
print(singer.fibonacciOfAge)
```

1. Lazy Properties must always be variables
2. You must specify the type because the value is created during its evaluation
3. Once the data type is set you need to provide a closure
4. You need to use self inside the closure. this wont cause a retain cycle because the closure is applied
5. You need to add () to the end of the closure because you are making a call to it.

