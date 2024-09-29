---
sidebar_position: 1
description: Is an integrated development environment (IDE) written in Java for developing computer software written in Java, Kotlin, Groovy, and other JVM-based languages. It is developed by JetBrains and is available as an Apache 2 Licensed community edition, and in a proprietary commercial edition. Both can be used for commercial development.
---

# Arrays
> Are data structures that store multiple values of the same type in a single variable. They provide a way to group related data together and access them through an index. Arrays are useful when you need to handle collections of elements such as numbers, strings, or objects without creating separate variables for each value.

## Characteristics of Arrays
1. **Fixed Size**: The size of an array is fixed when it is created and cannot be changed dynamically. If you need a resizable collection, you might consider using classes like `ArrayList`.
2. **Homogeneous Data Type**: An array can only hold elements of the same type (e.g., `int`, `String`, or `Object`).
3. **Indexed Access**: Each element in an array is accessed using its index, which starts at 0. For example, `arr[0]` refers to the first element, `arr[1]` refers to the second, and so on.
4. **Stored in Contiguous Memory Locations**: Arrays are stored in contiguous memory locations, which makes accessing elements by index very efficient.

## Declaring and Initializing Arrays
There are two steps involved in creating an array:

1. **Declaration**: Declaring an array variable involves specifying the type of elements it will store.
2. **Instantiation and Initialization**: Instantiating an array allocates memory for its elements, and initializing assigns values to each element.

#### There are 3 ways how an array can be declared and initialized
```java title="1. syntax declaration and initialization separate"
dataType[] arrayName;           // Declares an array of dataType
arrayName = new dataType[size]; // Creates (instantiates) an array of specified size
```
```java title="2. syntax declaration and initialization on one line"
dataType[] arrayName = new dataType[size];
```
```java title="3. syntax declaration and initialization with an array literal"
int[] numbers = {10, 20, 30, 40, 50};  // Array initialization using literal, must be on one line
String[] fruits = {"Apple", "Banana", "Cherry"};  // Array of strings
```

## Accessing and Modifying Array Elements
You can access and modify array elements using their index. Remember, the index of the first element is 0, and the last element’s index is `length - 1`.

#### Array Length
The length of an array can be determined using the `length` attribute. This is useful when you need to loop through all the elements of the array.
```java
int[] numbers = {10, 20, 30, 40, 50};
System.out.println("Array length: " + numbers.length);  // Output: Array length: 5
```

<details>
	<summary>*example*: accessing and modifying</summary>

    ```java
    int[] numbers = {10, 20, 30, 40, 50};
    System.out.println(numbers[2]); // Output: 30
    
    numbers[2] = 35;  // Modify the third element
    System.out.println(numbers[2]); // Output: 35
    ```
</details>

## Iterating Through Arrays
You can iterate through an array using different types of loops, such as `for`, `while`, or the `for each` loop.
```java title="iterating: for loop"
int[] numbers = {10, 20, 30, 40, 50};
for (int i = 0; i < numbers.length; i++) {
    System.out.println(numbers[i]);  // Output: 10 20 30 40 50 (one per line)
}
```
```java title="iterating: for each loop"
for (int num : numbers) {
    System.out.println(num);  // Output: 10 20 30 40 50 (one per line)
}
```
**NOTE**: The **for each loop** can not be used to write into the array, it starts always at the beginning and only `break` prevents it to iterate to the last element.

## Types of Arrays
1. **Single-Dimensional Arrays**: A single row or column of elements.
	```java
	int[] arr = new int[5];  // Single-dimensional array
	```
2. **Multi-Dimensional Arrays**: Arrays with more than one dimension, such as 2D or 3D arrays. The most common type is the **two-dimensional array**, which is often used to represent a matrix or table.
<details>
	<summary>*example*: of a two-dimensional array</summary>

    ```java
    // Declaring and creating a 2D array with 3 rows and 3 columns
    int[][] matrix = new int[3][3];
    
    // Assigning values to the 2D array
    matrix[0][0] = 1;
    matrix[0][1] = 2;
    matrix[0][2] = 3;
    matrix[1][0] = 4;
    matrix[1][1] = 5;
    matrix[1][2] = 6;
    matrix[2][0] = 7;
    matrix[2][1] = 8;
    matrix[2][2] = 9;
    
    // Accessing elements in the 2D array
    System.out.println(matrix[1][1]); // Output: 5
    
    // Iterating through a 2D array
    for (int i = 0; i < matrix.length; i++) {  // Iterate over rows
        for (int j = 0; j < matrix[i].length; j++) {  // Iterate over columns
            System.out.print(matrix[i][j] + " ");  // Output: 1 2 3 4 5 6 7 8 9
        }
        System.out.println();  // New line for each row
    }
    ```
