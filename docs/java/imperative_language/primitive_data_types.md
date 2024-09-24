---
sidebar_position: 3
description: Java need to know what data type a variable has so it can provide enough memory.
---



# Primitive Data Types
Java uses variables to store data. A variable is a "reserved memory area" and occupies a fixed number of bytes, depending on its content. All variables (and expressions) have a type that is known at compile time. The type is also called a "**data type**" because a variable contains a "**data value**", also called a "**date**".  
The type also determines the "**permissible operations**" because **logical values** ​​cannot be added, but **integers** can.  
Because each variable has a fixed data type specified by the programmer, which is known at compile time and cannot be changed later, java is a "**statically typed**" and "**strictly (strongly) typed**" programming language.

## Primitive and Reference Data Types
1. **Primitive types** (*simple*): are **data types** for **numbers**, **Unicode characters** and **truth values** ​​that are built into the Java language.
2. "**Reference types**": are **object references** to **strings**, **data structures** or **miniature pinschers**.

## Primitive Data Types Overview

|data type|size|range|
|---|---|---|
|`boolean`|1 bit|`true` *or* `false`|
|`char`|2 byte|*from* 0 *to* 65,535 as a `16-Bit Unicode-Character` |
|`byte`|1 byte|**whole numbers** *from* `–128` *to* `127`|
|`short`|2 bytes|**whole numbers** *from* `–32,768` *to* `32,767`|
|`int`<br />(*default*)|4 bytes|**whole numbers** *from* `–2,147,483,648` *to* `2,147,483,647`|
|`long`|8 bytes|**whole numbers** *from* `–9,223,372,036,854,775,808` *to* `9,223,372,036,854,775,807`|
|`float`|4 bytes|**fractional numbers** *from* `1.4e-45` *to* `3.4028235e38`, 6 *to* 7 digits precision|
|`double`<br />(*default*)|8 bytes|**fractional numbers** *from* `4.9e-324` *to* `1.7e308`, 15 digits precision|

## Variable
- The value can change later but the data type can never change after it has been declared.

### declaration
- Declaration follows always the same pattern:  
`DATA_TYPE` `IDENTIFIER`  
```java title="example of some local variable declarations:"
boolean hasMoney;	// primitive data type
float	price;		// primitive data type
String	accountHolder;	// reference data type
```

### multiple variable declaration on one line
- If all variables have the same data type.
```java
int age, grade;		// separate with colon but terminate with semicolon
```

### initialization
:::note initilize variable before reading from it
Before java can read from a variable, it needs to be initialized with an value or the compiler will error.
:::
- Declaration and initialization can be on one line or separate:
```java
boolean	sticky	= true,                       // Note the colon at the end!
	chewy	= false;                      // Easier to read?
String firstName = "John", lastName = "Doe";  // Less readable?
int	age;
float price;                                  // not initialized
age = 42;
if (sticky)                 // if not variable 'sticky' but boolean 'true', last line OK
	price = 99.0;       // init. only under a 'condition'
//highlight-error-next-line
System.out.println(price);  //!ERROR! 'could read' uninitialized value, 'price' variable
```
(*Last line is compiler ERROR, because he thinks that there could be a case in which `price` is not initialized.*)

### auto data type with `var`
- Only on local variable.
- Java implies the data type based on the assigned value, which must happen on the same line.
```java
var age 42;		// OK, 'int' is implied
// highlight-error-next-line
var price;		// !ERROR! no value, no type
// highlight-error-next-line
price = 4.20;		// !ERROR! has to be on one line with 'var'
var savings = 99;	// careful, the data type is 'int' not 'double'
```

### `final` variable modifier
- The initial variable value can not be changed later.

```java
final int age;		// OK, variable can be initialized later
age = 42;		// variable is initialized and can not be change after
// highlight-error-next-line
age = 16;		// !ERROR! finale variable was already initialized
final var price = 4.20;	// OK, 'double' is applied and initialized to 4.20
```

## Console In- and Out-put
### Console Input
- One way is to use the class `java.util.Scanner.` to get user input over the console. The user needs to 'end' his entry with the `ENTER` key.
```java
String s = new java.util.Scanner(System.in).nextLine();	// variable is initialized with user input
int i;
i = new java.util.Scanner(System.in).nextInt();		// after variable has been declared
double d = new java.util.Scanner(System.in).nextDouble();
```
- **Be Careful:** the user could enter any thing and course an EXCEPTION,  
*e.g.* if you ask for an `int` but the user enters an `String`, the other way around could be ok because an `int` can be `cast` to an `String`.
- **NOTE:** if the program is running on an system with german "settings", the **JVM** will accept `,` as separator for fractions in floating-point numbers, otherwise `.` .

