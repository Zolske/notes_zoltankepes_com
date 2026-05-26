---
title: M03 Requirements Engineering
---

# Requirements Engineering

## 2. ERMITTLUNG VON ANFORDERUNGEN

<details>
<summary>LERNZIELE</summary>
<ul>
<li>Was ein Systemkontext ist, was die Kontextgrenzen sind und wie man dies bestimmt.</li>
<li>Welche Quellen es zur Ermittlung von Anforderungen gibt.</li>
<li>Welche Kategorien es zur Einordnung von Techniken für die Ermittlung von Anforderungen gibt.</li>
<li>Was bei der Wahl geeigneter Techniken zur Anforderungsermittlung zu berücksichtigen ist.</li>
<li>Wie Anforderungen unter Einsatz der Techniken ermittelt werden können.</li>
</ul>
</details>

---
### 2.1 Bestimmung des Systemkontextes
> Es wird nur festgelegt was zum Systemkontext gehört!

![Zusammenhang von System, Systemkontext und irrelevanter Umgebung](./img/system_systemkontext.jpg)

#### Systemkontext:  
> Relevanter Teil der Systemumgebung, der zur Definition und zum Verständnis von Anforderungen analysiert werden muss.
- **Stakeholder**:  
	Verfolgen bestimmte Ziele und interagieren direkt mit dem System.
- **Umsysteme**:  
	Über technische Schnittstellen zu Umsystemen können die Funktionen anderer Systeme eingebunden werden (*z. B. das Prüfen von Adressdaten*).
- **Dokumente**:  
	Können Randbedingungen für die Entwicklung des Systems liefern (*z.B. Gesetze*).  
	Dokumente von bereits existierenden Umsystemen (*z.B. für Schnittstellen*).
- **System- und Kontextgrenzen**:  
Können sich während des Projektverlaufs ändern.  
	- Eine Anforderung kann durch dass System selber gelöst oder durch eine technische Schnittstelle zu einem Umsystem.  
	- Durch die Hinzunahme oder den Ausschluss von Anforderungen verändern sich der funktionale Umfang des Systems und damit auch die Grenzen.
	- Häufig wird erst während des Projektverlaufs klar ob Gesetze relevant sind.
---

### 2.2 Bestimmung der Quellen von Anforderungen
> Es werden nur die Quellen für die Anforderungen ermittelt!

#### Quellen von Anforderungen:  
- **Systemkontext**
- **Stakeholder** (*alle*) :  
	(*z.B. Auftraggeber, Benutzer, Mitarbeiter der Rechtsabteilung, Entwickler*)
- **Dokumente**:  
	Unternehmensinterne Dokumente (*z.B. Leitlinien, Unternehmens- oder IT-Strategien, Nachhaltigkeitsberichten und Sicherheitskonzepten*) und  
	Öffentliche Dokumente (*z.B. Standards und Best-Practices-Quellen*)
- **Altsysteme**:  
	Dokumente des Altsystems.  
	Was kann verbessert oder gestrichen werden?
- **Konkurrenzsysteme**

#### Stakeholdermanagement
> Jeder Stakeholder hat einen individuellen Hintergrund, Kenntnisstand und ein individuelles Problemverständnis.
Dies führt dazu, dass auch jeder Stakeholder eine eigene Sichtweise und eigene Prioritäten hat.
- **Stakeholder-Priorisierungsmatrix**:  
Zunächst ist es die Aufgabe des Requirements Engineer, die relevanten Stakeholder zu identifizieren und deren Interessen und Einflüsse auf das Projekt im Detail zu analysieren. Oft geschieht das in Zusammenarbeit mit der Projektleitung. Anhand dieser Erkenntnisse werden die Stakeholder in eine Stakeholder-Priorisierungsmatrix eingetragen

![Stakeholder-Priorisierungsmatrix](./img/stakeholder-priorisierungsmatrix.jpg)

#### Stakeholder Tabelle
> Ausgehend von der Stakeholder-Priorisierungsmatrix wird eine Tabelle mit weiteren Merkmalen erstellt  
(*z.B. Name, Rolle im Unternehmen, zugehörige Aufgaben*).

|Name|Rolle|Macht|Interesse|Unterstützung|Benötigte Info.|
|---|---|---|---|---|---|
|Meier|Sachbearbeiter|gering|hoch|Quelle für GUI-Anforderungen|Verbesserungsvorschläge|
|Müller|Auftraggeber|hoch|hoch|Geld|Freigabe der Anforderungen|

