# Dictionary

A dictionary is a generic collection that hold key value pairs. Below is an example of a dictionary containing the name of a player along with his/hers
score

``` swift
var scores: [String: Int] = ["Kobe": 81, "AI": 27, "Lebum" : 33, "Your Airness" : 23]
```
Dictionaries cannot garuntee order, nor can we insert elements at a specific index. Furthermore the Key value has to hashable, majority if the standard data structures are hashable.

We can update the scores array like this:

```swift
scores["Slim Reaper"] = 42
```

The Key value pair above will be inserted into a random place in the scores array.

Since the dictionary follows the Collection protocol it can be traversed throught. 
> The order of the dictionary is not defined however whenever you traverse through it the elements will be in the same order everytime until you mutate it. 

Inserting elents in a dictionary always takes constant amount of time. Unlike arrays whos elements shift around. 
