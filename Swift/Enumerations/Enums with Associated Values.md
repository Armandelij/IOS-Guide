# Enums with Associated Values

We can attatch additional information assocaite with a specific enum value.
For example we can create a Distance enum that has two cases km and miles and attatch strings to them that will further explain the type of measuring system used


## Example

``` swift
enum Distance {
    case km(String)
    case miles(String)
}


var dist1 = Distance.km("Metric System")
print(dist1) // km("Metric System")

```
