---
sidebar_position: 4
description: Control flow is the order in which a computer executes a program's instructions, statements, and function calls. It's based on conditions and decisions, and determines how a program moves from one instruction to the next.
---

# Control Flow
Is the order in which a computer executes a program's instructions, statements, and function calls. It's based on **conditions** and **decisions** that determine how a program moves from one instruction to another. 

---
## Switch Statement / Expressions
- Are useful for comparing single values but not for ranges.
- No boolean expressions in the "selector expression" nor in the "case expression" are supported.
- Can "see" variables (*inside*) form before switch statement.
- There are **two forms** of switch:
	1. with *colon* `;` (*can have fall-through*) "**Standard Case**" *or*
	2. with *arrow* `->` (*NO fall-through*) "**Arrow Case**" .
- Both can either:
	1. *execute statements* "**Switch Statements**" (*if no match or default, no execution*) *or*
	2. *return an expression* "**Switch Expression**" (*MUST always return a value*) .

```java title="switch statement
switch (SELECTOR_EXPRESSION) {
    case CASE_EXPRESSION : OR ->   //LABEL: if SELECTOR match CASE expression, ...
        STATEMENT OR EXPRESSION ;  //statements are executed or expression returned
        break ;                    //optional (not needed in 'arrow case'), end switch
    default :                      //optional but only once, if no case match
        STATEMENT OR EXPRESSION ;
}
```
:::note fall-through logic
The program's execution continues from one `case` to the next in a standard-case (*statement and expression*) without a `break` statement. This can happen even if the expression value of the next `case` doesn't match.
:::

:::note stack-case-label
Because a `case` can not cover a rang (*e.g.: 1-3*), multiple case-values can be stacked by separating them with a colon `,`. This works on all switch variations (*statement, expression, standard, arrow*).  
*E.g.: `case 1, 2, 3:` has the values 1, 2, and 3.*
:::

|switch type|syntax|fall-through logic|Need to return value in any case ?|optional `default`|stack-case-label|
|---|---|---|---|---|---|
|**Standard**<br />**Statement**|`:`|*yes*|*no*|*yes*|*yes*|
|**Standard**<br />**Expression**|`:`|*yes*|*yes*|*yes*|*yes*|
|**Arrow**<br />**Statement**|`->`|*no*|*no*|*yes*|*yes*|
|**Arrow**<br />**Expression**|`->`|*no*|*yes*|*yes*|*yes*|

### "Standard Case" Switch `:`

#### as Statement
- Fall-through, executes every statements after a matching "**case**" till there is a `break` or the switch ends.
- If no "**case**" match then the `default` is executed if there is one, otherwise nothing happens.

```java showLineNumbers title="switch-standard-statement"
switch ( some_variable ) {  
    case 1: System.out.print("1 "); break;
    case 2:
        System.out.print("2 ");
        System.out.print("more ");
        break;
    case 3, 4, 5: System.out.print("stack case label"); break;
    case 6: System.out.print("6 ");
    case 7: System.out.print("7 ");
    default: System.err.print( "default");
}
```
- *line 2:*  
	only print if `some_variable` (`1`) is matching `case` (`1`).
- *line 3-6*:  
	same principe as *line 2* but different style and one more statement.
- *line 7*: (*stack case label*)  
	only print if `some_variable` is `3`, `4` or `5` , which is matching `case` .
- *line 8:* (*fall trough*)  
	print everything (*"6 7 default"*) till the end because there is no `break` which end the switch.
- *line 10:*  
	print (*"default"*) if a case above was not stopped by `break` or if none of the cases matched.

#### as Expression
- **Must always return a value!** You can use `default` to make sure of it or throw an "**exception**".
- Do not forget to terminate the whole statement with an `;` .
- Use the `yield` keyword to mark the return value, `switch` ends after.
- If a matched `case` has no `yield` (*fall-through*), then the code moves on to the next line without checking the `case`.
```java title="switch-standard-expression"
double result = switch ( vari ) {
    case 'z' : System.out.print("z");  //if match, 'z' is printed, move on
    case 'x', 'y' : yield 100.0;       //if match, 'result' is '100.0', exit
    default  : yield 0;                //otherwise 'result' is always '0.0'
};                                     //must end with ';'
```
### "Arrow" Case `->`
- No "**fall-through**" logic, only one "matching case" is executed even without the `break` keyword.
- Multiple statements need to be wrapped in brackets `{ }` .

#### as Statement

```java title="switch-arrow-statement"
switch ( 42 ) {
	case 42   ->   System.out.print("42");      //only this statement is executed
	case 10   -> { System.out.print("10");      //multiple statements need brackets
	               System.out.print("You need 32 more."); }
	case 1, 2 ->   System.out.print("1 or 2");  //stack-case-value
	default   ->   System.out.print("Is not 42 or 10.");  //is optional
}
```

#### as Expression
- **Must always return a value!** You can use `default` to make sure of it or throw an "**exception**".
- Do not forget to terminate the whole statement with an `;` .
- Mark return value with `yield` if in brackets `{ }`.

