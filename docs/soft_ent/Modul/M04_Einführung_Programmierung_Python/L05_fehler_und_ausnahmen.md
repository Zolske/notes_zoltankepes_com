---
title: L05 Fehler und Ausnahmen
---

# M04 Einführung in die Programmierung mit Python
## L05 Fehler und Ausnahmen

<details>
<summary>LERNZIELE</summary>
	<ul>
		<li>Fehlermeldungen zu deuten und ihre Ursachen zu ermitteln.</li>
		<li>Den Zweck und die Verwendung der Ausnahmebehandlung zu erläutern.</li>
		<li>Logdateien zu erstellen und zur Nachverfolgung des Programmablaufs zu nutzen.</li>
	</ul>
</details>

<details>
<summary>ZUSAMMENFASSUNG</summary>

Programmierer machen Fehler, ganz gleich, wie klein ihr Entwicklungsprojekt auch sein mag. Das ist nicht zu vermeiden. Angesichts dessen erweist es sich als nicht zu unterschätzender Vorteil, dass Python leistungsstarke Tools zur Behandlung und Behebung von Syntaxfehlern, Ausnahmen und logischen Fehlern bereitstellt.

Syntaxfehler treten immer dann auf, wenn der Programmcode die Syntaxregeln von Python verletzt. Sobald der Interpreter einen solchen Fehler erkennt, bricht er die Ausführung des Programms ab und gibt eine hilfreiche Fehlermeldung aus, die unter anderem die betroffene Zeile und die Art des aufgetretenen Fehlers bezeichnet. Das erleichtert die Lokalisierung und Behebung der Fehlerursachen beträchtlich.

Ähnlich verhält es sich mit Ausnahmen. Diese werden ausgelöst, wenn bei der Ausführung eines syntaktisch korrekten Programms Laufzeitfehler auftreten, die den normalen Programmablauf unterbrechen. Auch in diesem Fall erzeugt der Interpreter eine Meldung, die auf die Art des Problems und die wahrscheinliche Fehlerursache hinweist. Darüber hinaus bietet sich den Programmierer hier die Möglichkeit, Ausnahmen durch die Verwendung einer try-Anweisung abzufangen und gezielt zu behandeln.

Eine dritte Möglichkeit zur Diagnose und Behebung von Problemen eröffnet sich durch die vielseitigen Loggingfunktionen, die Ihnen einen detaillierten Überblick über den Programmablauf und die diesem zugrunde liegende Logik liefern. Damit trägt Python der Tatsache Rechnung, dass Anwendungsfehler nicht immer in Abstürzen resultieren, sondern sich mitunter lediglich als Abweichungen vom erwarteten Verhalten des Codes bemerkbar machen. Solche logischen Fehler sind ohne eine detaillierte Erfassung des Programmablaufs oft kaum zu identifizieren und zu beseitigen.
</details>

---

- Die Fehlermeldung gibt die Art, die Zeile und die Stelle des Fehlers an. Die Fehlerstellenmarkierung sowie die Zeile können ungenaue sein.

### 1. Syntax Fehler

> Grundsätzlich treten Syntaxfehler immer dann auf, wenn der Programmcode die Syntaxregeln von Python verletzt.

- Syntaxfehler werden durch den Python-Interpreter entdeckt, während er den Programmcode liest und auf die Einhaltung der Syntaxregeln prüft. Findet der Interpreter einen Syntaxfehler, wird das Programm unterbrochen und auf dem Bildschirm erscheint eine entsprechende Fehlermeldung (`SyntaxError:`). 

### 2. Ausnahmebehandlung

> Sind Laufzeitfehler, die den normalen Ablauf des Programms unterbrechen. Zu den gängigen Beispielen zählt unter anderem die Division durch null oder der Zugriff auf eine nicht existierende Datei.

##### Try Block

`try` `:`
` ` ` ` ` ` ` ` **&lt;**__Anweisungen>__ (*Fehler gefährdete Anweisungen*)
`except` **&lt;**__Fehler_Type>__ `:`
` ` ` ` ` ` ` ` **&lt;**__Anweisungen>__ (*wenn Ausnahmetyp zutrifft*)
`finally` `:` (*optional*)
` ` ` ` ` ` ` ` **&lt;**__Anweisungen>__ (*werden immer Ausgeführt*)

- `try` enthält die Anweisungen die möglicherweise eine Ausnahme verursachen könnten (*Datei öffnen, durch 0 teilen*).  
  - Anweisungen die nach einer Anweisung folgen die eine Ausnahme verursachen werden nicht ausgeführt.
