---
title: L01 Grundlagen und Begriffe des Requirements Engineering
---

# Requirements Engineering

## L01 Grundlagen und Begriffe des Requirements Engineering

<details>
<summary>LERNZIELE</summary>
	<ul>
		<li>Was Requirements Engineering bedeutet und was dessen Ziele sind.</li>
		<li>Welche Kernaktivitäten beim Requirements Engineering durchgeführt werden.</li>
		<li>Was als Anforderung bezeichnet wird und welche Arten von Anforderungen unterschieden werden können.</li>
	</ul>
</details>

<details>
<summary>ZUSAMMENFASSUNG</summary>

Bevor mit der Konstruktion oder der Veränderung von Teilen des Systems begonnen werden kann, müssen Funktionen und Eigenschaften des Systems ermittelt werden, welche das System nach Abschluss der Entwicklung unterstützen soll. Die Aktivitäten zur Ermittlung, Dokumentation, Abstimmung und Verwaltung von Anforderungen werden unter dem Begriff „Requirements Engineering“ (abgekürzt RE) zusammengefasst. Im RE sind alle relevanten Stakeholder des Systems involviert. Durch mehrfache Durchführung von Aktivitäten des RE (Iterationen) werden Anforderungen an das System ermittelt und verfeinert.

Mit dem Begriff Anforderungen werden die geforderten Funktionen und Eigenschaften zu IT-Systemen bezeichnet, die nötig sind, um ein bestimmtes Ziel zu erreichen. Für ein professionelles Requirements Engineering ist es allerdings wichtig, Anforderungen an Systeme von [fachlichen Problemen](./M03_glossar.md#fachliches-problem) zu unterscheiden. Im Requirements Engineering werden drei verschiedene Arten von Anforderungen unterschieden. Funktionale Anforderungen sind Anforderungen, die vom System bereitzustellende Funktionen definieren. Qualitätsanforderungen hingegen legen qualitative Eigenschaften fest, die das System unterstützen müssen. Mit den Randbedingungen werden organisatorische oder technische Vorgaben beschrieben, die durch das zu erstellende System erfüllt werden müssen.
</details>

---
## 1. Requirements Engineering im Softwareprozess
> Ist ein **kooperativer**, **iterativer**, **inkrementeller** Prozess, mit dem Ziel:  
-> alle relevanten Anforderungen bekannt und im erforderlichem Detaillierungsgrad verstanden werden.  
-> alle Anforderungen konform zu den Dokumentationsvorschriften dokumentiert bzw. konform
zu den Spezifikationsvorschriften spezifiziert sind.  
-> die involvierten [Stakeholder](./M03_glossar.md#stakeholder) ausreichende Übereinstimmung über die bekannten Anforderungen erzielen.

- **kooperative**:  
Anforderungen müssen mit den relevanten [Stakeholder](./M03_glossar.md#stakeholder) ermittelt und abgestimmt werden.
- **iterative** und **inkrementell**:  
RE ist kein einzeln abgeschlossene Aktivität, sondern durch die Natur der erkenntnisgetrieben Software Entwicklung, ein Projekt begleitend Process. Anforderungen werden in Zyklen (*Iterationen*) Stück für Stück (*inkrementell*) ermittelt und verfeinert.

### Der Requirements Engineer
>Aufgabe des Requirements Engineering ist es, herauszufinden und festzulegen, was ein zu erstellendes System alles können soll, welche Funktionen im Detail von ihm gefordert werden und für den Wissenstransfer zum Entwicklungsteam zu sorgen.
---
## 2. Kernaktivitäten im Requirements Engineering
>Zu den drei Kernaktivitäten (*ermitteln, dokumentieren, prüfen & abstimmen*) lässt sich keine feste Reihenfolge beschreiben, denn der verantwortliche Requirements Engineer entscheidet immer in Abhängigkeit der aktuellen Projektsituation, welche Art von Aktivität als nächstes erfolgt. Ergänzend wird in manchen Literaturen auch das "Verwalten von Anforderungen" als 4. Kernaktivität bezeichnet.

##### Anforderungen im Verlauf eines Projekts
- **1. Phase: Planung**:  
	- Grobe Zielbestimmung des Projekts.
	- **Beispiel**: *Mit dem System soll die Beantragung und Abrechnung von Dienstreisen durchgängig digitalisiert werden, um vollständig auf Papierformulare zu verzichten.*
- **2. Phase: Entwicklung**:  
	- **1. Iteration**:  
	**Anforderung ermitteln** (*grob*) &lt;-> **Anforderungen dokumentieren** &lt;-> **Anforderungen prüfen & abstimmen**
		- Beim Start des Projekts ist zunächst wichtig, alle relevanten grundsätzlichen Funktionsbereiche zu ermitteln, ohne dabei bereits auf Details einzugehen.
		- **Beispiel**: *„Anlegen einer Dienstreise“, „Bearbeiten einer Dienstreise“, „Erstattung von Spesen“, ...*
	- **2. Iteration**:  
	**Anforderung ermitteln** (*feiner*) &lt;-> **Anforderungen dokumentieren** &lt;-> **Anforderungen prüfen & abstimmen**
		- Anforderungen werden detaillierter.
		- **Beispiel**: *„Bearbeiten einer Dienstreise“ -> "welche Eingabefelder stehen zur Verfügung", "welche Felder Pflichtfelder sind", "welche Bedingungen eingehalten werden müssen", ...*  
	- **N. Iteration**:  
	**Anforderung ermitteln** (*feiner*) &lt;-> **Anforderungen dokumentieren** &lt;-> **Anforderungen prüfen & abstimmen**
	-  Anforderungen werden immer genauer.
	- Entwicklung ist Erkenntnis getrieben d.h. neue Anforderungen werden erkannt oder bestehende geändert.

### Kernaktivität: Ermittlung von Anforderungen
- Ziel der Aktivität „Ermittlung“ von Anforderungen ist die Identifikation der Anforderungen an das System, die zur Erreichung des Ziels benötigt werden.
- Dafür müssen die Anforderungen erkannt und in dem für die aktuelle Projektsituation erforderlichen Detaillierungsgrad verstanden werden.

### Kernaktivität: Dokumentation von Anforderungen
- Ziel ist dehn aktuellen Erkenntnisstand für alle Stakeholder zu sichern, so dass sich jeder Beteiligte zu jeder Zeit einen Überblick verschaffen kann.
- Anforderungsdokumente sind in der organisationsübergreifenden Softwareentwicklung Bestandteil von rechtsgültigen Verträgen, auf deren Basis geprüft wird, ob die vereinbarte Leistung durch den Softwarehersteller auch tatsächlich erbracht wurde.
- Um komplizierte Strukturen und Zusammenhänge geeignet zu dokumentieren, werden im Software Engineering ergänzend zur Beschreibung von Anforderungen in Textform häufig grafische Modelle eingesetzt (sogenannte Softwaremodelle).
-  Die konkrete Dokumentationsform ist abhängig von:
	- der Art der Anforderungen, die dokumentiert werden soll,
	- vom Zweck und vom Personenkreis, für den die Dokumentation bestimmt ist,
	- von Vorschriften oder Vereinbarungen zum Dokumentationsformat, die im Rahmen des Projekts gelten.

### Kernaktivität: Prüfen und Abstimmen von Anforderungen
> Da alle weiteren Aktivitäten im Software Engineering direkt von den ermittelten und dokumentierten Anforderungen abhängen, müssen die Anforderungen vor der Freigabe zur Umsetzung geprüft und mit den relevanten Stakeholdern abgestimmt werden.
- Ziel der Prüfung ist, die Qualität der Menge der dokumentierten Anforderung hinsichtlich der Kriterien **Inhalt**, **Dokumentation** und **Abgestimmtheit** sicherzustellen.
- Mit der Prüfung soll erreicht werden, dass die Anforderungen eine hohe Dokumentationsqualität haben und beispielsweise Missverständnisse durch Mehrdeutigkeiten vermieden und sich widersprechende oder konkurrierende Anforderungen identifiziert werden.
- Werden bei einer Prüfung Konflikte oder Widersprüche identifiziert, müssen diese unter Einbeziehung der Stakeholder aufgelöst werden.
- Insbesondere in Projekten zur Erstellung von industriellen Informationssystemen sind viele verschiedene Stakeholder einzubeziehen.
- Im Verlauf des Requirements Engineering werden daher in der Regel konkurrierende oder sich gegenseitig widersprechende Anforderungen ermittelt und dokumentiert. Daher nimmt das Konfliktmanagement im Abstimmungsprozess eine wichtige Rolle ein.

---
## 3. Was ist eine Anforderung?
- Mit dem Begriff Anforderungen werden die geforderten Funktionen und Eigenschaften zu IT-Systemen bezeichnet, die nötig sind, um ein bestimmtes Ziel zu erreichen. Für ein professionelles Requirements Engineering ist es allerdings wichtig, Anforderungen an Systeme von [fachlichen Problemen](./M03_glossar.md#fachliches-problem) zu unterscheiden.
- Wenn im Rahmen von Aktivitäten des Requirements Engineering nun Personen zu Anforderungen befragt werden, werden häufig nur genau die Anforderungen genannt, die sich bereits auf das konkrete System beziehen, welches sich die Personen als mögliche Lösung vorstellen. Dabei besteht die Gefahr, dass mögliche alternative Lösungen von Anfang an ausgeblendet und nicht erkannt werden.

#### Anforderung vs. Spezifikation
- **Anforderung** beschreibt, was das System leisten soll – aus der Perspektive der Stakeholder, oft noch relativ abstrakt:  
*z.B. "Das System soll den Lagerbestand anzeigen."*
- **Spezifikation** ist die verfeinerte, detaillierte Beschreibung dieser Anforderung – so präzise, dass das Entwicklungsteam sie direkt umsetzen kann:  
*z.B. "Das System zeigt auf der Produktdetailseite den aktuellen Lagerbestand als ganzzahligen Wert in Echtzeit an. Bei einem Bestand von 0 wird ‚Nicht verfügbar' angezeigt."*

### Zusammenhang zwischen Problem, Anforderung und System
- Die Anforderungen sollen sich von Problem Ableiten und nicht von der oftmals bereits Vorgestellten Lösungsidee. Weil ansonsten alternative Lösungen nicht berücksichtigt werden können.
- Insbesondere in der Kommunikation mit Anwendern werden die Ebenen **Problem**, **Anforderung** und **Lösung** (*System*) bei der Anforderungsanalyse vermischt. Aus diesem Grund ist es unbedingt notwendig, bei Kommunikationssituationen im Requirements Engineering regelmäßig zu reflektieren und zu bestimmen, auf welcher Ebene gerade kommuniziert wird.
- Zu jeder formulierten Anforderung soll auch das zugehörige [fachliche Problem](./M03_glossar.md#fachliches-problem) formuliert werden.

### Arten von Anforderungen
- Beschreibt den **Soll-Zustand**, die geforderten Funktionen und Eigenschaften an ein IT-Systemen um das nötig Ziel zu erreichen (*das Problem zu lösen*). 
- Soll nicht den **Ist-Zustand** (*das Problem*) beschreiben.

##### Funktionale Anforderungen:
Sind Anforderungen, die vom System bereitzustellende (*fachlichen*) Funktionen definieren.  
Beispiel: *"das Berechnen einer Laufzeit", "das Anzeigen aller verfügbarer Waren im Bestand", "das Versenden einer Bestellung per E-Mail"*.

##### Qualitätsanforderungen:
Legen qualitative Eigenschaften fest, die das System unterstützen müssen. Mit ihnen wird keine neue Funktion beschrieben, sondern es werden bereits beschriebene funktionale Anforderungen um qualitative und quantitative Eigenschaften ergänzt.  
Beispiele:
	- *"die Unterstützung von 1.000 Bestellvorgängen pro Sekunde" (quantitativ),*
	- *"die verschlüsselte Speicherung von personenbezogenen Daten" (qualitativ),*
	- *"eine Reaktionsgeschwindigkeit des Systems von weniger als 1 Sekunde" (quantitativ).*

##### Randbedingungen:
Beschrieben organisatorische oder technische Vorgaben, die durch das zu erstellende System erfüllt werden müssen.  
Beispiel: *"Gesetze oder regulatorische Vorschriften von Behörden", "firmeninterne Vorgaben und Richtlinien wie ein Corporate Style Guide", "die Vorgabe eines technischen Rahmens wie die Programmiersprache oder die Zielplattform wie Windows, Linux, Android oder iOS"*.

Werden Qualitätsanforderungen oder Randbedingungen zu spät oder gar nicht erkannt, stellt das in der Regel ein großes Risiko dar. Im Unterschied zu vielen funktionalen Anforderungen ist die späte oder nachträgliche Umsetzung dieser Anforderungen sehr aufwendig und kann zu einer vollständigen Neukonzeption und Neuentwicklung des Systems führen.
