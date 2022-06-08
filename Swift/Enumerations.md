# Enumerations 

Enumerations or Enums are a specific set of related values that are not inatley recognized by swift.

## Example 

Making an enum:
1. use the keyword "enum"
2. provide a name of the enum. The first letter should be capitalized because it is a type.
3. Now, provide a case. The case will be associated with the type 


``` swift
enum Gender: { 
    case male  
    case female 
    case other 
}

// you can also use a single case key word followed by comma seperated name
    Example:  case male, female, other

```

Now we can assingn a constant or variable to one of the cases related to type.

``` swift
// assinging a constant to gender
let male = Gender.male // implicit way.
let female: Gender = .female // explicit way

```

You can also associate a raw value with the enum by declaring after the name of the gender.
> Each case naturally has a raw value and it is whatever the name is set to.

In the case of the enum below the raw value is set to an Int so case winter has a raw value of 0 and each case after that will have +1 of the value before
it unless a case is set equal to another value. 

``` swift 
enum Season: Int { 
    case winter = 1 // here we have set winter to have a raw value of one. 
    case spring
    case summer
    case fall
}

```
We can access the raw value by using dot notation (.rawValue)


``` swift
let cold = Season.spring.rawValue // 2

```


