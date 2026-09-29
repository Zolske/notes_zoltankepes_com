---
title: L02 Variablen und Wertzuweisungen
---

# M04 Einführung in die Programmierung mit Python

# L02 Variablen und Wertzuweisungen

<details>
<summary>LERNZIELE</summary>
	<ul>
		<li>Variablen in Python zu benutzen und ihnen verschiedene Werte zuzuweisen.</li>
		<li>Verschiedene numerische Datentypen zu verwenden.</li>
		<li>Strings und andere zeichenbasierte Datentypen einzusetzen.</li>
		<li>Collections anzulegen und zur Verwaltung von Daten zu nutzen.</li>
    <li>Grundlegende Datei-Eingabe- und -Ausgabe-Operationen durchzuführen.</li>
	</ul>
</details>

<details>
<summary>ZUSAMMENFASSUNG</summary>

Python ist eine ebenso funktionsreiche wie dynamische Programmiersprache, die ein breites Spektrum an Datentypen wie Strings, Ganz-, Gleitkomma- und sogar komplexe Zahlen unterstützt.

Derartige Werte können mithilfe des Zuweisungsoperators (`=`) in Variablen abgelegt werden, wobei die Zuweisung stets von rechts nach links erfolgt. Das bedeutet, dass zunächst der Ausdruck auf der rechten Seite des Gleichheitszeichens ausgewertet und der so errechnete Wert dann der Variablen auf der linken Seite des Operators zugewiesen wird.

Darüber hinaus gibt es in Python nicht nur diverse Operatoren für Rechenoperationen und die Bearbeitung von Strings, sondern auch Datentypen wie Sets, Listen und Dictionarys, die speziell für die Erstellung robuster Datensätze konzipiert wurden.

Außerdem stellt Python unkomplizierte, einfach zu bedienende Funktionen bereit, mit denen Sie Dateien öffnen, beschreiben und auslesen können. Allerdings treten hier möglicherweise unvorhergesehene Herausforderungen auf, wenn sich externe Ressourcen wie beispielsweise das Dateisystem als Fehler- und Störungsquelle erweisen.
</details>

---

#### Regeln zur Benennung von Variablen und Funktionen

| Regel                                                        | Art         |
| ------------------------------------------------------------ | ----------- |
| muss mit einem Buchstaben oder Unterstrich beginnen kann aber auch mit Zahlen fortgesetzt werden | Syntaxregel |
| darf nicht wie Schlüsselwörter (keywords) heißen             | Syntaxregel |
| werden klein geschrieben                                     | Styleguide  |
| verwende snake case um Wortbestandteile zu trennen           | Styleguide  |
| verwende Aussagekräftige Namen                               | Styleguide  |

#### 2. Collections

| Datentyp                                     | Bemerkung                                                    | Methoden                                                     | Beispiele                                             |
| -------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ----------------------------------------------------- |
| **Set** `{ VALUE1, VALUE2 }`                 | - ungeordnet<br />- jeder wert kann nur einmal vorkommen aber keine Fehlermeldung<br />- kann unterschiedliche Datentypen enthalten<br />- Inhalt gedruckt mit `{}` | `add(Element)`<br />`remove(Element)`<br />`clear()`*entfernt alle Elemente*<br />`frozen_set = frozenset({1,4})`*kann nicht mehr verändert werden, ansonsten Fehlermeldung*<br />*kann nicht "Aufgetaut" werden* | `set = {1,-3,"hello", True}`<br />`empty_set = set()` |
| **Liste** `[VALUE1,VALUE1]`                  | - geordnet<br />- werte können doppelt vorkommen<br />- kann unterschiedliche Datentypen enthalten | `append(Element)`<br />`insert(i,Element)`<br />`remove(Element)`<br />`clear()`<br />`count(Element)` |                                                       |
| **Tuple**`(VLUE1, VALUE1)`                   | - wie Liste, aber unveränderlich                             |                                                              |                                                       |
| **Dictionary**`{"KEY1":VALUE1, KEY2:VALUE1}` | - ab Python 3.7 geordnet<br /><br />- unterschiedliche Datetypen<br />- Key muss hashable und immutable sein (string, Zahlen, tuples) und Einzigartig<br />- Werte können sich wiederholen und aus unterschiedliche Datentypen bestehen | `dic.get("Age")`*liest den Wert des Keys "Age".*<br />`dic["Age"]`*genau wie oben* |                                                       |

#### 3. Zahlen

- **ganzzahlige** positive als auch negative Zahlen haben den Datentyp **int**  und können so groß sein wie es der RAM erlaubt
- positive als auch negative **Gleitkommazahlen** (*floating-point*) (*Zahlen mit Nachkommastellen*)  haben den Datentyp **float**, sie können 64 Bit groß sein und sind 15-17 stellen nach der signifikanten Dezimalstelle genau  
```Python
>>> 0.1 + 0.2
0.30000000000000004
```
- **Wissenschaftliche Notation** mit `e` oder `E` werden genutzt um Gleitkommazahlen verkürzt darstellen zu können. Z.B. `4.5e7` == `45,000,000`
- **imaginäre Zahlen** haben den Datentyp **complex**. Format `a + bJ`  , `a` und `b` sind Gleitkommazahlen und der Buchstabe `J` für die Quadratwurzel aus -1 (*die sogenannte imaginäre Einheit*) steht.
- **Imaginäre Zahlen** Zahlen, deren Quadrat eine nicht positive reelle Zahl (typischerweise –1) ist, werden als imaginär bezeichnet.
- **Hexadezimal zahlen** `0x<hex>` (*null + Buchstabe x*), `<hex>` ist der Platzhalter für hexadezimale Zahl, hat den Bereich: `0-9` und `a-f`.
- **Oktalzahlen** `0o<octal>` (*null + Buchstabe o*), `<octal>` ist der Platzhalter für Oktalzahl, hat den Bereich: `0-7`.
- **Binärzahlen** `0b<binär>` (*null + Buchstabe b*), `<binär>` ist der Platzhalter für Biärezahl, hat den Bereich: `0-1`.
- *z.B.* `hex(8) == 0x8` , `oct(8) == 0o10` , `bin(8) == 0b1000`

