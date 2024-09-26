---
sidebar_position: 5
description: A method is a function that belongs to a class. A function is a reusable portion of a program, sometimes called a procedure or subroutine.
---

# Methods
A method is a function that belongs to a class. A function is a reusable portion of a program, sometimes called a procedure or subroutine.

#### advantages:
1. Recurring program parts should not be programmed over and over again, but should be offered in one place. Changes to the functionality can then be made easier.
2. Complex programs are broken down into small subprograms to reduce the complexity of the program. This makes the control flow easier to understand.

## Syntax of an Method
![syntax method](../img/methodes.webp)  
1. **Method Head**:
	- "**modifier**": (*optional*)
		- **`public`** methods can be used by **everyone**.
		- **`private`** methods can only be used by the **object** itself (*to reduce complexity*).
		- **`static`** methods can be used over the "class name" without first creating the object of the method.
	- "**return type**": (*mandatory*)
		- Needs to be `void` (*is not really a data type*) if the method is not returning anything. Otherwise use the appropriated "data type" *e.g.:* `int`, `double` , ... .
	- "**Method Signature**":  
		The "method name", the "number of parameters" and the order of the "parameter data types" make up the "method signature". **The signature must be unique within a class!**  
		*e.g.:* `hello(int n, char c)` and `hello(char c, int n)` **is ok**, because the order of the "parameter data types" are different, but ...  
		*e.g.:* `hello(int n, char c)` and `hello(int x, char z)` **is not ok**, because the number and the order of the data type is the same. The "parameter names" are insignificant.
		- "**method identifier / name**": (*mandatory*)
			- Need to be in **c**amel**C**ase notation.
			- Need to start with a "character" or "underscore", but can be followed by "numbers", "no spaces" and "no keywords".
			- Could have the same name as a method from a different class, (*e.g. `println`*) but that would be "bad naming practice".
			- "Good naming practice" is to describe first the verb, "*how it is doing*", followed by the object, "what it is doing", *e.g.:* `copyFile()`.
		- "**parameter list**": (*optional*)
			- Parameter must match in number, order and data type when called.
			- Leave braces `( )` blank when declaring and calling if there are no parameters.
2. **Method Body**:
	- Statements to be executed.
	- Use the `return` keyword to mark the return value or expression if needed.

### Calling a "Static Method"
There is no need to create first an instance of the methods objects.

#### calling within the same class
```java title="ProgramStart.class" showLineNumbers
public class ProgramStart {                    //class of the method
    public static void hello() {               //can be declared below 'main()'
        System.out.println("Hello.");
    }
    public static void main(String[] args)  {  //starting point of the program
        hello();
    }
}
```
- *line 6*:  
	The method `hello()` is called without referencing the class, because it is declared in the same class.

#### calling from a different class
```java title="ProgramStart.class" showLineNumbers
class HelloYou {                               //declare 'HelloYou' class
    public static void hello() {               //declare 'hello' method
        System.out.println("Hello.");
    }
}
public class ProgramStart {                    //declare 'ProgramStart' class
    public static void main(String[] args)  {  //starting point of the program
        HelloYou.hello();                      //reference 'HelloYou' class
    }
}
```
- *line 1*:  
	`HelloYou` class is declared with the method `hello`. `HelloYou` could have been declared below the `ProgramStart` class.
- *line 8*:  
	The method `hello` of the class `HelloYou` is called, which needs to be referenced, because the method is from a different class then the one from where it is called.

### Parameters, Arguments and Parameter Values
- Parameters are placeholders (*when a method is declared*) for the values (*arguments*) when the method is called.  
- The "data type" must match between declaration and call, but in some cases the compiler may be able to "implicit cast" to the "parameter data type".
- Variables within the method are **local** which are only created when the method is called and are destroyed as soon as the method ends.  
Even if they have the same name as "outside variables", they have nothing to do with them. 
- Expressions in the "parameter list" are first evaluated, from left to right, before they are **copied** to the method, *e.g.:* `System.out.print(2 * 4);` prints `8`.
```java showLineNumbers
public class HelloWorld {
    static void printSum(double num_1, double num_2) {
        num_1 += num_2;
        System.out.println(num_1);
    }
    public static void main(String[] args)  {
        double num_1 = 2.0;
        double mum_2 = 100;                     //cast to 'double', not used
        printSum(num_1, 6);                     //output '8.0'
        System.out.println(num_1);              //output '2.0'
    }
}
```
- *line 2-5*:  
	Declaration of the `printSum()` method.
- *line 8*:  
	The literal value `100` is casted to `100.0` but the variable `num_2` has nothing to do with the parameter `num_2` of the method `printSum()`.
- *line 9*:  
	The 2nd argument, the literal value `6` (*int*) is "implicitly casted" by the compiler to an double `6.0`.
- *line 10*:  
	The "outside variable" `num_1` has not changed after its value has been passed to the method.