- `except` wird nur ausgeführt falls der Ausnahmetyp zutrifft.  
  - Mehrere Ausnahmetypen können kombiniert werden `except (ValueError, ZeroDivisionError):`
  - Es wird davon abgeraten alle möglichen Ausnahmen pauschal mit nur einem `except:` abzufangen.
  - Mehrere except Blöcke können aufeinander folgen, Blöcke nach dem zutreffenden werden nicht ausgeführt.
  <br />
    ```python
    try:
        raise ZeroDivisionError                        # löst eine Ausnahme aus
    except ValueError:                                 # Ausnahme trifft nicht zu
    	print("There is a Value Error.")
    except ZeroDivisionError as e:
        print(f"A {type(e).__name__} has occurred.")   # Output: A ZeroDivisionError has occurred.
    except:                                            # falls keine Ausnahmen vorher zutreffen dann diese
        print("A undefined exception has occurred.")
    finally:                                           # immer auch wenn keine Ausnahme ausgelöst wird
        print("This block is executed anyway.")        # Output: This block is executed anyway.
    ```

- `finally` wird immer ausgeführt, egal ob es zu einer Ausnahme kam oder nicht.

##### Ausnahmen selber mit dem raise Befehl auslösen

```python
def my_raise_error(num1, num2):
    if num2 == 0:
    	raise ZeroDivisionError
    return num1 / num2

try:
    my_raise_error(42, 0)
except:
    print("ZeroDivisionError has occured.")
```

### 3. Logging: Protokollierung des Programmablaufs

#### logische Fehler

> Sind Fehler in denen das Programm Syntaktisch und ohne Ausnahmen korrekt funktioniert, das Ergebnis aber nicht den Erwartungen entspricht.

###### Debugging
> Bezeichnet den Prozess zur Identifizierung und Behebung von Fehlern und Defekten im Code. Grundsätzlich ist das Debugging deutlich effektiver, wenn es systematisch und methodisch angegangen wird.

#### Logging

Die Python Umgebung stellt ein Tool zum Protokollieren der Ausführung des Programms zur Verfügung. Die Log-Anweisung können genutzt werden um Informationen an bestimmten stelle im Codes zu loggen. Dadurch ergibt sich ein Bild zu logischen Programmablauf.

- Dazu muss am Anfang des Codes die "logging" Bibliothek importiert werden (`import logging`).
- Stufen nach aufsteigendem Schweregrad:
  `debug`, `info`, ( `warning` , `error` , `critical` *Standartstufen*).
  Nur die Standartstufen werden ausgegeben bzw. aufgezeichnet.
- Standartstufen können wie folgt angepasst werden:
  `logging.basicConfig(level=logging.DEBUG)`
- Einstellungen können unter `logging.basicConfig()` geändert werden.
  - `level=logging.DEBUG)` *setzt den Schwergrad auf `debug`*
  - `filename="mylog.log", filemode="w"` *erstellt eine Datei mit den Log-Nachrichten in der Datei `mylog.log` , es werden dann keine weiteren Nachrichten auf den Bildschirm ausgegeben.*
  - `force=True` *erzwingt die Änderungen im `basicConfig`, nach mehrmaligen ändern.*
  - `format="%(asctime)s: %(message)s"` *Formatierung von Log-Nachrichten* `2019-10-11 16:08:59,464: My log message`
    `%(`**&lt;**__Datentype>__`)s` *'s' steht für String, der Rest kann x beliebiger Text sein wie `: ` im Beispiel.*  
<br />
    | Syntax            | Beschreibung                                                 |
    | ----------------- | ------------------------------------------------------------ |
    | `%(asctime)s`     | Erfassung des Erstellungsdatums und der Erstellungszeit des Protokolleintrags |
    | `%(filename)s`    | liefert den Namen der Logdatei                               |
    | `%(funcName)s`    | liefert den Namen der Funktion, in der der Protokolleintrag erzeugt wurde |
    | `%(lineno)d`      | liefert die Nummer der Codezeile, in der der Protokolleintrag erzeugt wurde |
    | `%(process)d`     | liefert die Kennung des Prozesses, der den Protokolleintrag erzeugt hat |
    | `%(processName)s` | liefert den Namen des Prozesses, der den Protokolleintrag erzeugt hat |

  ```python
  import logging
  
  logging.basicConfig(filename="mylog.log", filemode="w", level=logging.DEBUG force=True)
  
  logging.debug("Debug is the lowest log level in severity")
  logging.info("Info is the second lowest log level")
  logging.warning("Warinig is the third level")
  logging.error("Error is the fourth level")
  loggong.critical("Critical is the fifth and highest level")
  ```

  