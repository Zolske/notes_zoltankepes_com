---
title: L05 Organisation und Struktur von IT-Projekten
---

# IT-Projektmanagement

# L05 Organisation und Struktur von IT-Projekten

## Einleitung
In dieser Lektion werden die ausgewählten Managementmodelle Scrum, PITPM und PRINCE2 für die Organisation und Struktur von IT-Projekten gegenübergestellt.

<details>
<summary>LERNZIELE</summary>

<ul>
    <li>Welche Managementebenen in PRINCE2 unterschieden werden.</li>
    <li>Welche Managementprozesse es in PRINCE2 gibt und welche Ergebnisse in diesen Prozessen erzeugt werden.</li>
    <li>Welche Projektphasen es in PITPM gibt.</li>
    <li>Zu welchen Aspekten der Projektleitung entsprechende Managementpläne erstellt werden müssen.</li>
    <li>Mit welchen Aktivitäten die Projektleitung in PITPM ein IT-Projekt steuert.</li>
</ul>
</details>

<details>
<summary>ZUSAMMENFASSUNG</summary>

Scrum ist ein adaptives Managementmodell, das Vorhaben in kurzen Zyklen organisiert, in denen ein sich selbst organisierendes Scrum Team wirkt. Ein Scrum Team ist eine kleine Gruppe von interdisziplinären Fachleuten, die zusammen alle Kompetenzen haben, um das Produkt zu erstellen. In einem Scrum Team gibt es die drei Rollen: Product Owner, Scrum Master und Developer. Ein Zyklus in Scrum heißt Sprint, dauert höchstens einen Monat und ist strukturiert durch die Events Sprint Planning, Daily Scrum, Sprint Review sowie Sprint Retrospective. Die zentralen Elemente in Scrum sind Product Backlog, Sprint Backlog sowie das Increment.

PRINCE2 ist eine Methode für das IT-Projektmanagement für mittlere bis sehr große Projekte. Die Kernelemente von PRINCE2 sind die detaillierte Beschreibung von sieben Hauptmanagementprozessen, die daran beteiligten Rollen mit ihren Aufgaben und Zuständigkeiten sowie die im Rahmen der Aktivitäten zu erstellenden Managementartefakte. PRINCE2 unterscheidet im Rahmen eines Projekts vier verschiedene Managementebenen: Programmmanagement, Projektlenkungsausschuss, Projektleitung und Teamleitung. Jede dieser Ebenen ist dabei konkreten Managementprozessen zugeordnet.
</details>

---
## 5.1 Ausgewählte Managementmodelle für IT-Projekte: Scrum, PITPM und PRINCE2

||Scrum |PRINCE2 |PITPM |
|---|---|---|---|
|**Grundprinzip** |in kurzen Zyklen organisiertes, adaptives Managementmodell |Rahmenwerk mit Prozessen, Gremien und Rollen zum Projektmanagement |Pragmatischer Managementprozess für ITProjekte auf Basis von PMBOK |
|**Typisches Einsatzgebiet** |Entwicklung komplexer Produkte in Teams bis zu zehn Personen |Steuerung mittlerer bis sehr großer Projekte |Steuerung mittelgroßer IT-Projekte |
|**Kernelemente** |- selbstorganisiertes Scrum Team <br/>- Scrum Sprint mit Scrum Events <br/>- Product-Backlog |- sieben Prozesse zur Steuerung <br/>- vier Managementebenen |- fünf Projektphasen mit Aktivitäten und Kontrollpunkten <br/>- neun Wissensgebiete |
|**Spezifisch für IT-Vorhaben** |nein |nein |ja |

---
## 5.2 Überblick Scrum: Rollen, Events und Artefakte
>Ist ein iteratives[^1], inkrementelles[^2] und stark adaptives Managementmodell, es basiert auf kurzen Zyklen und einem sich selbst organisierenden Team.

[^1]: **iteratives**: in mehreren Zyklen (*Sprints*)
[^2]: **inkrementelles**: das "Produkt" wird stückweise weiter entwickelt, muss aber immer funktionsfähig bleiben