```java title="switch-arrow-expression"
int result = switch (vari) {
    case 10 -> vari += 32;  //'vari' is '10', 'result' and 'vari' become '42', end switch
    default -> {
        if (vari > 100)   
            yield 100;      //'vari' bigger then '100', 'result' becomes '100'
        else
            yield 0;}       //'vari' smaller then '100' but not '10', 'result' becomes '0'
};
```

### No Boolean on Switch, use default ?
- You can not use boolean expressions in the "**selector expression**" or the "**case expression**".
```java showLineNumbers
int val = 1;
switch (val) {
//switch (true) {                             //selector type boolean not supported
//highlight-error-next-line
    case val < 42 -> System.out.print("42");  //"compiler error!"
}
```
Error because the case on *line 4* evaluates to a boolean. Swapping *line 2* with *line 3* does not help because booleans are not allowed as "selector expressions".

- But you could use it in brackets, for example in `default`.
```java
switch (vari) {
    case 100 :
        System.out.print("100"); break;
    default : {
        if (vari > 100)
            System.out.print("bigger then 100");
        else
            System.out.print("less then 100");
        }
}
```
---
## Loops
Loops are used to process certain instructions over and over again.  
A loop consists of the "**loop condition**" and the "**loop body**".  
- "**loop condition**": *is a "boolean expression"*
	- if `true`, the "**loop body**" is executed once, after the condition is checked again, this creates the loop.
	- if `false`, the "**loop body**" is not executed and the code continues from after the "**loop body**".
- "**loop body**": *statements to be executed*
	- **`break`** ends the loop, none of the statements in the "**loop body**" are executed after.
	- **`continue`** jumps back to the "**loop condition**", none of the statements in the "**loop body**" are executed after the `continue` statement for that iteration.
	- `;` or `{}` means that the there is nothing to be executed, can be because everything has already be done in the "**loop condition**".
	- Brackets `{ }` are only needed if there are more then one statement (*lines*) in the **loop body**.

:::note infinite loop
Is when the loop condition becomes never `false`, thus the program stuck in a loop till it runs out of memory and crashes.  
In some cases the loop supposed to be "broken" from within, thus the "loop condition" is set as "infinite loop",  
*e.g.:* `for ( ; ; ;)` *or* `for ( ; true; )` *or* `while (true)` .
:::

|loop type|syntax|
|---|---|
|**while loop**|while ( CONDITION ) STATEMENT(S)|
|**do while loop**|do STATEMENT(S) while ( CONDITION );|
|**for loop**|for ( INITIALIZER; CONDITION; UPDATER ) STATEMENT(S)|
|**for each loop**|for ( DATATYPE EACH : COLLECTION ) STATEMENT(S)|

### "While Loop"
- Checks the "loop condition" before executing the "function body".

```java title="update condition from within"
int number = 1234;
while ( number > 0 ) {            //as long 'number' is bigger then 0
    number /= 2;                  //divide by 2 und update number
    System.out.println( number ); //print number to the screen
}
```
```java title="break and continue from within"
int number = 1234;
while ( true ) {                  //always true
    number /= 2;                  //divide by 2 und update number
    if (number <= 0)              //if number is '0' or less
         break;                   //then break loop
    if (number > 500)             //if number is bigger then '500'
        continue;                 //jump back to condition, no next lines
    System.out.println( number ); //print number to the screen
}
```

### "Do While Loop"
- No matter if the "**loop condition**" is `true` or `false`, the "**loop body**" is always executed at least once at the beginning.
- Remember the `;` semicolon after the `while` condition at the end.
- Variables which need to be visible to the "**loop condition**", need to be declared outside the "**loop body**".
```java
int number = (int) (Math.random() * 5 + 1);  //outside loop, otherwise always different
int guess;                                   //declare outside loop, otherwise not ...
                                             //visible to 'while condition' at last line
do {
    System.out.println("What number between 1 and 5 do I have in mind?");
    guess = new java.util.Scanner( System.in ).nextInt();
    if ( number == guess )
        System.out.println( "Good guess!" );
    else if ( number > guess )
        System.out.println("My number is larger than yours!");
    else // number < guess
        System.out.println("My number is smaller than yours!");
//highlight-next-line
} while ( number != guess );                //code above is executed, after only if 'true'
```
The user is asked at least once at the beginning for a "number". After the "number" is compared with the "random number" (*guess*), if the numbers are "not equal" (*condition is `true`*) then the "**loop body**" is executed again and the process repeats as long the numbers do not match (*condition is `false`*).

### "For Loop"
- Is best used if all 3 values in the "**loop condition**" are related to the same variable.
```java
for (INITIALIZER ; CONDITION ; UPDATER) {
	STATEMENT(S) ;
}
```
- "**INITIALIZER**" : *to initialize "local variable" for the condition, e.g.:* `int i = 0`  
	- Variables are only initialize at the first iteration.
	- **Naming**: the "variable name" (`i`) is arbitrary but has to be different to the outside identifiers.
	- **Local scope**: `int i = 0`, the variable is only visible within the loop, need to be initialized with an value!  
	- **Outside scope**: leave empty if variable from out side the loop is to be used,  
	*e.g.:* `for ( ;out > 0; out++)` .
	- **Data type**: can be any data type, *e.g.:* `for (boolean i = true; i; i = false)`
	- **Multiple variables**: can be more than one but have to be of the same type and separated be `,` colon.  
	*e.g.:* `for (int i = 0, j = 1, z = 2; i < j + z; i++)`
