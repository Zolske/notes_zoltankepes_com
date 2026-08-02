---
title: L04 Funktionen
---

# M04 Einführung in die Programmierung mit Python
## L04 Funktionen

<details>
<summary>LERNZIELE</summary>
	<ul>
		<li>Zu erklären, was Funktionen sind und wie diese in Python verwendet werden.</li>
		<li>Die Gültigkeitsregeln für Variablen und Funktionen in Python zu erläutern.</li>
		<li>Funktionsparameter zu verwenden.</li>
	</ul>
</details>

<details>
<summary>ZUSAMMENFASSUNG</summary>

Im vierten Kapitel haben wir verschiedene grundlegende Konzepte des Programmierens in Python kennengelernt: Funktionen, Gültigkeitsbereiche, Argumente und Rückgabewerte. Funktionen bieten Ihnen die Möglichkeit, Ihren Quellcode besser zu strukturieren und bestimmte Codeblöcke als Routinen für wiederholte Aufrufe zur Verfügung zu stellen. Dadurch vermeiden Sie unter anderem das Fehlerrisiko, das bei der mehrfachen Eingabe desselben Programmcodes besteht.

In diesem Zusammenhang bezieht sich der Begriff Gültigkeitsbereich auf jene Programmabschnitte, für die eine spezifische Variable oder Funktionen definiert ist. Das ist wichtig, weil Variablen oder Funktionen nur dann verwendet werden können, wenn sie definiert sind und damit vom Interpreter als gültig erkannt werden.

Ebenfalls von zentraler Bedeutung sind Argumente und Rückgabewerte, da Ihnen diese Features zusätzliche Optionen für den Einsatz von Funktionen eröffnen: Parameter dienen der Übermittlung von Daten an eine Funktion (mittels Argumenten) und können sowohl mit Standardwerten belegt als auch beim Funktionsaufruf als Positionsargumente oder benannte Argumente angegeben werden. Umgekehrt ermöglichen
return-Anweisungen die Übermittlung von Rückgabewerten aus der Funktion zurück an den aufrufenden Code.
</details>

---

### 1 Funktionsdeklarationen

#### Vorteile

- Code wird lesbarer (*Funktionen mit Aussagekräftigen Name, verbergen unnötiger Details und Wiederholungen*)
- *Kann beliebig oft wiederverwendet werden.*
- *Minimiert Fehler.*
- Code kann leichter Verändert werden (*Nur die Funktion selber und nicht jeder Aufruf müssen angepasst werden*)

##### Instanz
> Der Ausdruck „Instanz“ bezeichnet einen eindeutigen Repräsentanten eines Datentyps. Wenn Sie also eine Variable definieren, erzeugen Sie damit eine Instanz des Datentyps der betreffenden Variablen.

#### Funktions Aufruf

- Sobald der Interpreter auf den Aufruf einer Funktion stößt springt er zur Funktons Definition und anschließend wieder zurück.

#### Funktions Definition

- `def` **&lt;**__name_der_funktion>__`(`**&lt;**__Parameter1>__ `,` **&lt;**__Parameter2>__ `)` `:`
   ` ` ` ` ` ` ` ` **&lt;**__Anweisungen>__ 
   ` ` ` ` ` ` ` ` `return` **&lt;**__Rückgabewert>__ 
  - **&lt;**__Parameter>__ *sind optional, müssen allerdings beim Funktionsaufruf in der Richtigen Reihenfolge übergeben werden falls keine Standardwerte definiert wurden. Sind Variabel die nur innerhalb der Funktion gültig sind. Wenn eine Variable beim Aufrufen der Funktion als Argument übergeben wird, so wird nur ihr Wert in die Funktion kopiert nicht aber die Variable selber, die selber unverändert bleibt!*
  - `return` *ist optional allerdings endet an dieser Stelle die Funkion.*
    "Mehrere" werte können Komma separierte als Tuple zurück gegeben werden (`return 1, "a"`).

#### 2. Gültigkeitsbereiche (scopes)

> Ob der Interpreter eine bestimmte Variable oder Funktion in einer gegebenen
> Codezeile erkennt. Ist dies der Fall, so ist die betreffende Variable oder Funktion an dieser Stelle gültig. Wird sie dagegen nicht erkannt, ist sie nicht gültig.

- **Eine in einer Funktions-Definition definierte Variabel oder Funktion (*lokale*) ist nur in dieser Gültig!**

- Eine Funktionsinterne Variabel oder Funktion (*lokale*) mit dem gleichen Name wie eine externe (*globale*) , ist dennoch eine andere Variable/Funktion.
  ```python
  my_var = 42			# globale variable, nicht innerhalb von Funktionen gültig
  def some_function():
      my_var = 1		# locale variable, nur innerhalb dieser Funktion gültig
      print(my_var)	# 1
  print(my_var)		# 42
  ```

##### Gültigkeitsbereich mit `global` und `nonlocal` ändern

- `global` **&lt;**__variable_name>__ *bezieht sich auf die Variable außerhalb von Funktionen.*

  ```python
  x = 1				# globale
  def my_function():
      global x		# bezieht sich auf die 'globale' Variable
      x = 10			# ändert den Wert der globalen Variable
      print(x)		# 10
  print(x)			# 10        
  ```

- `nonlocal` **&lt;**__variable_name>__ *bezieht sich auf die Variable in der Funktion außerhalb der Geschachtelten Funktion.*

  ```python
  x = 1				# globale
  def my_function():
      x = 10			# local
      print(x)		# 10
      def my_nested_function():
          nonlocal x	# bezieht sich auf die darüberliegende locale Variable
          x = 100		# ändert die darüber liegende locale Variable
          print(x)	# 100
      print(x)		# 100
  print(x)			# 1
  ```

  

#### 3. Argumente

> Ermöglichen die Übergabe (Kopie) von Werten beim Funktionsaufruf. Der eigentliche Wert der Variable ändert sich nicht außerhalb.

- Argumente müssen:

  - in der richtigen Reihenfolge (*Positionsargument, benannte Argumente*)
  - in der passenden Anzahl (*Standardargumente*)
  - Datentyp ist in der Definition nicht festgelegt (*viel Glück bei der Verwendung im Funktionskörper*)  

  an die Funktion übergeben werden wenn sie aufgerufen wird.

- **Benannte Argumente** können an anderen Stellen übergeben werden,  
  - Benannte Argumente müssen nach allen Positionsargumenten kommen,
  - dürfen keine durch bereits durch Positionsargumente übergebene Argumente überschreiben.

  ```python
  def person_info(name, phone, age):
    print(name)
    print(type(age))
    print(phone)
      
  person_info(age=42, phone=1234567, 42) 	# SyntaxError: positional argument follows keyword argument
  person_info("Zolsk", 12, name="Micke")  # TypeError: person_info() got multiple values for argument 'name'
  person_info("Zolsk", age=42, phone=12)  # Output: Zolsk <class 'int'> 12
  ```

- Die Anzahl der Argumente kann weniger sein wenn die Fehlenden bereits durch **Standardargumente** definiert wurden.
  **NOTE:** Standardargumente müssen immer als letztes definiert werden!

  ```python
  def person_info(name, age, phone="01234567"):
    print(name)
    print(age)
    print(phone)
      
  person_info("Mike", 42)
  ```

  
