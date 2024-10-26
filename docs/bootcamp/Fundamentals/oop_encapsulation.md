---
sidebar_position: 2
---

# OOP - Encapsulation
>Bundling the data (*fields*) and the methods that operate on the data into a single unit, typically a class. By doing so, encapsulation can restricts direct access to certain components of an object, protecting the integrity of the data and controlling how it’s modified through access modifiers.

### Benefits of Encapsulation
	- **Data Protection**: Sensitive data is protected from unauthorized or unintended access.
	- **Controlled Modifications**: Allows validation or additional processing when setting or getting values.
	- **Improved Flexibility and Maintenance**: The implementation can be changed without affecting other parts of the program.
	- **Code Reusability and Modularity**: Encapsulation keeps code self-contained, making it more reusable and modular.
	- **Reducing complexity** by only making necessary fields and methods visible to the outside.

## Access Modifiers
Access modifiers are keywords that control the visibility of **fields**, **methods**, and **constructors** in a class.  
A **class** itself can be only `public` or "default" (*without access modifier*). 

:::note The Principle of Least Knowledge
Classes should only expose publicly the minimum necessary functionality/information, and everything else should be private. This minimises coupling and points of failure.  
:::

|access modifier|scope (*high to low*)|
|---|---|
|`public`|outside the package and within|
|`protected`|within the package + subclasses|
|(*without access modifier, "default"*)|within the package|
|`private`|within class|

<details>
	<summary>*example*: encapsulation</summary>

	```java
	public class BankAccount {
	    // Private field - data hidden from outside classes
	    private double balance;

	    // Constructor
	    public BankAccount(double initialBalance) {
	        if (initialBalance > 0) {
	            this.balance = initialBalance;
	        }
	    }

	    // Public getter method for accessing the balance
	    public double getBalance() {
	        return balance;
	    }

	    // Public setter method for modifying the balance
	    public void deposit(double amount) {
	        if (amount > 0) {
	            balance += amount;
	        }
	    }

	    public boolean withdraw(double amount) {
	        if (amount > 0 && amount <= balance) {
	            balance -= amount;
	            return true;
	        } else {
	            return false; // Insufficient funds or invalid amount
	        }
	    }
	}
	```
- The `balance` field is private, so it can only be accessed or modified through the `deposit()` and `withdraw()` methods.
- The `getBalance()` method provides read-only access to `balance`, while the `deposit()` and `withdraw()` methods provide controlled ways to modify it.
- This encapsulation prevents direct manipulation of `balance` by other classes, ensuring the integrity of the account's balance.
</details>


## Getters and Setters
Are methods that are used to access and modify the `private` fields of an class.  
Logic in methods can be used to validate the accessor and the date to be set in the field.

- **Getter**:  
	-> Gets the data from the field, the name of the method starts by convention with the prefix `get`.

- **Setter**:  
	-> Sets the data in the field, the name of the method starts by convention with the prefix `set`.
