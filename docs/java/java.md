---
sidebar_position: 1
description: A short overview of the Java language.
---

# Java

---
#### important links

[Version 21 API Specification](https://docs.oracle.com/en/java/javase/21/docs/api/)  

---


![Java Logo](img/Java_programming_language_logo.webp)

Java is a **high-level**, **class-based**, **object-oriented** programming language that is designed to have as few implementation dependencies as possible. It is a **general-purpose** programming language intended to let programmers write once, run anywhere (*compiled Java code can run on all platforms that support Java without the need to recompile*).  
Java applications are typically compiled to **bytecode** that can run on any **J**ava **v**irtual **m**achine (**JVM**) regardless of the underlying computer architecture.  
The syntax of Java is similar to C and C++, but has fewer low-level facilities than either of them. The Java runtime provides dynamic capabilities (*such as reflection and runtime code modification*) that are typically not available in traditional compiled languages.

## OpenJDK

![OpenJDK Logo](img/OpenJDK_logo.webp)
:::note
OpenJDK (*Open **J**ava **D**evelopment **K**it*) is an open-source implementation of the Java Platform, **Standard Edition** (Java SE).  
It is the "**official reference implementation**" for Java SE, meaning it's the version of Java that most Java-based software projects rely on.  
:::
OpenJDK includes the Java Development Kit (JDK), which consists of:
- **Java Runtime Environment (JRE)**: Contains the "**core libraries**" and the "**Java Virtual Machine (JVM)**", which is responsible for running Java applications.
- **Java Compiler (javac)**: Translates "**Java source code**" into "**bytecode**", which can be executed by the "**JVM**".
- **Tools and Libraries**: Includes tools like "**debugging**", "**profiling**", and "**performance tuning**", as well as "**core Java libraries**" (like collections, streams, etc.).  

#### Key Features of OpenJDK:
- **Open Source**: It is licensed under the "**GNU General Public License (GPL)**", allowing developers to view, modify, and contribute to its code.
- **Reference Implementation**: OpenJDK serves as the "**primary version of Java SE**", maintained by contributors including **Oracle**, **Red Hat**, **IBM**, and others.
- **Cross-Platform**: It works on various operating systems (**Windows**, **macOS**, **Linux**, etc.).
- **Frequent Updates**: Regular updates are provided for **security** and **bug fixes**.

#### Relationship to Oracle JDK:
"**Oracle JDK**", which was traditionally the "**official JDK**", is based on **OpenJDK** but has "proprietary components" such as "commercial tools and features" that **Oracle** adds for its customers.  
Since "**Java 11**", "**Oracle JDK**" and **OpenJDK** are functionally almost identical, with "**Oracle JDK**" mainly adding commercial support and licensing differences.  
**OpenJDK** is widely used in enterprise, open-source, and personal Java development because of its open nature and active community.

## Compiling
:::note
Is the process of translating human-readable code (*source code*) into machine-readable code, which computers can then understand and execute.
In Java it is translated into "**byte code**" which requires the "**JVM**" for execution.  
:::

The "Java SE platform" is essentially just a specification and not an implementation.  
In order for programs to be compiled and executed, we need a:  
- specific compiler,  
- a runtime environment and  
- an implementation of the libraries.  

There are different implementations from different manufacturers. If the implementations pass a series of tests called the **T**echnology **C**ompatibility **K**it (**TCK**), they can call themselves "Java SE compatible".

### Compiling on the CLI with Javac
- Create a file with the "example code" below, any text editor which does not add formatting can be used. Note that the "file name" has to match the "class name" (`HelloWorld`).  

```java title="HelloWorld.java"
public class HelloWorld {
	public static void main(String[] args) {
		System.out.println("Hello World!");
	}
}
```

- Compile the "source code" into "byte code" with the `javac` command. **HelloWorlds.java --> HelloWold.class**.  
(*all `.java` files following the command are compiled, use `*`*)  
`javac HelloWorld.java`  

- Execute the program with the `java` command (*the file/class containing the `main` method*), without the file extension `.class`.  
`java HelloWorld`  
```bash
Hello World!
```
>`java` is a command line tool that is part of a "**java runtime environment**" (JRE) that knows how to start a "**java virtual machine**", load and execute your class file.  

