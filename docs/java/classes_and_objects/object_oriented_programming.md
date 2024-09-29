---
sidebar_position: 1
description: Object-oriented programming (OOP) is a computer programming model that organizes software design around data, or objects, rather than functions and logic.
---

# Object Oriented Programming OOP

## Why OOP?
> Since people perceive the world in objects, the analysis of systems is often modeled in an object-oriented manner. But with procedural systems that only have subprograms as a means of expression, it becomes difficult to map the object-oriented design into a programming language, and a gap arises. Over time, documentation and implementation diverge; the software is then difficult to maintain and expand. It is better to think in an object-oriented way and then have an object-oriented programming language to map it.

## Identity, state, behavior
The objects depicted in the software have three important properties:
1. Every object has an **identity**.
2. Every object has a **state** (*fields*).
3. Every object exhibits a **behavior** (*methods*).

- These three properties have important consequences:  
	1. the identity of the object remains the same during its life until its death and cannot change.  
	2. the data and the program code for manipulating this data are treated as belonging together.  
		- In procedural systems, scenarios like the following are often found:  
		There is a large memory area that all subprograms can access in some way.  
		- This is different with objects, as they logically manage their own data and monitor manipulation.
		- In object-oriented software development, it is therefore about modeling in objects and then programming. Design plays a central role here; large systems are broken down and described in ever greater detail.

<!-- ## Class Properties
Ever object is an instance of a class, which contains fields (*states*) and methods (*behaviors*). -->

## Creating new Objects
In Java, an **object** is an instance of a class. You create an object using the `new` keyword, followed by the class constructor. The process of creating an object involves three main steps:

1. **Declaration**: A variable is declared with a class name to hold the reference to the object.
2. **Instantiation**: The `new` keyword is used to create an object.
3. **Initialization**: The class constructor is called to initialize the newly created object.

```java title="syntax object creation"
ClassName objectName = new ClassName();
```

<details>
	<summary>example: object creation</summary>

```java
// Define a Car class
public class Car {
    // Fields (properties)
    String color;
    int speed;

    // Constructor
    public Car(String color, int speed) {
        this.color = color;
        this.speed = speed;
    }

    // Method to display car information
    public void displayInfo() {
        System.out.println("Car color: " + color + ", Speed: " + speed);
    }

    // Main method to create objects
    public static void main(String[] args) {
        // Create an object of the Car class using the constructor
        Car myCar = new Car("Red", 120);

        // Accessing the object's method
        myCar.displayInfo();  // Output: Car color: Red, Speed: 120
    }
}
```
#### In this example:

- ` Car myCar = new Car("Red", 120);` creates an object named `myCar` of the `Car` class.
- The constructor `Car("Red", 120)` is used to initialize the `color` and `speed` fields of the `Car` object.
</details>

---