#### 4. Strings

- kann zwischen zwei gleichen `'` oder `"` stehen
- das selbe Anführungszeichen muss innerhalb des Strings escaped `\` werden
- mit drei `"""` oder `'''` kann sich ein String über mehrere Zeilen erstrecken
- sind selber unveränderlich, allerdings kann der Variable ein neuer String zugewiesen werden
- mit `len("String Text")` wird die Länge des Strings zurück gegeben
- mit `+` können zwei Strings zusammengesetzt werden
- mit `.format()` können variabel in den String eingebaut werden
  ```py
  age_var = 42
  my_str = "My name is {name} and I am {age} young.".format(name="Joe", age=age_var)
  ```
- `print()` kann mehrere Komma separierte Werte ausgeben:
  `print("Text", 42, "Ende") # Text 42 Ende`
- Strings können mit `*` multipliziert werden
- Teile eines Strings können durch `[]` zurück gegeben werden
  (*von erstem bis vorletztem Buchstaben, dritte Position Schritte*)
  ```py
  my_string="Hello, World!"
  print(my_string[0]) # H
  print(my_string[0:]) # Hello, World!
  print(my_string[0:5]) # Hello
  print(my_string[7:]) # World!
  print(my_string[0::2]) # Hlo ol!
  print(my_var[0:-2]) # Hello, Worl
  print(my_var[-6:]) # World!
  ```
- wichtige Methoden:
  ```py
  print(("-").join("TEST")) # T-E-S-T
  print("This is a string".split(" ")) # ['This', 'is', 'a', 'string']
  print("I love Java".upper()) # I LOVE JAVA
  print("I love Java".lower()) # i love java
  print("Java is amazing".replace("is","==")) # Java == amazing
  ```

#### 5. Dateien

1. Datei muss unter Angabe des Pfads + Name und des Modus mit Hilfe der `open()` Funktion geöffnet werden.
   | Modus        | Beschreibung                                                 |
   | ------------ | ------------------------------------------------------------ |
   | `"r"` Read   | - Öffnet Datei im Lesemodus<br />- Ist der Standard Modus und muss deswegen nicht angegeben werden <br />- Falls keine Datei mit dieser Bezeichnung **existiert**, wird ein **Fehlermeldung ausgegeben** |
   | `"x"` Create | - Veranlasst die Erstellung einer neuen Datei mit dem angegebenen Namen<br />- Falls bereits eine Datei mit dieser Bezeichnung **existiert**, wird ein **Fehlermeldung ausgegeben** |
   | `"a"` Append | - Bewirkt die Erstellung einer neuen Datei, falls der angegebene Dateiname nicht existiert.<br />- Wenn bereits eine Datei mit der genannten Bezeichnung **vorhanden** ist, wird dies Datei geöffnet - **ohne Ausgabe einer Fehlermeldung**, Anschließend werden alle neuen Einträge **am Ende der Datei angefügt**, sodass die bereits bestehenden Dateiinhalte erhalten bleiben. |
   | `"w"` Write  | - Bewirkt ebenfalls die Erstellung einer neuen Datei, falls der angegebene Dateiname nicht existiert. Wenn bereits eine Datei mit der genannten Bezeichnung vorhanden ist, wird diese Datei geöffnet (wiederum **ohne Ausgabe einer Fehlermeldung**). Allerdings werden in letzterem Fall - anders als im Anfügemodus - **alle vorherigen Inhalte der bereits bestehenden Datei gelöscht**. Alle neuen Einträge werden am Dateianfang eingefügt. |

   - dabei wird eine Referenz auf ein Dateiobjekt zurückgegeben welche zur weiteren Bearbeitung benötigt wird
     `my_file = open("myfileName.txt", "w")`

2. Nach dem öffnen kann dann in die Datei geschrieben `write()` bzw. gelesen werden `read()`
3. Zum Schluss muss die Datei wieder mit der `close()` Funktion geschlossen werden.

```py
my_file=open("someFile.txt", "w")
my_file.write("I am writing into the file.") # gibt zurück wei viele Zeichen in die Datei geschrieben wurden
my_file.close()

my_file=open("someFile.txt", "r")
print(my_file.read()) # I am writing into the file.
my_file.close()
```

**NOTE:** Beim lesen/schreiben von Dateien kann es zu unvorhergesehen Fehlern kommen die Außerhalb des Zugriff Bereiches des Programmierers liegen. Deshalb sollte ein solcher Vorgang immer mit einem **try-except** Block gesichert werden, um dass Programm vom Abstürzen zu Retten!
