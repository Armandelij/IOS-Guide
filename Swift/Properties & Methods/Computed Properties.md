# Computed Properties

Computed properties run code in order to calculate a value. The computed property uses properties of the struct it is in to calculate new values. 

We can eliminate the use of a function when using computed properties, also using computed properties adheres to OOP protocols because the computed property is only accessable by the struct it is in (Encapsulation). 


## Example

``` swift
struct Employee2 {
    var name: String
    var annualSalary: Double
    var weeksPerYear: Int
    var hrsPerDay: Double
    
    var weeklySalary: Double {
        annualSalary / Double(weeksPerYear)
    }
    
    var hourlyWage: Double {
        get { // computed properties all have a stored getter 
        weeklySalary / (hrsPerDay * 5)
        }
    }
}

var emp102 = Employee2(name: "Aiden", annualSalary: 50_000, weeksPerYear: 50, hrsPerDay: 8.0)
emp102.weeklySalary
emp102.hourlyWage
```

1. By default all computed properties have a getter.
2. You can provide a setter that can modify properties in your struct
3. When you change the value of a computed property that has a setter you have access to the "newValue"

``` swift
struct Employee3 {
    var name: String
    var annualSalary: Double
    var weeksPerYear: Int
    var hrsPerDay: Double
    
    var weeklySalary: Double {
        annualSalary / Double(weeksPerYear)
    }
    
    var hourlyWage: Double {
        get {
        weeklySalary / (hrsPerDay * 5)
        }
        set {// newValue is what you assign externally to the computed property
            annualSalary = newValue * hrsPerDay * 5 * Double(weeksPerYear)
        }
    }
}

var emp103 = Employee3(name: "Emily", annualSalary: 22_500, weeksPerYear: 50, hrsPerDay: 7.5)
emp103.weeklySalary // 450
emp103.weeksPerYear // 50

emp103.hourlyWage = 15
emp103.annualSalary // 28125
emp103.weeklySalary // 562.5





```




