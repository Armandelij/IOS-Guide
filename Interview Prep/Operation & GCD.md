# Operation & GCD

Both operation and GCD are used to any type of multi threading in GCD.

GCD - Represents units of work that are going to be executed concurrently.

Operation - Adds extra overhead compared to GCD. You can add dependencys among various operations and re-use, cancel or suspend them. 

Operation and OperationQueue are built on top of GCD. 
> Apple recommends the using Operation and Operation Queue instead of GCD