#### Best Practies im Umgang mit Stakeholdern:
- Regelmäßige **Statusbesprechungen**:  
Stakeholder müssen über den aktuellen Stand auf dem Laufenden gehalten werden, damit sich diese einbezogen fühlen.
- **Aufmerksamkeit**:  
Anliegen von Stakeholdern müssen stets ernst genommen und durch entsprechende Reaktionen wertgeschätzt werden.
- Festlegen von **Aufgaben**, **Verantwortungsbereichen** und **Weisungsbefugnissen**:  
zur Vermeidung von Missverständnissen, fördern die Wertschätzung und vermeiden Gerangel um Kompetenz.
- **Negative** eingestellte **Stakeholder**:  
das Projekt erläutern, überzeugen und motivieren.
- **Positiv** eingestellte **Stakeholder**:  
durch aktive Einbeziehung und regelmäßige Informationsweitergabe bestärken.
---

### 2.3 Auswählen der geeigneten Ermittlungstechniken
> Für die Ermittlung von Anforderungen gibt es verschiedene Techniken, welche grundsätzlich immer von der spezifischen Situation und der Art der zu ermittelnden Anforderungen abhängig sind.

#### Befragungstechnik
- **Techniken**:  
Interview, Fragebogen
- **Nachteile**:  
	- Stakeholder müssen fähig und willig sein Anforderungen explizit zu äußern.  
	- Stakeholder müssen genug Zeit haben.
	- Ungeeignet für als selbstverständlich vorausgesetzte Anforderungen.
- **Vorteile**:  
	- Detailgrad der Anforderungen kann sehr hoch sein.
	- Ermittlung von **innovativen**, **explizit geforderten** und **grundlegenden Anforderungen**.


#### Kreativitätstechniken
- **Techniken**:  
verbales Brainstorming, schriftliches Brainstorming, Brainstorming paradox, Perspektivwechsel, Workshop
- **Nachteile**:  
	- Vergleichsweise hoher Aufwand.
	- Weniger detaillierte Anforderungen.
- **Vorteile**:  
	- Gemeinsame Systemvision durch kreative und kooperative Zusammenarbeit.
	- Ermittlung von **Innovativen Anforderungen**.

#### Dokumentenzentriete Technik
- **Techniken**:  
Systemarchäologie, perspektiven basiertes Lesen, Wiederverwendung
- **Vorteile**:  
	- Ermittlung basiert auf der Nutzung vorhandener Systeme oder Dokumentation.
	- Anforderungen wurden bereits in vorherigen Systemen umgesetzt.
	- Ermittlung von **grundlegenden Anforderungen**.

#### Beobachtungstechnik
- **Techniken**:  
Feldbeobachtung, Apprenticing
- **Vorteile**:
	- Durch Beobachtung von Arbeitsabläufen werden Systemfunktionalitäten abgeleitet.
	- Ermittlung von **grundlegenden Funktionalität** und für von Stakeholdern als selbstverständlich eingeschätzten Anforderungen. 

#### Prototyping
- **Techniken**:  
horizontal, vertikal, wegwerf, evolutionär, analog, digital
- **Vorteile**:  
	- Initiale Systemversionen werden erstellt um ein tieferes Problemverständnis und Wissen über potenzielle Lösungen zu erlangt.
	- Beschaffenheit des Prototyps (*z. B. analoge Handskizzen und digitale Prototypen*) hängt von Projektvorschriften ab.
	- Ermittlung von **innovative Anforderungen**

#### Unterstützende Techniken
- **Techniken**:  
Mindmaps, CRC-Karten, Analogietechnik, audiovisuelle Aufzeichnung, UC-Modelle

#### Einflussfaktoren auf die Wahl der Ermittlungstechniken
- Um möglichst vollständige Anforderungen zu erhalten, werden die Techniken in der Praxis häufig kombiniert (*z. B. eine Kreativitätstechnik, um Fragen für ein Interview zu erarbeiten*).
- Menschliche Einflussfaktoren sind soziale, gruppendynamische und kognitive Fähigkeiten der Stakeholder.
- Beachte ob die Anforderungen explizit geäußert oder als selbstverständlich vorausgesetzt werden. Unbewusst vorliegendes Wissen wird beispielsweise besser durch eine Kreativitätstechnik als durch eine dokumentenzentrierte Technik ermittelt.