- Für die Erstellung eines komplexen "Produkts", auch außerhalb von IT-Projekten (*z.B. Marketing, Forschung, Bildung*).
- Es basiert auf den drei Säulen **Transparenz**, **Überprüfung** und **Anpassung**.


#### Das Scrum Team
Ist klein (*max. 10 Personen*), interdisziplinär und selbstorganisiert — ohne Teilteams oder Hierarchien.

|Rolle	            |Verantwortung |
|---|---|
|**Developer**<br/>*(im sinne von Produkt Entwickler & nicht nur Softwareentwickler)* |Konstruktive Arbeit am Produkt (*Konzeption, Entwicklung, Qualitätssicherung, Inbetriebnahme*) |
|**Product Owner**	|- Maximiert den Produktwert <br/>- erstellt, pflegt und priorisiert die Backlock-Elementen im Product Backlog <br/>- Entwicklung und Kommunikation des Produktziels <br/>- Sicherstellung von Transparenz und Verständlichkeit des Backlogs|
|**Scrum Master**	|Setzt Scrum in Theorie & Praxis um; coacht das Team und beseitigt Hindernisse |

#### Events (*innerhalb eines Sprints*)
Ein Sprint (*Zyklus*) dauert maximal einen Monat und wird ohne Pause vom nächsten gefolgt.

|Event	            |Dauer (*bei 1-Monat-Sprint*)  |Zweck |
|---|---|---|
|**Sprint Planning**        |max. 8 Std.           |- **Sprint-Ziel** festlegen, *Product-Owner schlägt vor und Team formuliert es* <br/>- **Backlog-Elemente** auswählen, *werden im Gespräch mit dem Product-Owner von den Developern ausgewählt* <br/>- **Arbeit planen**, *Analyse der ausgewählten Backlog-Elemente durch die Developer* |
|**Daily Scrum**            |max. 15 Min.<br/>(*täglich*)    |- tägliche zur selben Zeit und Ort mit alle Developer <br/>- Fortschritt prüfen und Hindernisse überwinden <br/>- geplante Arbeit aufgrund der gewonnenen Erkenntnisse anpassen, <br/>- umsetzbaren Plan für nächsten Tag erstellen |
|**Sprint Review**	        |max. 4 Std.	       |- Scrum Team stellt den relevanten Stakeholdern die **Ergebnisse** vor <br/>- **Überprüfung** der Ergebnisse <br/>- grobe **Planung** was als nächstes passiert und Backlog Anpassung |
|**Sprint Retrospective**	|max. 3 Std.	       |- Team **reflektiert** Sprint (*positive & negative Erlebnisse*)<br/>- Maßnahmen zur allgemeinen **Verbesserung** (*Zusammenarbeit & Produktqualität*) |

#### Scrum-Artefakte
|Artefakt               |Beschreibung |
|---|---|
|**Product Backlog**    |- geordnete, emergente[^3] Liste aller zu erledigenden Arbeit <br/>- einzige quelle für alle Aufgaben <br/> - **Product Backlog Refinement**: Product-Owner fügt nötige Informationen zur Umsetzung den Backlog-Elementen zu|
|**Sprint Backlog**	    |- Backlog-Elemente für Sprint + Sprint-Ziel + Arbeitsplan für den Sprint <br/>- Developer passen kontinuierlich an |
|**Increment**          |- Sprint-Backlog-Element abgeschlossen + Definition of **Done** erfüllt → neues Increment <br/>- am Ende des Sprints muss das Increment insgesamt verwendbar sein und wird im Sprint Review präsentiert <br/>- Elemente, die die Definition of **Done** nicht erfüllen, dürfen im Review nicht präsentiert werden und wandern zurück ins Product Backlog |

---
## 5.3 Überblick und Managementebenen von PRINCE2


---
[^3]: **emergente**: wird kontinuierlich angepasst (*niemals vollständig oder fertig*)