# Singleton

The singleton ensures that only one instance/object exists for a class. This is beneficial when one object needs to organize actions across the system.

The Singleton pattern is very easy to over use and is not beneficial if you are simply trying to pass information from one view controller to another.

Singletons can be problematic when testing. For example if you have state being stored in a global object (singleton), the order of the tests matter. 


## Static Property and Private Initializer

``` swift

class NetworkManager {

    // MARK: - Properties

    static let shared = NetworkManager(baseURL: API.baseURL)

    // MARK: -

    let baseURL: URL

    // Initialization

    private init(baseURL: URL) {
        self.baseURL = baseURL
    }

}

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    print(NetworkManager.shared)
    return true
}
```
Understanding the code above:
1. Using **static** allows us to let the shared property be apart of the actual class rather than an instance of it. Other objects can have access to it, reduces redundancy.
  - makes the code a lot easier to read 
2. The initializer is private, meaning only the NetworkManager class can create instances of itself. 
> we dont need to mark the static property as lazy because the initializer of global variables and static properties are executed lazily by default. 

## Dependancy Injection and Singleton

You can use dependancy injection to pass a singleton object to the objects that need it. When you do this the interface of your class remains clear. 