</details>

## Default Values for Array Elements

|data type|value|
|---|---|
|`int`, `long`, `short`, `byte`| `0`|
|`float`, `double`| `0.0`|
|`char`| `\u0000` (*null character*)|
|`boolean`| `false`|
|`Reference types` (*e.g.*, `objects`, `arrays`, `String`)| `null`|

## Common Array Operations
1. **Copying Arrays**: Use `System.arraycopy()` or `Arrays.copyOf()` to copy elements from one array to another.
2. **Sorting Arrays**: Use `Arrays.sort(array)` to sort an array in ascending order.
3. **Searching in Arrays**: Use `Arrays.binarySearch(array, value)` to search for a value in a sorted array.
4. **check content**: *e.g.:* `if ( Arrays.asList( 1, 2, 6, 7, 8, 10 ).contains( number ) )`

## Comparing Arrays
Can be compared be **memory reference** which only checks if they have the same location in memory thus they are the same Object but not there values. Keep in mind when **comparing values** that there is a **shallow** and **deep** comparison.

<details>
	<summary>1. compare **memory reference** `==`</summary>

	The `==` operator checks whether two array variables point to the same memory location (reference comparison). It does not compare the contents of the arrays.
	```java
	int[] arr1 = {1, 2, 3};
    int[] arr2 = {1, 2, 3};
    int[] arr3 = arr1;
    
    System.out.println(arr1 == arr2);  // Output: false (different memory locations)
    System.out.println(arr1 == arr3);  // Output: true (same memory location)
    ```
</details>
<details>
	<summary>2. compare **memory reference** `equals()`</summary>

	The `equals()` method in the `Object` class performs the same operation as `==` for arrays, i.e., it checks if the references are the same and does not compare array content. Thus, this method is not suitable for comparing array contents.
    ```java
    int[] arr1 = {1, 2, 3};
    int[] arr2 = {1, 2, 3};
    
    System.out.println(arr1.equals(arr2));  // Output: false (same as '==', checks memory reference)
    ```
</details>
<details>
	<summary>3. compare **content shallow** `Arrays.equals()` (*single dimension only*)</summary>

	To compare the contents of two arrays, you should use the Arrays.equals() method. This method compares each corresponding element in the arrays and returns true only if all elements match.
    ```java
    import java.util.Arrays;
    
    public class CompareArrays {
        public static void main(String[] args) {
            int[] arr1 = {1, 2, 3};
            int[] arr2 = {1, 2, 3};
            int[] arr3 = {4, 5, 6};
    
            System.out.println(Arrays.equals(arr1, arr2));  // Output: true (same content)
            System.out.println(Arrays.equals(arr1, arr3));  // Output: false (different content)
        }
    }
    ```
	This works for single-dimensional arrays. If you use `Arrays.equals()` for comparing multi-dimensional arrays, it will only check if the references of the inner arrays are equal, not their content.
</details>
<details>
	<summary>4. compare **content deep** `Array.deepEquals()` (*also multi-dimension*)</summary>

	For comparing nested or multi-dimensional arrays, you should use `Arrays.deepEquals()`. This method performs a deep comparison, i.e., it recursively compares all the elements of the nested arrays.
    ```java
    import java.util.Arrays;
    
    public class CompareNestedArrays {
        public static void main(String[] args) {
            int[][] arr1 = {{1, 2, 3}, {4, 5, 6}};
            int[][] arr2 = {{1, 2, 3}, {4, 5, 6}};
            int[][] arr3 = {{7, 8, 9}, {10, 11, 12}};
    
            System.out.println(Arrays.deepEquals(arr1, arr2));  // Output: true (same nested content)
            System.out.println(Arrays.deepEquals(arr1, arr3));  // Output: false (different nested content)
        }
    }
    ```
    The `Arrays.deepEquals()` method works for arrays of any dimension, making it more suitable for complex array comparisons.
