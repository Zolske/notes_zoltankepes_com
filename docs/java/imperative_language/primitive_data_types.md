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
1. "**Arithmetic types**": integral (*whole*) numbers, floating point numbers, Unicode characters
2. "**Truth values**": ​​for the states **true** and **false**

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
