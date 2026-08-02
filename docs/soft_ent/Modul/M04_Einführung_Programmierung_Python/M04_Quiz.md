# Quiz

<!--
<details>
<summary></summary>


</details> 
-->
---
## Lernziele

### L01: Einführung in Python

<details>
<summary>Erläutere 7 Stärken von Python. (*Gründe für wachsende Beliebtheit*)</summary>

	- **lesbare, kompakte Syntax** (*fast wie Pseudocode auf Englisch*)
	- **große Bibliothekssammlung** (*NumPy, Pandas, SciPy ...*)
	- **interpretiert** (*direkte Ausführung*) & **interaktive** (*feedback, REPL, Terminal, Jupyter Notebook, Lab*)
	- **mehrere Programmierparadigmen** (*prozedural, objektorientiert und funktional*)
	- **aktive Community** (*viele Ressourcen, Tutorials, Hilfe*)
	- **vielseitig** (*Scripting, Webseiten,Deep Learning*)
	- **plattformübergreifend** (*Windows, MacOs, Linux*) 
</details> 

<details>
<summary>Erläutere 4 Schwächen von Python.</summary>

	- **Ausführungsgeschwindigkeit** (*kann zum Teil durch optimierte Bibliotheken gemildert werden,  
	z.B.: numpy intern in C geschrieben*)
	- **Typenprüfung erst zur Laufzeit**
	- **Speicherverbrauch** (*tendenziell mehr Arbeitsspeicher als C oder Java*)
	- **Mobilentwicklung** (*kaum verbreitet für iOS/Android-Apps*)
</details> 

<details>
<summary>Welche 2 Möglichkeiten gibt es Python zu installieren.</summary>

	1. **Python direkt von python.org** oder Paketmanager (*Packte manuell nach installieren*)
	2. **Distribution** (*z.B.: Anaconda enthält Python, Jupyter Notebook, Lab, NumPy, Pandas usw*)
</details> 

<details>
<summary>Nenne und beschreibe die 4 verschiedenen Komponenten einer Python-Entwicklungsumgebung</summary>

	1. **1. Python-Interpreter**:  
	*start* `python`  
	Code wird sofort ausgeführt (*REPL*).  

---
	2. **IPython**:  
	*start* `source ~/Apps/anaconda3/bin/activate` -> `ipython`  
	Erweiterte interaktive Shell:
		- Autovervollständigung mit der Tab-Taste
		- Inline-Dokumentation zu Funktionen
		- Farbige Hervorhebung von Code

---
	3. **Jupyter Notebook**:  
	*start* `source ~/Apps/anaconda3/bin/activate` -> `jupyter notebook`  
	Im Browser, ausführbarer Code + Dokumentation, (*verwendet IPython*):
		- Code-Zellen – ausführbarer Python-Code
		- Markdown-Zellen – formatierter Text, Erklärungen
		- Ausgaben – Diagramme, Tabellen, direkt eingebettet

---
	4. **Jupyter Lab**:  
	*start* `source ~/Apps/anaconda3/bin/activate` -> `jupyter lab`  
	Im Browser, Jupyter Notebook + IDE + Extensions
</details> 

### L02: Variablen und Datentypen

<details>
<summary>Wie werden Variablen in Python Typisiert?</summary>

**Dynamische Typisierung** (*dynamic typing*):
- Datentyp erschliesst sich aus dem Wert z.B.: `x = 1` *Int*, `x = "hello"` *String*
- Datentyp einer Variable kann sich ändern. 
</details> 

<details>
<summary>Welche Syntax Regeln bzw. Konventionen sind bei der Namens Vergabe zu Beachten?</summary>

	**Syntax Regeln**:
	- Müssen eingehalten werden sonst wird der Code nicht ausgeführt.
	- muss mit Unterstrich oder Buchstaben beginnen
	- kann auch von Zahlen gefolgt werden
	- darf kein Schlüsselwort sein

	**Konventionen** (*style guide*):
	- Code wird auch so ausgeführt, soll ihn aber lesbarer machen.
	- Aussagekräftige Namen
	- Variablen & Funktionen in **snake_case**: Kleinbuchstaben, Wörter durch Unterstrich trennen, Funktionsnamen aus Verben
	- Klassen & Ausnahmen in **UpperPascalCase**: Wortanfang in Großbuchstaben, Ausnahmen mit Error z.B.: `ValueError`
	- Konstante & Globals in **UPPER_CASE**: alles in Großbuchstaben, Wörter durch Unterstrich trennen, z.B.: `MAX_SIZE`
</details> 

<details>
<summary>Welche drei numerischen Datentypen gibt es?</summary>

