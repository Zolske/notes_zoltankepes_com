---
sidebar_position: 5
description: Allows your program to multitask. 
---

# Threads
> Threads are parts of a program that run on their own while the rest of the program does something else. This also is called **multitasking** because the program handles more than one task simultaneously.  
Threads are ideal for anything that takes up a lot of processing time and runs continuously.  
By putting a program’s hardest workload into a thread, you free up the rest of the program to handle other things. You also make the program easier for the JVM because the most intensive work is isolated.

## Writing a Threaded Program
- Threads are implemented in Java with the `Thread` class in the `java.lang` package.
- A thread can be created in two ways: by **subclassing** the `Thread` class or **implementing** the `Runnable interface` in another class. Both `Thread` and `Runnable` belong to the `java.lang` package.

1. Implement the `Runnable interface` in the class which will contain the thread (the "**threaded object**").
	```java
	public class MyThread implements Runnable {
	    public void run() { /*code which is run in the thread*/ }
	}
	```
	- The interface implements only the `run()` method.  

2. Create a "thread object" by calling the "`Thread` constructor" with the "**threaded object**" as argument.
	```java
	Thread runner = new Thread(new MyThread());
	```

3. The `start` method will start the thread by calling the `run()` method. The thread is running independent from the rest of the program as long the `run()` method runs.
	```java
	runner.start()
	```

	<details>
	<summary>*example*: simple thread</summary>

	```java showLineNumbers
	public class SimpleThread {
	    public static void main(String[] args) {
	        Thread runner = new Thread(new MyThread("first"));
	        runner.start();
	        Thread runner_2 = new Thread(new MyThread("second"));
	        runner_2.start();
	        System.out.println("Waiting for threads.");
	    }
	}

	class MyThread implements Runnable {
	    String name;

	    MyThread(String name) {this.name = name;}  //constructor

	    public void run() {                        //threaded code
	        int count = 0;
	        while (count < 10_000) {
	            if (count % 1000 == 0)
	                System.out.println(name + " count is: " + count);
	            count++;
	        }
	    }
	}
	```

	```bash
	Waiting for threads.
	second count is: 0
	second count is: 1000
	first count is: 0
	second count is: 2000
	first count is: 1000
	second count is: 3000
	first count is: 2000
	second count is: 4000
	second count is: 5000
	second count is: 6000
	first count is: 3000
	second count is: 7000
	first count is: 4000
	second count is: 8000
	first count is: 5000
	second count is: 9000
	first count is: 6000
	first count is: 7000
	first count is: 8000
	first count is: 9000

	Process finished with exit code 0
	```
	</details>

	<details>
		<summary>*example*: find the xth prime number</summary>

		The program takes as command line argument the x th prime number, e.g. 2 and 5 will print the second and fifth prime number.  

		The `PrimeFinder` class implements the `Runnable interface`, so it can be run as a thread.
		There are three public instance variables:

		- **`target`**:  
			is a `long` that indicates when the specified prime in the sequence has been found. If you’re looking for the 5,000th prime, target equals 5000.
		- **`prime`**:  
			is a `long` that holds the last prime number found by this class.
		- **`finished`**:  
			is a `Boolean` that indicates when the target has been reached.
		- **`runner`**:  
			Holds the Thread object this class runs in. This object equals `null` before the thread is started.

		- *line 7-13*:  
			The "`PrimeFinder` constructor method" sets the "`target` instance variable" and starts the thread if it hasn’t been started. When the thread’s `start()` method is called, it in turn calls the `run()` method of the threaded class.
		- *line 15-26*:  
			The `run()` method does most of the work of the thread. This method uses two new variables: `numPrimes`, the number of primes that have been found, and `candidate`, the number that might possibly be prime. The candidate variable begins at the first possible prime number, which is `2`.  
		- *line 18-24*:  
			The `while` loop continues until the right number of primes has been found. First, it checks whether the current `candidate` is prime by calling the `isPrime(long)` method, which returns `true` if the number is prime and `false` otherwise. If the `candidate` is prime, `numPrimes` increases by 1, and the `prime` instance variable is set to this prime number. The `candidate` variable is then incremented by 1, and the loop continues.
		- *line 25:*:  
			After the right number of primes has been found, the while loop ends, and the `finished` instance variable is set to `true`. This indicates that the `PrimeFinder` object has found the right prime number and is finished searching. The end of the `run()` method is reached and the thread no longer does any work.
		- *line 28-35*:  
			This method determines whether a number is prime by using the `%` operator, which returns the remainder of a division operation. If a number is evenly divisible by 2 or any higher number (leaving a remainder of 0), it is not a prime number.
		```java showLineNumbers
	    public class PrimeFinder implements Runnable {
	        public long target;
	        public long prime;
	        public boolean finished = false;
	        private Thread runner;
	
	        PrimeFinder(long inTarget) {
	            target = inTarget;
	            if (runner == null) {
	                runner = new Thread(this);
	                runner.start();
	            }
	        }
	
	        public void run() {
	            long numPrimes = 0;
	            long candidate = 2;
	            while (numPrimes < target) {
	                if (isPrimes(candidate)) {
	                    numPrimes++;
	                    prime = candidate;
	                }
	                candidate++;
	            }
	            finished = true;
	        }
	
	        boolean isPrimes(long checkNumber) {
	            double root = Math.sqrt(checkNumber);
	            for (int i = 2; i <= root; i++) {
	                if (checkNumber % i == 0)
	                    return false;
	            }
	            return true;
	        }
	    }
		```

		- *line 8-16*:  
			Converts command line arguments from `String` to `long` and starts for each a thread by instantiating a `PrimeFinder` object.
		- *line 9-13*:  
			Because arguments are `String` objects, and the "`PrimeFinder` constructor" requires `long` values, the `Long.parseLong(String)` class method is used to handle the conversion. All the number-parsing methods `throw NumberFormatException` exceptions, so they are enclosed in "try-catch blocks" to deal with arguments that are not numeric.
		- *line 18-28*:  
			The `while loop` checks to see whether any `PrimeFinder` thread has completed, which is indicated by its `finished` instance variable equaling `true`. When a thread has completed, the `displayResult()` method is called in line 25 to display the prime number that was found. The thread then is set to `null`, freeing the object’s resources (and preventing its result from being displayed more than once).
		- *line 29-33*:  
			The call to `Thread.sleep(1000)` causes the `while loop` to pause for one second during each pass through the loop. A slowdown in loops helps keep the JVM from executing statements at such a furious pace that it becomes bogged down.  
			**NOTE:** commented out because was not necessary.

		```java showLineNumbers
	    public class ThreadsTest {
	        public static void main(String[] args) {
	            ThreadsTest pt = new ThreadsTest(args);
	        }
	
	        public ThreadsTest(String[] args) {
	            PrimeFinder[] finder = new PrimeFinder[args.length];
	            for (int i = 0; i < args.length; i++) {
	                try {
	                    long count = Long.parseLong(args[i]);
	                    finder[i] = new PrimeFinder(count);
	                    System.out.println("Looking for prime " + count);
	                } catch (NumberFormatException nfe) {
	                    System.out.println("Error: " + nfe.getMessage());
	                }
	            }
	            boolean complete = false; 
	            while (!complete) {
	                complete = true;
	                for (int j = 0; j < finder.length; j++) {
	                    if (finder[j] == null) continue;
	                    if (!finder[j].finished) {
	                        complete = false;
	                    } else {
	                        displayResult(finder[j]);
	                        finder[j] = null;
	                    }
	                }
	            // try {
	            //     Thread.sleep(1000);
	            // } catch (InterruptedException ie) {
	            //     // do nothing
	            // }
	            }
	        }
	
	        private void displayResult(PrimeFinder finder) {
	            System.out.println("Prime " + finder.target + " is " + finder.prime);
	        }
	    }
		```
		*Calling the **ThreadsTest** program with the following command line arguments: `20000 100 4200 30`*
		```bash
			Looking for prime 20000
			Looking for prime 100
			Looking for prime 4200
			Looking for prime 30
			Prime 100 is 541
			Prime 4200 is 39971
			Prime 30 is 113
			Prime 20000 is 224737

			Process finished with exit code 0
		```
	</details>

## Stopping a Thread
The best way to stop a thread is to place a loop in the thread’s `run()` method that ends when a variable changes in value.

- A class method, `Thread.currentThread()`, returns a reference to the current thread (*in other words, the thread in which the object is running*).
- The following run() method loops as long as runner and currentThread() refer to the same object:

	```java
	public void run() {
	    Thread thisThread = Thread.currentThread();
	    while (runner == thisThread) {
	        // body of loop
	    }
	}
	```
- If you use a loop like this, you can stop the thread anywhere in the class with the following statement:

	```java
	runner = null
	```