- "**CONDITION**" : *to create a condition when the loop should end*
	- Is evaluated before the statements in the "**loop body**" are executed, if `true`, iterate once the loop, otherwise end.
	- There can be **no more than one condition** and it must be a **boolean expression**.
	- **Infinite loop**, can be **empty** *e.g.:* `for (int i = 0; ;i++)` or `true` *e.g.:* `for (int i = 0;true;i++)`,  
	 than the loop needs to be broken from within *e.g.:* `break`.
	- "**Out side variables**" can be used to create a boolean expression.
- "**UPDATER**" *to update the variable for the condition*
	- Updates (*executes*) at the end of the loop iteration.
	- **Multiple variables**: can be more than one but have to be separated by `,` colon,  
	*e.g.:* `for (let i = 0, y = 5; i < y; i++, y--)`  
	- Can be **empty** `for (int i = 0; ; )`, update or break from within the loop. 

### Nested Loop
Is a loop that is contained within another loop, and the two loops are referred to as the "**outer loop**" and the "**inner loop**". The "**outer loop**" controls how many times the "**inner loop**" is fully executed.

```java
for ( int i = 1; i <= 3; i++ ) {    //'outer loop', runs the 'inner loop' 3 times
    for ( int j = 1; j <= i; j++ )  //'inner loop', runs on every iteration once more, because 'i'
      System.out.print( '*' );      //no brackets are needed if only one statement follows
    System.out.println();
}
```
```bash title="output"
*
**
***
```
```java
for ( int i = 1, j = 6; i <= j; i++, j-- )
    System.out.printf( "%d * %d = %d%n", i, j, i*j );
```
```bash title="output"
1 * 6 = 6
2 * 5 = 10
3 * 4 = 12
```

### "Break and Continue Label"
Allows to "jump" to "before" or "after" a "code block" or to break a "nested loop" from within an "**inner loop**".  
**NOTE**: to many "jumps" can make the code difficult to follow (*"Spaghetti code"*) !

- "**label**":
    - Can be any **name** but has to be terminated with `:` a colon.
    - Has to come before `break` or `continue` .
    - Must be right before the "code block" (*loop*), nothing in between is allowed.
- "**break**":
    - Code continues after the code block which has been marked with the **label**.
- "**continue**":
    - Code continues from where the **label** is set, but it works only on loops.

#### break and continue on loops
```java showLineNumbers
label:                               //code continue from here with 'continue'
// System.out.println("not allowed");                        //no code allowed between label and block
while (true) {
    System.out.println("looping");
    break /* continue */ label;           //either 'break' or 'continue', 'continue' courses an 'infinite loop'
    System.out.println("Can only be reached with continue");
}
                                     //code continue from here with 'break'
```
- *line 5*: `break label;` (*comment out continue*)  
    - Code continues from *line 8* because that is where the "labeled" code block ends.
    - None of the statements between `break` till the end of the block is executed. 
- *line 5*: `continue label;` (*comment out break*)  
    - Code continues from *line 1* because that is where the "labeled" code block starts.
    - The code block **must be a loop** for continue to work.

```java showLineNumbers
while (true) {
    outer_loop:
    while (true)
        break outer_loop;
    System.out.println( "Outer loop." );
}
```
- *line 4*; 
    - Code continues from *line 5* (*is not part of the code block line 3-4*), which prints out the message, after the "outer loop" is restarted the cycle starts again (*infinite loop*).
    - If the **label** 'outer_loop' would have been on *line 0*, then `break` would have broken the "outer loop" and there would have not been an 'infinite loop'.

#### break on code blocks
```java
label:
{
    // some code, executed
    break label;
    // some code, not executed
}
// code continues from here
```

#### break "switch-statement"
```java showLineNumbers
// cytosine [C], guanine [G], adenine [A] or thymine [T]
String dnaBases = "CGCAGTTCTTCGGXAC";
int a = 0, g = 0, c = 0, t = 0;
//highlight-next-line
loop:                                             //'for loop block' is labeled 'loop'
for ( int i = 0; i < dnaBases.length(); i++ ) {
    switch ( dnaBases.charAt( i ) ) {
        case 'A', 'a':
            a++;
            break;
        case 'C', 'c':
            c++;
            break;
        case 'G', 'g':
            g++;
            break;
        case 'T', 't':
            t++;
          break;
        default:
            System.err.println( "Unknown nucleotide " + dnaBases.charAt( i ) );
            //highlight-next-line
            break loop;
    }
}
```
The "for loop" iterates through every character of the string `dnaBase`. The "switch statement" within compares the character with its cases and increments the counters accordantly. If it has no `case` for it (`X`) then the `default` is executed, which prints an error message and **breaks**.  
Without the **label**, it would only **break** the "switch-statement" and not the "for loop", but because of it the "for loop" is **broken** and the code would continue from after with `loop` labeled "for loop block" (*line 24*).