</details>
<details>
	<summary>5. compare **content lexicographically** `Arrays.compare()`</summary>

	It returns:
	- `0` if both arrays are **equal**.
	- A **negative** value if the **first** array is lexicographically **less than the second**.
	- A **positive** value if the **first** array is lexicographically **greater than the second**.
    ```java
    import java.util.Arrays;
    
    public class LexicographicalComparison {
        public static void main(String[] args) {
            int[] arr1 = {1, 2, 3};
            int[] arr2 = {1, 2, 3};
            int[] arr3 = {2, 3, 4};
    
            System.out.println(Arrays.compare(arr1, arr2));  // Output: 0 (both arrays are equal)
            System.out.println(Arrays.compare(arr1, arr3));  // Output: -1 (arr1 is less than arr3)
            System.out.println(Arrays.compare(arr3, arr1));  // Output: 1 (arr3 is greater than arr1)
        }
    }
    ```
</details>
<details>
	<summary>6. sort array </summary>
</details>

## Copying Arrays
### Types of Array Copying in Java
1. **Shallow Copy**: Copies the references of the array elements. If the elements are objects, the copied array will reference the same objects, meaning changes to the objects in the copied array will affect the original array.
	<details>
		<summary>create new array `clone()`</summary>

		The clone() method creates a shallow copy of an array. This is suitable for arrays of primitive data types or for scenarios where a shallow copy is sufficient.
	    ```java title="syntax: clone()"
	    int[] clonedArray = originalArray.clone();
	    ```
	    ```java title="example: clone()"
	    public class CloneArrayExample {
	        public static void main(String[] args) {
	            int[] originalArray = {100, 200, 300};
	
	            // Create a clone of the original array
	            int[] clonedArray = originalArray.clone();
	
	            System.out.println("Cloned Array: " + java.util.Arrays.toString(clonedArray)); 
	            // Output: Cloned Array: [100, 200, 300]
	        }
	    }
	    ```
		**Note**: If the array contains objects, `clone()` will only copy the references (shallow copy), not the actual object values.
	</details>
		<details>
		<summary>specific range and optimized, `System.arraycopy()`</summary>
	
		The `System.arraycopy()` method allows you to copy a specified range of elements from one array to another. It is fast and optimized since it's a native method.
	    ```java title="syntax: System.arraycopy()"
	    System.arraycopy(sourceArray, sourcePos, destinationArray, destPos, length);
	    ```
		- `sourceArray`: The array to copy from.
		- `sourcePos`: Starting position in the source array.
		- `destinationArray`: The array to copy to.
		- `destPos`: Starting position in the destination array.
		- `length`: Number of elements to copy.
	    ```java title="example: System.arraycopy()"
	    public class ArrayCopyExample {
	        public static void main(String[] args) {
	            int[] sourceArray = {1, 2, 3, 4, 5};
	            int[] destinationArray = new int[5];
	
	            // Copying from the 3rd element to the beginning of dest 
	            System.arraycopy(sourceArray, 2, destinationArray, 0, 3);
	            System.out.println("Destination Array: " + java.util.Arrays.toString(destinationArray)); 
	            // Output: Destination Array: [3, 4, 5, 0, 0]
	
	            // Copying all elements from sourceArray to destinationArray
	            System.arraycopy(sourceArray, 0, destinationArray, 0, sourceArray.length);
	            System.out.println("Destination Array: " + java.util.Arrays.toString(destinationArray)); 
	            // Output: Destination Array: [1, 2, 3, 4, 5]
	        }
	    }
	    ```
	</details>
	
	<details>
		<summary>create new array as copy `Arrays.copyOf()`</summary>
	
		The `Arrays.copyOf()` method creates a new array and copies the specified number of elements from the original array. If the length is greater than the original array, the new elements are initialized to the default values.
	    ```java title="syntax: Arrays.copyOf()"
	    Arrays.copyOf(originalArray, newLength);
	    ```
		- **originalArray**: The array to copy from.
		- **newLength**: The length of the new array.
	    ```java title="example: Arrays.copyOf()"
	    import java.util.Arrays;
	
	    public class CopyOfExample {
	        public static void main(String[] args) {
	            int[] originalArray = {10, 20, 30, 40, 50};
	
	            // Copy the first 3 elements into a new array
	            int[] copiedArray = Arrays.copyOf(originalArray, 3);
	
	            System.out.println("Copied Array: " + Arrays.toString(copiedArray)); 
	            // Output: Copied Array: [10, 20, 30]
	        }
	    }
	    ```
	</details>
	<details>
		<summary>create new array from range `Arrays.copyOfRange()`</summary>
	
		The Arrays.copyOfRange() method copies a specified range of elements from the original array to a new array.
	    ```java title="syntax: Arrays.copyOfRange()"
	    Arrays.copyOfRange(originalArray, from, to);
	    ```
		- **originalArray**: The array to copy from.
		- **from**: The starting index (inclusive).
		- **to**: The ending index (exclusive).
	    ```java title="example: Arrays.copyOfRange()"
	    import java.util.Arrays;
	
	    public class CopyOfRangeExample {
	        public static void main(String[] args) {
	            int[] originalArray = {10, 20, 30, 40, 50};
	
	            // Copy elements from index 1 to 4 (20, 30, 40) into a new array
	            int[] rangeCopiedArray = Arrays.copyOfRange(originalArray, 1, 4);
	
	            System.out.println("Range Copied Array: " + Arrays.toString(rangeCopiedArray)); 
	            // Output: Range Copied Array: [20, 30, 40]
	        }
	    }
	    ```
	</details>
	<details>
	<summary>**manual** copying using `for` loops (**shallow**)</summary>

	Only the reference is copied if applied to objects.
	    ```java
	    public class ManualArrayCopy {
	        public static void main(String[] args) {
	            int[] originalArray = {1, 2, 3, 4, 5};
	            int[] copiedArray = new int[originalArray.length];
	
	            // Manually copying elements using a for loop
	            for (int i = 0; i < originalArray.length; i++) {
	                copiedArray[i] = originalArray[i];
	            }
	
	            System.out.println("Copied Array: " + java.util.Arrays.toString(copiedArray)); 
	            // Output: Copied Array: [1, 2, 3, 4, 5]
	        }
	    }
	    ```
	</details>

