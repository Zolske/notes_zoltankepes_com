---
title: L03 Anweisungen
---

# M04 Einführung in die Programmierung mit Python
## L03 Anweisungen

<details>
<summary>LERNZIELE</summary>
	<ul>
		<li>Einfache Zuweisungen und Ausdrucksanweisungen in Python zu verwenden.</li>
		<li>Die Syntax und den Einsatz verschiedener bedingter Anweisungen und Verzweigungen
zu erläutern.</li>
		<li>Funktionsweise und Einrichtung von Schleifen an Beispielen zu demonstrieren.</li>
		<li>Grundlagenwissen über Iteratoren und Comprehensions wiederzugeben.</li>
	</ul>
</details>

<details>
<summary>ZUSAMMENFASSUNG</summary>

In Python (*und anderen Programmiersprachen*) müssen Ausdrücke und Anweisungen voneinander unterschieden werden: Grundsätzlich handelt es sich bei einem Ausdruck um einen Term, der vom Interpreter ausgewertet wird. Im Unterschied dazu löst jede Anweisung eine spezifische Aktion aus. Letzteres gilt beispielsweise für Anweisungen in Form einer Zuweisung, bei der der Wert eines Ausdrucks (auf der rechten Seite des Zuweisungsoperators) in einer Variablen (auf der linken Seite des Operators) gespeichert wird.

Besondere Beachtung verdienen in diesem Zusammenhang auch die logischen bzw. booleschen Ausdrücke, die sowohl Werte als auch Vergleichsoperatoren wie `==` (*gleich*), `>` (*größer als*) oder `<` (*kleiner als*) enthalten und vom Interpreter entweder als True oder False eingestuft werden. Sie bilden die Grundlage für bedingte Anweisungen oder Verzweigungen, deren Code nur dann ausgeführt wird, wenn bestimmte Bedingungen erfüllt sind. Beispiel hierfür ist die if-Anweisung mit den optionalen elif- und else-Zweigen.

Darüber hinaus ist es mitunter erforderlich, bestimmte Codezeilen (in identischer Form oder mit minimaler Variation) mehrmals nacheinander auszuführen. Zu diesem Zweck können Sie in Python for-Schleifen und while-Schleifen nutzen.

Mithilfe von Iteratoren haben Sie außerdem die Möglichkeit, sämtliche Elemente einer Liste, eines Tupels oder eines Dictionary nacheinander abzurufen. Zur Erstellung solcher Listen stellt Ihnen Python mit dem Konzept der Comprehensions ein mächtiges Werkzeug zur Verfügung. Mit Comprehensions ist es auf einfache Art und Weise möglich, neue Listen auf der Basis bereits bestehender Listen zu erzeugen.
</details>

---

### 1. Zuweisungen und Ausdrücke

##### Ausdruck

Jede Kombination aus Literalen, Variablen und Operatoren, die bei ihrer Auswertung einen konkreten Wert liefert, wird in Python als Ausdruck bezeichnet.

##### Hierarchie der Rechenoperatoren

**KEMDAS**

1. **K**lammern
2. **E**xponenten
3. **M**ultiplikation & **D**ivision (*von links nach rechts*)
4. **A**ddition & **S**ubtraktion (*von links nach rechts*)

##### Zuweisungsketten

- mehreren Variablen kann ein gleicher Wert auf einmal zugewiesen werden:
  `a = b = c = 1` ist Gut aber der folgende Ausdruck ist nicht möglich`a + 1 = b = c = 1` weil links vom `=` nur eine Variable stehen kann.

##### Input Funktion

- Erlaubt es dem Programm den Benutzer nach Eingaben abzufragen

- werden immer als String zurück gegeben, können aber in einen anderen Datentyp konvertiert werden falls es möglich ist, ansonsten gibt es einen Ausnahmefehler "ValueError".
  ```py
  my_string = input() # fragt benutzer nach Eingabe und Speichert diese in der Variable 'my_string' als String
  type(my_string) # str -> gibt den Datentyp des Arguments zurück
  my_int = int("42") # Konvertiert String zu Integer
  my_int = int("Hello") # löst Ausnahmefehler aus
  my_float = float("4") # float -> 4.0
  my_str = str(42) # str -> Konvertiert 42 zu "42"
  my_bool = bool("True") # bool -> Konvertiert "True" zu True
  ```

### 2. Bedingte Anweisungen und boolesche Ausdrücke
- Eine **Anweisung** ist eine Codezeile, die vom Interpreter
  ausgeführt wird.
- Eine **Ausdruck** ist ein Codeausschnitt, dem der Interpreter durch Auswertung einen bestimmten Wert zuordnet.

##### Vergleichsoperatoren
Diese Operatoren werden zur Erstellung logischer bzw. boolescher Ausdrücke genutzt. Sie sorgen dafür, dass jedem solchen Ausdruck ein Wahrheitswert (`True` oder `False` gehören zu Datentyp "**bool**") zugewiesen werden kann.

##### Bedinungs-Anweisungen (`if` `elif` `else`)