### Method Overloading
Multiple methods can have the same name but need to be different in:
1. **argument quantity**, *and / or*
2. **parameter data type**.  

A difference "**return type**" *and / or* a different "**parameter name**" is not enough.
```java showLineNumbers
public class Overload {
    public static int sum(int num_1, int num_2) {
    	return (num_1 + num_2);
    }
    public static double sum(double num_1, double num_2) {
    	return (num_1 + num_2);
    }
    public static void main(String[] args) {
    System.out.println(sum(4, 6));                         //output '10'
    System.out.println(sum(3.4, 0.8));                     //output '4.2'
    System.out.println(sum(4, 6.8));                       //output '10.8'
    }
}
```
- *line 11*:  
	First the "parameter list is evaluated", this curses `4` to be casted to an double (`4.0`) because the 2nd value is double which is the more accurate data type.  
	After the `sum()` method which takes the `doubles` as arguments is called.  

The screen shot below shows that the method `System.out.println()` is also overloaded.
![intellj overload println](../img/overload_intellj.webp)


### Scope
The variable scope determents where a variable is "alive" (*visible*).
1. Within the block in which it was declared and it's nested blocks.  
2. The same variable name can not be used within its scope (*line 6*).
2. Not "alive" outside of it's declared block.
3. Once a variable is not "reachable" any more, it is destroyed (*e.g.: `z` after line 8*).
	```java showLineNumbers
	int x = 42;
	{
	    System.out.println(x);      //ok, 'x' is visible, output '42'
	    {
	        System.out.println(x);  //ok, 'x' is visible, output '42'
			//highlight-error-next-line
	        int x = 99;             //variable `x` already defined
	        int z = 10;
	    }
		//highlight-error-next-line
	    System.out.println(z);      //can not find symbol, symbol variable z
	}
	```
### Recursion
Recursion is a concept in programming where a method calls itself in order to solve a problem. It's often used when a problem can be divided into smaller, similar sub-problems.  
In Java, a "recursive function" typically has a **base case** to prevent "infinite recursion" and a **recursive case** that reduces the problem step-by-step.

#### Components of Recursion
- "**Base Case**": This is a condition that stops the recursion. Without it, the function would call itself indefinitely, leading to a stack overflow.
- "**Recursive Case**": This is the part where the function calls itself with a modified argument, moving towards the base case.

```java title="Example: Factorial Calculation" showLineNumbers
public class RecursionExample {
    // Recursive method to calculate factorial
    public static int factorial(int n) {
        // Base case: if n is 0 or 1, return 1
        if (n <= 1) {
            return 1;
        }
        // Recursive case: multiply n by factorial of (n-1)
        return n * factorial(n - 1);
    }

    public static void main(String[] args) {
        int number = 5;
        System.out.println("Factorial of " + number + " is: " + factorial(number));
    }
}
```
```bash title="output"
Factorial of 5 is: 120
```

![recursion diagram](../img/java_recursion.webp)

<details>
	<summary>explanation</summary>
### How it Works
1. (*line 14*) The `factorial` method is called with `n = 5`.
2. (*line 5*) Since `n` is not less than or equal to `1`, it proceeds to the **recursive case**:  
	(*line 9*) `return 5 * factorial(4)`.  
3. This pattern continues, breaking the problem into smaller pieces:  
`5 * factorial(4)`  
`5 * (4 * factorial(3))`  
`5 * (4 * (3 * factorial(2)))`  
`5 * (4 * (3 * (2 * factorial(1))))`  
4. (*line 5*) Finally, when `factorial(1)` is called, the **base case** is reached, returning `1`.
5. Now, the recursive calls start returning:  
`factorial(2) = 2 * 1 = 2`  
`factorial(3) = 3 * 2 = 6`  
`factorial(4) = 4 * 6 = 24`  
`factorial(5) = 5 * 24 = 120`  
6. The final result, `120`, is printed.
</details>

#### Use Cases of Recursion
1. **Mathematical calculations** like factorials, Fibonacci series, or power calculations.
2. **Tree traversal** (*e.g.*, binary trees).
3. **Graph algorithms** like depth-first search (DFS).
4. **Divide and conquer algorithms** like merge sort and quicksort.

#### Benefits and Drawbacks
##### Benefits:
Makes code concise and easier to understand for problems that have repetitive substructure.
Avoids the need for complex loops or manual stack management.

###### Drawbacks:
Can lead to a stack overflow if the base case is not defined correctly or if the recursion is too deep.  
May be less efficient than iterative solutions due to repeated function calls and stack management.

#### Converting Recursion to Iteration
In some cases, recursion can be converted to iteration using data structures like stacks or queues, which might be more efficient for certain problems.

#### Summery
Recursion is a powerful tool in Java for solving problems that can be broken down into smaller, identical sub-problems, but it should be used carefully due to potential performance issues and risks like stack overflow.
