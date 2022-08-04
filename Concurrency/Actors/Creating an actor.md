# Creating an actor

## Example

Actors are perfect to use when data races are likely. An example of could be a mobile banking application that allows you to send and recieve money. 


``` swift

class BankAccount {
    var balance: Decimal

    init(initialBalance: Decimal) {
        balance = initialBalance
    }

    func deposit(amount: Decimal) {
        balance = balance + amount
    }

    func transfer(amount: Decimal, to other: BankAccount) {
        // Check that we have enough money to pay
        guard balance > amount else { return }

        // Subtract it from our balance
        balance = balance - amount

        // Send it to the other account
        other.deposit(amount: amount)
    }
}

let firstAccount = BankAccount(initialBalance: 500)
let secondAccount = BankAccount(initialBalance: 0)
firstAccount.transfer(amount: 500, to: secondAccount)

```

One thing to recognize is that all of the properties and methods are in a class instead of an actor. This is important because swift will allow us to 
access the same piece of data multiple times, this is what we  DO NOT WANT!!! 

A worse case sceanario would involve two parallel calls to transfer() on the same **BankAccount** instance, the following would happen

1. Both would check to see if the balcance had sufficient funds for the transfer. They both do so the code would continue.
2. Both would subtract the amount from the balance and deposit it into the other account. 