- `if`     **&lt;**__boolescher Ausdruck>__  `:`

  ` ` ` ` ` ` ` `  **&lt;**__Anweisungen>__

  `elif` **&lt;**__boolescher Ausdruck>__  `:`

   ` ` ` ` ` ` ` `  **&lt;**__Anweisungen>__

  `else` `:`

  ` ` ` ` ` ` ` `   **&lt;**__Anweisungen>__

  ```python
  my_str = input()
  if len(my_str) <= 1:
  	print("Very short String.")
  elif len(my_str) < 5:
  	print("Is a longer String.")
  else:
  	print("Is at least 5 charcters long.")
  ```

### 3. Schleifen

##### Schleife
Die im Körper einer Schleife angegebenen Anweisungen werden so lange immer wieder ausgeführt, wie eine im Schleifenkopf festgelegte Bedingung erfüllt ist.

#### die "For" Schleife

##### `range()`

- **Startwert**: Dieser optionale Wert gibt an, bei welcher Zahl die range mit der Erstellung der Zahlenreihe ansetzen soll. Wenn Sie diesen Parameter weglassen, wird automatisch die Zahl 0 als Startwert gewählt.

- **Endwert**: Dies ist der einzige obligatorische Parameter. Er teilt dem range-Objekt mit, an welchem Punkt die Zahlenreihe enden soll. Dabei wird der angegebene Endwert selbst nicht mehr in die Reihe mit aufgenommen, die folglich mit dem vorherigen Element abschließt.

- **Schrittweite**: Dieser optionale Parameter gibt an, wie groß der Abstand zwischen zwei aufeinander folgenden Zahlen der Reihe sein soll. Wenn Sie diesen Parameter weglassen, wird die Schrittweite automatisch auf 1 gesetzt.

  ```python
  for x in range(10):
      print(x)        # jede Anweisung um 4 Leerzeichen einrücken
                      # druckt die Zahlen 0 bis 9 aus
  ```

  ```python
  for x in range(5, 10, 2):
      print(x)        # ausdruck: 5 7 9
  ```

##### Mit einer Schleife durch eine Collection durchlaufen

```python
name_list=["name1", "name2", "name3"]
for name in name_list:
	print(name)				# name1 name2 name3
for pos in range(len(name_list)):
    print(name_list[pos]) 	# name1 name2 name3
    
name_dic={"name1":"Mike","name2":"Tom"}
for key in name_dic:
	print(key)				# name1 name2
for value in name_dic.values():
	print(value)			# Mike Tom

name_tuple=("Joe","Mike")
for name in name_tuple:
	print(name)				# Joe Mike

name_set={"Tom","Jerry"}
for name in name_set:
	print(name)				# Jerry Tom
```

#### While-Schleifen

- `while`  **&lt;**__boolescher Ausdruck>__  `:` 
  ` ` ` ` ` ` ` ` **&lt;**__Anweisungen>__

```python
name_list=["name1", "name2", "name3"]
x = 0
while x < len(name_list):
    print(name_list[x])		# name1 name2 name3
    x += 1
```

#### `break` und `continue`

- `break` beendet sofort die Schleife
- `continue` springt zum Schleifenkopf, von wo aus sich die Schleife fortsetzt

```python
for x in range(400):
    if x == 2:
        continue	# lässt 2 aus, springt zum Kopf
    if x == 4:
        break		# bricht sofort die Schleife ab
    print(x)		# 0 1 3
```

### 4. Iteratoren und List Comprehensions

- **Iteratoren** bieten Ihnen die Möglichkeit, die Einträge einer **Liste**, eines **Tupels** oder eines **Dictionary** in einer Schleife zu durchlaufen und  nacheinander abzurufen.

  ```python
  my_list = [4,8,15]
  my_iterator = iter(my_list)
  print(next(my_iterator))	# 4
  print(next(my_iterator))	# 8
  print(next(my_iterator))	# 15
  print(next(my_iterator))	# Ausnahmefehler "StopIteration"
  ```

- **Comprehensions**: eine Liste zu erzeugen, die ihrerseits auf den Elementen einer bereits bestehenden Liste basiert. Das ist beispielsweise dann der Fall, wenn Sie über eine Liste mit Zahlen verfügen und nun eine Liste mit den dazu passenden Quadratzahlen erstellen möchten.

  ```python
  # jede belibige Collection (Liste, Tuple, Set, Dictionary)
  my_numbers = [4, 8, 15, 16, 23, 23]
  # Klammern geben Datentyp des Ergebnises vor (Liste [], Set{})
  my_num_list_A = [n*n for n in my_numbers if n < 20]	# []
  print(my_num_list_A)		# [16, 64, 225, 256]
  my_num_list_B = [n for n in my_numbers if n < 20]	# []
  print(my_num_list_B)		# [4, 8, 15, 16]
  my_num_list_C = [n*n for n in my_numbers]			# []
  print(my_num_list_C)		# [16, 64, 225, 256, 529, 529]
  
  my_num_set = {n*n for n in my_numbers if n > 20}	# {}
  print(my_num_set)			# {529}
  
  my_dic = {"name1":1,"name2":2}
  my_new_dic = [n for n in my_dic.values()]			# []
  print(my_new_dic)			# [1, 2]
  my_new_dic = [n for n in my_dic]					# []
  print(my_new_dic)			# ['name1', 'name2']
  ```

  - `n*n` *Ausdruck, was mit jedem Element in der Liste passieren soll*
  - `for n in my_numbers` *For-Schleife die durch die Liste läuft*
  - **Optional:** `if n < 20` *Bedingung welches das jeweilige Element erfüllen muss um in die neue Liste zu kommen*
