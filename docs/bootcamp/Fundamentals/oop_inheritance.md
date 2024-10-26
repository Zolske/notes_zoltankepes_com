---
sidebar_position: 3
---

# OOP - Inheritance
>Is the concept of sharing structure and behavior between classes.  

Just as children inherit traits from their parents, classes can share code (*fields and methods*) with other classes in a hierarchical style.

Note that, also with children and parents, not all structure/behaviour is necessarily inherited. We can restrict access to code if required.

## Inheritance terminology
- **Subclass**: A class that is inheriting from another class.
- **Superclass**: The class that a subclass is inheriting from. A superclass can have many subclasses.
- **Base class**: A superclass that does not itself inherit from another class.
- **Implementation**: A concrete realization of a particular piece of code or functionality.
- **Concrete**: Is often used as the opposite of abstract, with the sense that this piece of code is not just an idea, it's something you can see and use.
- **abstract class**: is a restricted class that cannot be instantiated. A class is a good candidate for being abstract when it represents a general concept.

## Creating Subclasses
- Inheritance uses the `extends` keyword to indicate that a subclass inherits from a superclass.
- The `super` keyword (*for superclass*) is used to call the constructor of the superclass from within the subclass constructor.
- The `@Override` annotation indicates that a child class method is overwriting its base class method. While this annotation is optional, it serves two purposes: documenting your intention to override a method, and catching errors if you fail to correctly override a method.


<details>
	<summary>*example:* subclass</summary>

	```java
// Superclass (Parent Class)
    class Animal {
        String name;
    
        // Constructor
        Animal(String name) {
            this.name = name;
        }
    
        // Method to describe sound
        void makeSound() {
            System.out.println("Animal makes a sound");
        }
    }
    
    // Subclass (Child Class) that extends Animal
    class Dog extends Animal {
    
        // Constructor
        Dog(String name) {
            super(name); // Calls the constructor of the superclass (Animal)
        }
    
        // Overriding the makeSound method
        @Override
        void makeSound() {
            System.out.println(name + " barks");
        }
    }
	```
	- The Animal class defines a property `name` and a method `makeSound()`.
	- The `Dog` class extends `Animal`, meaning it inherits `name` and `makeSound()` from `Animal`.
	- `Dog` also overrides the `makeSound()` method to provide a specific behavior for dogs.

	```java
	public class Main {
        public static void main(String[] args) {
            Dog dog = new Dog("Buddy");
            dog.makeSound();  // Output: "Buddy barks"
        }
    }
	```
</details>

## Considerations for inheritance
Inheritance works well for organizing data where a hierarchy exists, such as with animals, where there are obvious relationships between types of animal. But even in cases like Animal, there are exceptions. For instance, the platypus is a mammal that lays eggs, which doesn't fit neatly into our inheritance system unless we plan for these unusual cases.

## Types of Inheritance in Java
Java supports single inheritance and multi-level inheritance:

- **Single Inheritance**: A class inherits from one superclass only.
- **Multi-Level Inheritance**: A class can inherit from a superclass, which itself inherits from another superclass. *For example*, `Puppy` could extend `Dog`, which extends `Animal`.  

Java does not support multiple inheritance directly (i.e., a class cannot extend more than one class) to avoid complexity and ambiguity, known as the "diamond problem." Instead, Java uses interfaces to achieve a form of multiple inheritance.

## The final keyword
All methods can be overridden in subclasses, unless they are marked with the `final` keyword.
```java
public final void snarl(){ // this method CAN NOT be overwritten by any subclass
    System.out.println("*snarl*");
}
```

## Important Notes
- **Access Control**: Inherited fields and methods are subject to access modifiers. For instance, private members of a superclass are not directly accessible in a subclass.
- **Constructor Chaining**: The `super` keyword is used in the subclass constructor to call the superclass constructor, ensuring that the superclass is initialized properly.