### Input over an Diologbox
```java
String input = javax.swing.JOptionPane.showInputDialog( "What is your name?" );
```
![diologbox input](../img/dialog_input.webp)
- **NOTE:** if the user presses the "**Cancel**" button, then `input` is `null`.

### Console Output
There is the "standard" and the "error" output, both work in the same way, except that error is meant for only error messages and is highlighted in red.
```java
String name = "John Doe";
System.out.println("Hello " + name);	// print one line, new line after
System.out.print(name);			// print, don't start new line after
System.out.printf("Helllo %s%n", name);	// print with format, '%n' start new line
System.err.println("ERROR on line x");	// print as ERROR one line, new line after
// 'print' and 'printf' can also be used on 'System.err.'
```

### Boolean
- Can be only `true` or `false`.
- Commonly used for **conditions**, **branches** and **loops**.
- Usually results from comparisons.
```java
System.out.println(1 > 0); // output: true
```
- Numbers do **NOT** evaluate to boolean like in C, for example: `0 == false;` or `1 == true;` .

### Data Types with Integral Numbers

- They are: `byte` , `short` , `int` and `long`
- The compiler treats every whole number as `int`, but a literals can be "**casted**" to `long` with the `l` or `L` suffix.
- The compiler throws an Exception if the value is to big for the data type.
```java
//highlight-error-next-line
System.out.println(123456789012345);	//!ERROR! number to large for 'int'
System.out.println(123456789012345L);	//OK, data type is now 'long' because of 'L'
```

### Character with `char`
- The data type stores its value internally as number but it is externally interpreted as the corresponding character.
- Java uses the "**Unicode UTF-16**", from `\uD800` *to* `\uDBFF` and `\uDC00` *to* `\uDFFF`. **UTF-16** includes the **ASCII** and "**extended ASCII**" table. [*UTF-16 table*](https://www.rapidtables.com/code/text/unicode-characters.html), [ASCII table](https://www.rapidtables.com/code/text/ascii-table.html)
- "Whole numbers" are "**casted**" to there corresponding character/symbol if they are within the rang of the data type when assigning, otherwise "single quote" the character.
- Arithmetic can be performed on char variables (*also increment and decrement operator*) as long the result is within range of the data type.

```java
char c = 'x';			// declaring and initializing c with 'x'
c = 33;				// overwriting c with the value '33'
c *= 2;				// multiply and overwrite by '2'
System.out.println(c);		//output 'B'
c--;				// decrement
System.out.println(c);		//output 'A'
c += 32;			// diff low and upper case ASCII
System.out.println(c);		//output 'a'
System.out.println((int)c);	//output '97'
c = 0x2023;			// numeric value in hexadecimal representation
c = '\u2023';			// as above, but as escaped unicode
System.out.println(c);		//output '‣'
```

### Floating Point Numbers
- There are only `float` and `double` .
- By default every "**literal fractional number**" is treated as `double` but they can be **casted** with the `f` or `F` suffix to an `float` .
- The suffix `d` or `D` cast a literal number to a `double`, `1.0 == 1D && 1.0 == 1d` --> is `true`.

:::note no precision warning
The `float` has only a precision of 6 *to* 7 digits, while `double` has 15 digits precision.  
**The compiler dose not warn you that the number has lost precision!!!**
:::

:::note precision explained
Is how many numbers **before** or **after** the "**decimal point**" can be stored **accurately**.
:::

```java
//highlight-error-next-line
float numFloat_1 = 1234.0;   //!ERROR! possible lossy conversion from double to float
//highlight-error-next-line
float numFloat_2 = 0.1234;   //!ERROR! possible lossy conversion from double to float
float numFloat_3 = 0.1234F;  //OK, default literal casted to float
float price = 100F;          //output '100.0'
double numDoub_1 = 0.1234;   // OK, no loss, is double by default
double numDoub_2 = .0;	     //output '0.0'
double numDoub_3 = 0.;	     //output '0.0'
System.out.println(0.123456789123F); //output '0.12345679' not precise after 7th digit
System.out.println(123456789123.0F); //output '12345679.E4' not precise after 7th digit
System.out.println(0.123456789123);  //output '0.123456789123' no loss of precision
```

