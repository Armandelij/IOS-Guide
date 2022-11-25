# MVVM (Model- View - ViewModel)

MVVM is an architectural pattern for iOS mainly for Swift. It is the more popular compared to MVC. In MVC the view controller can get bloated and
becomes dificult to manage.
In MVVM the view controller and the view is combined to become "view" and an additional layer is added valled the viewmodel. This new view will 
communicate with the model, process the data and if required process some buisness logic, then it will send date to the view controller that is
responsible for updataing the UI. 


## Example

 *User create comment on a post*

* UserViewController - Will update the UI

* UserViewModel Class - Performs heavy tasks and Buisness Logic

* UserModel - Will represent the database model for the user class
