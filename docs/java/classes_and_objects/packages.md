---
sidebar_position: 2
description: A Java package organizes Java classes into namespaces, providing a unique namespace for each type it contains. Classes in the same package can access each other's package-private and protected members.
---

# Packages
>  Are a way of grouping related classes, interfaces, and sub-packages to organize the code in a structured manner. They provide a namespace for classes and help avoid name conflicts between different classes with the same name. Packages in Java are similar to directories or folders that contain files, where the files are classes and interfaces.

## Why Use Packages?
Packages offer several benefits:

1. **Modular Code Organization**: Packages help organize your code into smaller, logical units, making it easier to manage and maintain.
2. **Avoiding Naming Conflicts**: By grouping classes into packages, you can use the same class name in different packages without conflicts.
3. **Access Control**: Packages provide a way to control the visibility and accessibility of classes, interfaces, and their members using access modifiers like `public`, `protected`, `private`, and default (no modifier).
4. **Reusability**: Once a package is created, it can be reused in other applications or projects.
5. **Convenient Searching and Categorization**: Packages help locate classes easily, especially in large projects with many classes.

## Types of Packages in Java
There are three types of packages in Java:

1. **Built-in Packages**: These are predefined packages that come with the Java standard library (e.g., `java.util`, `java.io`, `java.lang`, etc.).
2. **User-defined Packages**: These are packages created by the user to organize their own classes.
3. **Unnamed Packages** (*default package*): When you create Java classes without specifying a `package` statement at the top of the file, those classes automatically become part of the "unnamed package".  
	- Classes in the "unnamed package" are accessible only within the same "unnamed package". You cannot import or access them from classes in "named packages".
	- Only one "unnamed package" in a given directory or folder.

---
## User define Packages
### Creating a Package
To create a package, use the package keyword at the top of the Java file before any class or interface definitions.
```java title="syntax package creation"
package packageName;
```

<details>
	<summary>example: package creation</summary>

For example, if you want to create a package named com.example, you would write:
```java
package com.example;

public class MyClass {
    public void display() {
        System.out.println("This is MyClass in package com.example");
    }
}
```
#### In the example above:

- The class `MyClass` belongs to the `com.example` package.
- The package `com.example;` statement must be the first line of the Java file.
</details>

### Using Packages
To use classes from a package, you need to **import** them into your Java file using the import statement. You can `import` a specific class or the entire package.

#### import a specific class
- *E.g.:* `import com.example.MyClass;` imports only the class `MyClass` from the package `com.example`.

#### import all classes from a package
- *E.g.:* `import com.example.*;` imports all classes of the package `com.example` using the wildcard `*` .
- **NOTE**: there can be a conflict, if the same class is imported from different packages over a wildcard `*`. *E.g:* `Data` class from the package `java.util.*` and `java.sql.*`.

<details>
	<summary>*example:* package import</summary>

```java title="import specific class"
import com.example.MyClass;

public class Test {
    public static void main(String[] args) {
        MyClass obj = new MyClass();
        obj.display();
    }
}
```
```java title="import all classes"
import com.example.*;

public class Test {
    public static void main(String[] args) {
        MyClass obj = new MyClass();
        obj.display();
    }
}
```
</details>

### Package Structure
The physical structure of a package corresponds to the directory structure of the file system. For example:

- Package names are noted in lower case and with english alphabetic characters.
- The package `com.example.project` has the folder structure `com/example/project/`. Each dot (`.`) in the package name represents a sub-folder.

<details>
	<summary>creating a user-defined package: step-by-step</summary>

Let’s create a package named `shapes` and a class `Circle` inside that package.
1. **Create the Package and Class**:  
	Create a folder named `shapes` and create a file named `Circle.java` inside it:
	```java title="file: shapes/Circle.java"
    package shapes;             //defines the 'shapes' package
    
    public class Circle {       //the 'Circle' class is now part of the 'shapes' package
        private double radius;
    
        public Circle(double radius) {
            this.radius = radius;
        }
    
        public double getArea() {
            return Math.PI * radius * radius;
        }
    }
	```
2. **Compile the Package**:  
	Navigate to the directory where the shapes folder is located and compile it using the following command: `javac shapes/Circle.java`

3. **Create Another Class to Use the Package**:  
	Create another file named `TestCircle.java` in the same directory (outside the shapes folder):
	```java title="file: TestCircle.java"
    import shapes.Circle;  // Import the Circle class from the shapes package
    
    public class TestCircle {
        public static void main(String[] args) {
            Circle circle = new Circle(5.0);
            System.out.println("Area of circle: " + circle.getArea());
        }
    }
    ```
4. **Compile and Run**:  
	1. Compile the `TestCircle.java` file with the CLI command:  
		`javac TestCircle.java`
	2. Run the `TestCircle` class with the CLI command:  
		`java TestCircle`
	- output: `Area of circle: 78.53981633974483`
</details>

### Built-in Packages
Java provides several built-in packages as part of its standard library. Some commonly used packages include:

