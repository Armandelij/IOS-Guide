# SwiftUI vs. UIKit

One of the major difference between SwiftUi and UIKit is that SwiftUi is a declarative framework and UIKit is an imperative framework. 

For example in SwiftUi the data can be bonded with the UI elements, so there is no need to track the state of the UI. However in UIKit we need
to track the state of the user interface, if we dont the user can operate on incorrect data. 

There are also performance differences between the two as well. In UIKit every view descends from a class called UIView. So when creating a new view
in UIKit each view would inherit the previous views features. However in SwiftUI views are structs and can be created almost for free.  