- Sind alle immutable, können aber mit einen neuen Wert überschrieben werden.  

 **Ganzzahlen** (*Integer*):
 - Größe ist nur durch Speicher begrenzt, können negative wie positive sein
 - Datentyp ist **int**, cast mit `int()` falls möglich, z.B.: `x = int("4.4")` *Nachkommastellen gehen verloren*  

 **Gleitkommazahlen** (*Floating Point*):
 - Datentyp ist **float**, cast mit `float()` falls möglich, z.B.: `x = float(1)`
 - begrenzte Genauigkeit (~15-17 Dezimalstellen), für exakte Berechnungen `decimal` Modul
 - wissenschaftliche Notation `e` oder `E` z.B.: `3.14e2` == `314.0` , `314e-2` == `3.14`  
 ```python
print(0.1 + 0.2)         # Output: 0.30000000000000004
print(0.1 + 0.2 == 0.3)  # Output: False (wegen Rundungsfehler)
```

**imaginäre Zahlen**:
- haben den Datentyp complex. Format a + bJ
</details> 

<details>
<summary>Nenne 5 wichtige Methoden um einen String zu bearbeiten.</summary>

```python
print(("-").join("TEST"))                   # T-E-S-T
print("This is a string".split(" "))        # ['This', 'is', 'a', 'string']
print("I love Java".upper())                # I LOVE JAVA
print("I love Java".lower())                # i love java
print("Java is amazing".replace("is","==")) # Java == amazing
```
</details> 

<details>
<summary>Welche 4 Collections gibt es?</summary>

	- alle können unterschiedliche Datentypen haben  
	- alle außer **Set** sind geordnet (*__Dic__ seit 3.7*)

	**Set** `{ VALUE1, VALUE2 }`
	- jeder wert kann nur einmal vorkommen
	- `add(Element)`, `remove(Element)`, `clear()`
	- durch `frozen_set = frozenset({1,4})` unveränderlich 

	**List** `[VALUE1, VALUE1]`
	- `append(Element)`, `insert(i,Element)`, `remove(Element)`, `clear()`, `count(Element)`

	**Tuple** `(VALUE1, VALUE1)`
	- wie List aber unveränderlich

	**Dictionary**`{"KEY1":VALUE1, KEY2:VALUE1}`
	- Key muss hashable und immutable sein (string, Zahlen, tuples) und Einzigartig
	- `dic.get("Key")` oder `dic["Key"]` gibt den Wert zurück
</details> 

<details>
<summary>Welche 4 Modus gibt es um einen Datei zu öffnen?</summary>

*z.B.:* `my_file = open("myfileName.txt", "w")`
	- Read `r`: standart, lesen, Ausnahme falls nicht vorhanden
	- Create `x`: erstellt Datei, Ausnahme falls bereits existiert
	- Append `a`: erstellt Datei, falls existiert dann wird angehängt
	- Write `w`: wie Append allerdings wird eine vorhanden Datei überschrieben
</details> 

<details>
<summary>Was muss man nach dem öffnen einer Datei zum Schluss unbedingt tun?</summary>

	- sie mit der `close()` Methode wieder schliessen
	```python
	my_file=open("someFile.txt", "r")
	# do something
	my_file.close()
	```
</details> 

<details>
<summary>Mit welchen Methoden schreibt bzw. liest man aus einer Datei.</summary>

	- **read**: `.read()` *bzw. je Zeile* `.readline()`
	- **write**: `.write("hello")`

	```python
	f = open("demofile.txt")
	print(f.read())
	print(f.readline())
	f.close()

	f = open("demofile.txt", "a")
	write("More Text")
	f.close()
	```
</details> 

---
<!-- <details>
<summary>Was ist eine Variable?</summary>

**Definition:**  
Eine Variable ist ein benannter Speicherbereich, der einen Wert referenziert.  
**In Python sind Variablen dynamisch typisiert** – ihr Typ wird zur Laufzeit bestimmt und kann sich ändern.

- Keine explizite Typdeklaration (*z.B.:* `x = 10` *statt* `int x = 10`)
- Der Wert und **Typ** der Variable kann sich ändern! (*z.B.:* `x = 42` *später* `x = 'jetzt_ein_String'`)
- Das aufrufen einer **undefinierten** Variable führt zu der **Ausnahme** (*Exception*) `NameError` !
</details>

<details>
<summary>Was ist eine Konstante?</summary>

Ist eine *unveränderliche Variablen*, in Python gibt es keine Konstanten!  
Stattdessen werden Konventionen verwendet, um Konstanten zu kennzeichnen:
- Namen in Grossbuchstaben (*z.B.:* `PI = 3.14159`).
- Wert soll nicht, kann aber trotzdem geändert werden.
</details> 

<details>
<summary>Was ist eine String?</summary>

Ein String (Datentyp `str`) ist eine **unveränderliche** (immutable) Folge von Unicode-Zeichen, die zur Darstellung von Text verwendet wird.
- wird durch einfache `'test'` oder doppelte `"auch text"` Anführungszeichen definiert.
- Multiline Sting mit drei einfachen `'''...'''` oder drei doppelten `"""..."""` Anführungszeichen.
- Unterstützt Indexierung (`s[0]`) und Slicing (`s[1:4]`).
- Einmal erstellt, kann der Inhalt nicht mehr geändert werden (*z.B.:* `s = "hello"` `s[0] = "A"` **führt zu einem Fehler!**).  
Allerdings kann die Variable Komplet überschrieben werden (*z.B.:* `s = "yes"`)
</details>  -->