- `java.lang`: Contains core classes like `String`, `Math`, `Integer`, `System`, etc. (`java.lang` is imported by default and does not need an explicit import statement.)
- `java.util`: Contains utility classes such as `ArrayList`, `HashMap`, `Date`, etc.
- `java.io`: Contains classes for input and output operations like `File`, `InputStream`, `OutputStream`, etc.
- `java.awt`: Contains classes for building graphical user interfaces (GUIs).
- [link to Java SE 22 package api documentation](https://docs.oracle.com/en/java/javase/22/docs/api/allpackages-index.html)

### Access Control with Packages
Packages also influence how access modifiers work:

- `public`: A public class, method, or field is accessible from any other class, regardless of the package.
- `protected`: Accessible within the same package and by subclasses in different packages.
- **Default (no modifier)**: Accessible only within the same package (package-private).
- `private`: Accessible only within the same class.

### Summary
Packages in Java are used to organize classes and interfaces, avoid naming conflicts, and control access to classes and their members. They provide a way to group related functionality and establish a modular project structure. Understanding and using packages effectively is crucial for creating scalable and maintainable Java applications.

---
## Static Import
> Allows you to import static members (**fields** and **methods**) from another class so that they can be accessed directly without qualifying them with the class name. It provides a cleaner and more concise way to use constants or utility methods in your code.

### Syntax of Static Import
Is similar to the regular import statement but uses the keyword `static` after `import`.
```java title="syntax static import"
import static packageName.ClassName.staticMemberName;
import static packageName.ClassName.*;                 //import all static members of a class
```
<details>
	<summary>*example:* static import</summary>

#### Importing Specific Static Members
Suppose we have a class named `Math` (from the `java.lang` package) with static methods such as `sqrt()` and constants like `PI`. Normally, you would use these methods and fields like this:
```java
double result = Math.sqrt(16);
double circumference = 2 * Math.PI * radius;
```
With static import:
```java
import static java.lang.Math.sqrt;
import static java.lang.Math.PI;

public class StaticImportExample {
    public static void main(String[] args) {
        double result = sqrt(16);  // No need to prefix 'Math.'
        double circumference = 2 * PI * 10;
        System.out.println("Square root: " + result);
        System.out.println("Circumference: " + circumference);
    }
}
```
- `sqrt(16)` is used directly instead of `Math.sqrt(16)`.
- `PI` is used directly instead of `Math.PI`.

#### Importing All Static Members
Use the wildcard `*` to import all static members of a class:
```java
import static java.lang.Math.*;

public class StaticImportExample {
    public static void main(String[] args) {
        double result = sqrt(25);   // Using Math.sqrt() directly
        double circumference = 2 * PI * 10;  // Using Math.PI directly
        System.out.println("Square root: " + result);
        System.out.println("Circumference: " + circumference);
    }
}
```
This imports all static members of the `Math` class, so you can use any static field or method (e.g., `sqrt()`, `PI`, `cos()`, `sin()`) without specifying the class name.
</details>

### Use Cases of Static Import
1. **Utility Classes**: Static import is especially useful for utility classes, such as `java.lang.Math`, `java.util.Collections`, or `java.util.Arrays`, which have many static methods.
    ```java
    import static java.util.Collections.sort;
    import static java.util.Arrays.asList;
    
    List<Integer> numbers = asList(3, 2, 1);
    sort(numbers);
    ```
2. **Constants**: If a class has many constants (e.g., enums or `public static final` fields), static import can make your code cleaner.
    ```java
    import static java.awt.Color.*;
    
    Color myColor = RED;  // No need to use Color.RED
    ```
3. **JUnit Testing**: Static import is commonly used in testing frameworks like JUnit, where you frequently use assertions such as `assertEquals`, `assertTrue`, etc.
    ```java
    import static org.junit.Assert.*;
    
    assertEquals(5, sum(2, 3));  // Using assertEquals() directly
    ```
### Pros and Cons of Static Import
#### **Pros**:
1. **Cleaner Code**: Static import can make the code more readable and concise by eliminating repetitive class names.
2. **Improved Readability**: It’s easier to read code with constants or utility methods that do not require qualification by the class name.

#### **Cons**:
1. **Reduced Code Clarity**: Overusing static imports can make it unclear which class the static methods or fields come from, especially in large codebases.
2. **Namespace Pollution**: If you import too many static members from different classes, it may lead to conflicts or make it difficult to determine where each member is defined.
3. **Potential Naming Conflicts**: Static imports can introduce ambiguity when two static members with the same name are imported from different classes.

#### When to Use Static Import
- **Use sparingly**: Static import should be used sparingly to avoid confusion and maintain code clarity.
- **Focus on readability**: Use static import only when it enhances the readability of your code, such as in mathematical calculations or when using a few well-known constants.
- **Testing frameworks**: Static import is ideal for assertions in testing frameworks like JUnit, making tests more concise.

### Summary
Static import in Java allows you to import static fields and methods from a class so that they can be used without qualifying them with the class name. While it can make code cleaner and more readable, it should be used judiciously to avoid reducing code clarity and creating potential conflicts.
