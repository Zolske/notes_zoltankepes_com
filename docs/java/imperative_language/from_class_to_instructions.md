---
sidebar_position: 2
description: Describes the basic elements of which the Syntax is composed.
---

# From Class to Statement

Programs are sequences of operations that essentially consist of statement. They are assembled into larger building blocks, the methods, which in turn form classes. Classes themselves are collected in packages, and a collection of packages is delivered as a Java archive.

## Class declaration
:::note compilation unit
In Java, a "**compilation unit**" is essentially a `.java` file containing the definition of at least one class, interface, enum, or annotation. It may include package and import statements, and at most one public class or interface. The Java compiler processes this compilation unit to produce bytecode, which is then run by the Java Virtual Machine (JVM).
:::

1. There can be only "**one public class**" in an `.java` file and it's **name has to match the file name**, the class has to follow the **Pascal naming convention**.
2. The curly brackets of the class contain declarations of **methods**, i.e. subroutines that a class offers. A method is a collection of statement under one name.
3. Java is a object oriented language in which statement/statements have to be within a methods, which itself needs to be part of a class.
4. Every program needs to have exactly **one main method** which marks the starting point of the program.
```java title="HelloWorld.java"
public class HelloWorld {                     // 'public class name' match 'file name'
    public static void main(String[] args)  { // 'main method' is program 'entry point'
        System.out.println("Hello World!");   // statement is executed at runtime
    }                                         // only 'args' is arbitrary on 'main'
}                                             // no statements outside of classes
```
### Modifiers
The declaration of a **class** or **method** can contain one or more modifiers that, for example, restrict usage or synchronize parallel access.
- **`public`**: is a visibility modifier. It determines whether the class or method is visible to program code from other classes or not.
- **`static`**: allows the method to be called without having to create an object of the class. Without static, an object must be created and the method called via the concrete object.

