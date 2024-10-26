---
sidebar_position: 1
---


# OOP - Abstraction
>Abstraction is the process of simplifying complex systems down to their essential features, **hiding unnecessary details**, which makes the code base easier to understand.

:::note
Wise developers know that **complexity is the natural enemy of a software developer**. Complexity is constantly trying to creep into our code, and we must remain vigilant to stamp it out on sight!
:::

### Benefits of Abstraction
- **Modularity:** Changes in the implementation do not affect other parts of the code.
- **Reusability:** Abstract classes and interfaces allow you to create reusable components.
- **Code Maintenance:** The separation of interface and implementation makes maintaining code simpler.

### Tipps
- **Clear Responsibilities:** each class should have one job only.
- Splitting responsibilities across classes and methods is known as **factoring the system**.
- **Abstract at the right level:** Aim for a balance that captures the essential aspects of the problem domain without introducing unnecessary complexity.
- **Good naming:** try to be precisely, accurately and concisely. This makes the code more readable and the process of coming up with good names encourages better class design.  
	*e.g.:* the class name `ParseInputDataAndUpdateDatabaseAndDisplayResult` suggests that you actually have three classes or methods: `ParseInputData`, `UpdateDatabase`, `DisplayResult`.

---
## How to Implement Abstraction
### 1. Abstract Classes
- An abstract class is a class declared with the `abstract` keyword and can contain both **abstract methods** (*methods without implementation*) and **concrete methods** (*methods with implementation*).
- Abstract classes can not be instantiated, they must be subclassed.
- A subclass can only `extend` one class.
- Is used to groupe common functionality of subclasses together.
- For objects which can not exist in the real world, *e.g.:* Appliance is just a category of objects.

*NOTE: access modifier can not be `private` .*
```java
ACCESS_MODIFIER abstract class CLASS_NAME {}
```
<details>
	<summary>*example:* `abstract class`</summary>

	```java
	abstract class Vehicle {
	    abstract void start();  // abstract method
	    void stop() {           // concrete method
	        System.out.println("Vehicle has stopped.");
	    }
	}
	```
	```java
	class Car extends Vehicle {
	    @Override				// optional
	    void start() {
	        System.out.println("Car is starting.");
	    }
	}
	```
	- `@Override` annotation informs the compiler that the element is meant to override an element declared in a superclass.
	- In this example, `Vehicle` defines a generic concept of a vehicle with an abstract method `start()` that subclasses like `Car` must implement.
</details>

### 2. Interfaces
- An interface in Java is a reference type, similar to a class, that can contain only **abstract methods** (*in versions prior to Java 8*) or **default methods** (*since Java 8*).
- Fields are implicitly `final`.
- All methods in an interface are implicitly `public` and `abstract` if not declared `default`.
- A class can implement multiple interfaces, making interfaces useful for achieving multiple inheritance.
- The suffix `able` is convention when naming interfaces.

*NOTE: access modifier can not be `protected` or `private` .*
```java
ACCESS_MODIFIER interface INTERFACE_NAME { /*methods ....*/}
```
<details>
	<summary>*example:* `interface`</summary>

	```java
	interface Startable {
	    String name = "is starting.";   // is finale, can not change in class
	    void start();                   // needs to be implemented by class
	    default void hello(){           // can be overwrite by class
	        System.out.println("hello form Startable!");
	    }
	}
	```
	```java
	class Motorcycle implements Startable {
	    @overwrite                      // optional, for compiler
	    public void start() {           // needs to be implemented
	        System.out.println("Motorcycle" + name);
	    }

    }
	```
	- `@Override` annotation informs the compiler that the element is meant to override an element declared in a superclass.
	- In this example, the `Startable` interface defines an abstract method `start()` that any implementing class (e.g., Motorcycle) must define.
	- The `default` method `hello()` is in the implementing class available, but can be overwritten in the implanting class.
</details>