2. **Deep Copy**: Copies the actual values and elements of the array. For arrays of primitive types, a shallow copy is equivalent to a deep copy. For arrays of reference types (objects), a deep copy involves creating new instances for each referenced object.
	
	<details>
		<summary>**manual** copying using `for` loops (**deep**)</summary>
	
		For arrays containing objects (e.g., a 2D array or an array of custom objects), you need to create a deep copy manually, ensuring that you create new instances for each element.
	    ```java
	    import java.util.Arrays;
	
	    public class DeepCopyExample {
	        public static void main(String[] args) {
	            int[][] originalArray = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
	
	            // Create a deep copy of the 2D array
	            int[][] deepCopiedArray = new int[originalArray.length][];
	            for (int i = 0; i < originalArray.length; i++) {
	                // Create a new array for each row and copy the elements
	                deepCopiedArray[i] = Arrays.copyOf(originalArray[i], originalArray[i].length);
	            }
	
	            // Modify the deep copied array to show it is independent of the original
	            deepCopiedArray[0][0] = 100;
	
	            System.out.println("Original Array: " + Arrays.deepToString(originalArray)); 
	            // Output: Original Array: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
	
	            System.out.println("Deep Copied Array: " + Arrays.deepToString(deepCopiedArray)); 
	            // Output: Deep Copied Array: [[100, 2, 3], [4, 5, 6], [7, 8, 9]]
	        }
	    }
	    ```
	</details>
	
## Printing Arrays
Import `import java.util.Arrays` and use the methods of the helper class `Arrays.` for converting the array to a string which can be printed (*e.g.:* `System.out.print()` ).
- **print shallow** arrays: `Arrays.asList()` *or* `Arrays.toString()` *or* `Arrays.deepToString()`
- **print deep** arrays: `Arrays.deepToString()`
	<details>
		<summary>*example*: `Arrays.asList()`, `Arrays.toString()`, `Arrays.deepToString()`,</summary>
	```java
    import java.util.Arrays;
    
    public class PrintArrays {
        public static void main(String[] args) {
            String[] shallowArray = {"Java", "Python"};
            int[][] deepArray = {{1,1},{2,2}};
            System.out.println("Arrays.asList,       shallow: " 
                + Arrays.asList(shallowArray) + " deep: " + Arrays.asList(deepArray));
            //output: Arrays.asList,             shallow: [Java, Python] deep: [[I@2a84aee7, [I@a09ee92]
            System.out.println("Arrays.toString,     shallow: " 
                + Arrays.toString(shallowArray) + " deep: " + Arrays.toString(deepArray));
            //output: Arrays.toString,          shallow: [Java, Python] deep: [[I@2a84aee7, [I@a09ee92]
            System.out.println("Arrays.deepToString, shallow: "
                + Arrays.deepToString(shallowArray) + " deep: " + Arrays.deepToString(deepArray));
            //output: Arrays.deepToString, shallow: [Java, Python] deep: [[1, 1], [2, 2]]
        }
    }
	```
	</details>

## Errors
Which the IDE usually not notice but are thrown and end the program when compiling.

- **`ArrayIndexOutOfBoundsException`**: *Indexing an array outside of its boundary.*
