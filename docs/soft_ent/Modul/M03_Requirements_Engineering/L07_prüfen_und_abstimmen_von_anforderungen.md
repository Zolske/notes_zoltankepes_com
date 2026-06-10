---
title: L07 Prüfen und abstimmen von Anforderungen
---

# Requirements Engineering

## L07 Prüfen und abstimmen von Anforderungen

<details>
<summary>LERNZIELE</summary>
	<ul>
		<li>Welche Aktivitäten zum Prüfen und Abstimmen von Anforderungen erforderlich sind.</li>
		<li>Welche Prüfkriterien es zu Anforderungen gibt und welchen Qualitätsaspekten diese zugeordnet werden.</li>
		<li>Mit welchen Prüfprinzipien eine hohe Qualität der Prüfergebnisse von Anforderungen erreicht werden kann.</li>
		<li>Welche Techniken sich zum Prüfen von Anforderungen eignen.</li>
		<li>Wie bei der Abstimmung Widersprüche in der Menge der Anforderungen aufgelöst werden können.</li>
	</ul>
</details>

<details>
<summary>ZUSAMMENFASSUNG</summary>

Das Ziel der Aktivitäten zum Prüfen und Abstimmen ist die Freigabe der Anforderungen zur Umsetzung in den nachgelagerten Phasen des Softwareprojekts. Vor der Weiterverarbeitung der ermittelten und dokumentierten Anforderungen muss jedoch deren Qualität gesichert werden, da sich Fehler aus Anforderungsdokumenten über alle nachfolgenden Aktivitäten fortpflanzen.

Im Vorfeld der Prüfung ist festzulegen, nach welchen Kriterien genau geprüft werden soll. Mithilfe der Qualitätsaspekte Inhalt, Dokumentation und Abgestimmtheit wird die Menge der Prüfkriterien strukturiert, sodass man bei der Auswahl der Prüfkriterien zuerst die relevanten Qualitätsaspekte identifiziert. Anschließend werden aus der Menge der Prüfkriterien eines Qualitätsaspekts die relevanten Kriterien ausgewählt. Danach wählt der verantwortliche Requirements Engineer aus der Menge der Prüftechniken die aus, die für die jeweilige Situation am besten geeignet sind.

Die am häufigsten eingesetzten Prüftechniken sind Reviewtechniken, bei denen die Anforderungen von Menschen durchgelesen und bewertet werden. Die Techniken perspektivenbasiertes Lesen und Checklisten unterstützen bei der Durchführung des Reviews. Falls sich widersprechende Anforderungen identifiziert wurden, müssen diese mit allen relevanten Stakeholdern abgestimmt werden. Dazu wird mit den Mitteln des Konfliktmanagements der Konflikt aufgelöst und gleichzeitig darauf geachtet, dass die Kooperationsbereitschaft der Stakeholder aufrecht erhalten wird.
</details>

---
## 1. Aktivitäten zum Prüfen und Abstimmen von Anforderungen
>Das Ziel der Aktivitäten zum Prüfen und Abstimmen ist die Qualitätsicherung und Freigabe der Anforderungen zur Umsetzung in den nachgelagerten Phasen des Softwareprojekts.

##### Risiken unzureichend geprüfter Anforderungen
- Fehler pflanzen sich über die technische Spezifikation und die Architektur bis hin zum Programmcode fort (*Mehraufwand*).
- Rechtliche Risiken:
	- Zeitverlust -> Vertragsstrafen aufgrund der Nichteinhaltung von Lieferzeiten.
	- Verstoß gegen rechtliche Vorgaben (*z.B. Datenschutzgesetz*) -> strafrechtlichen Konsequenzen.
- Einmal umgesetzte Anforderungen lassen sich nicht ohne Weiteres wieder aus dem System entfernen.

Daher hilft ein etablierter und projektbegleitender Abstimmungsprozess bei der Auswahl
der wichtigsten umzusetzenden Anforderungen. In Prozessmodellen, die eine evolutionäre Entwicklung unterstützen, werden beispielsweise für jeden Zyklus die zu bearbeitenden Anforderungen jeweils neu festgelegt.

##### Kernaktivität „Prüfen und Abstimmen“
1. [**Prüfkriterien festlegen**](#2-prüfkriterien):  
	- Bei der Prüfung von umfangreichen Dokumentationen und/oder unter hohem Zeitdruck können nicht alle Prüfkriterien gleichermaßen berücksichtigt werden. Daher müssen im Vorfeld der Prüfung die relevanten Prüfkriterien bestimmt werden. Welche das im Einzelnen sind, hängt maßgeblich von der Projektsituation, Art und Wichtigkeit der Anforderungen, der verfügbaren Zeit und der dafür eingeplanten Personen ab.
2. [**Prüfprinzipien**](#3-prüfprinzipien) **und** [**Prüftechniken auswählen**](#4-prüftechniken):  
	- Nachdem die relevanten Prüfkriterien und die zur Verfügung stehenden Ressourcen feststeht, werden die zu berücksichtigenden Prüfprinzipien und Prüftechniken ausgewählt.
3. **Prüfung durchführen und Ergebnisse dokumentieren**:  
	- Organisation der benötigten Infrastruktur, die zeitliche Planung aller Beteiligten und ggf. die Koordination von externen Gutachtern. Wichtig bei der Durchführung ist dabei die Konzentration auf die Dokumentation der Prüfungsergebnisse.
	- Die Fehlerbehebung und Überarbeitung der dokumentierten Anforderungen erfolgt nach der Prüfung im Anschluss.
4. [**Abstimmen der Anforderungen**](#5-abstimmen-von-anforderungen)**/**[**Konfliktmanagement**](#aufgaben-des-konfliktmanagements):  
	- Wurden bei der Prüfung in der Menge der dokumentierten Anforderungen widersprüchliche Aussagen identifiziert oder gibt es Widersprüche zwischen Stakeholdern und dokumentierten Anforderungen, dann müssen diese Widersprüche abgestimmt und ggf. mit geeigneten Maßnahmen zum Konfliktmanagement die Konflikte aufgelöst werden.

---
## 2. Prüfkriterien
- Eine vollumfängliche Prüfung von Anforderungen nach allen erdenklichen Kriterien ist in der Praxis nicht möglich, da die Aufwände hierzu in keinem wirtschaftlich vernünftigen Verhältnis zum Nutzen stehen würden.
- Daher gibt es in der Literatur zum Requirements Engineering verschiedene Prüfkriterien, die jeweils gezielt einen Aspekt fokussieren (*z. B. die Unterscheidung der drei Qualitätsaspekte Inhalt, Form und Abgestimmtheit*)
- Mithilfe der Qualitätsaspekte wird die Menge der Prüfkriterien so strukturiert, dass man bei der Auswahl der Prüfkriterien zuerst die relevanten Qualitätsaspekte identifizieren und anschließend aus der Menge der den Qualitätsaspekten zugeordneten Prüfkriterien die jeweils relevanten auswählen kann.

### Prüfkriterien zum Inhalt
>"Sind alle relevanten Anforderungen im erforderlichen Detailgrad
so erfasst, dass sie verstanden werden können?“.

##### Prüfkriterien:
- **Vollständigkeit aller Anforderungen**:  
Hier wird die Gesamtheit der dokumentierten Anforderungen betrachtet.
	- Umfasst die Menge der dokumentierten Anforderungen auch wirklich alle relevanten Anforderungen an das System?
	- Fehlen Anforderungen?
	- Wurden Anforderungen dokumentiert, die nicht relevant sind?
- **Vollständigkeit einzelner Anforderungen**:  
Hierzu wird jede einzelne Anforderung dahingehend untersucht, ob alle relevanten Informationen zur Beschreibung dieser Anforderung vorliegen:
	- Sind alle Informationen zum Verständnis dieser Anforderungen dokumentiert?
- **Verfolgbarkeit**:  
Zu diesem Kriterium wird überprüft, ob zu jeder Anforderung die notwendigen Informationen dokumentiert sind, um eine angemessene Nachverfolgbarkeit zu gewährleisten:
	- Falls es Querverweise auf zusätzliche Dokumente gibt, sind diese eindeutig?
	- Falls es Abhängigkeiten zwischen Anforderungen gibt, sind diese klar erkennbar?
	- Ist klar, wer der Ersteller bzw. die Quelle der Anforderung ist?
- **Adäquatheit (_auch: Korrektheit_) bezüglich der Wünsche der Stakeholder**:  
Hier wird geprüft, ob die dokumentierten Anforderungen auch tatsächlich das wiedergeben, was die Stakeholder gemeint bzw. sich gewünscht haben:
	- Hat das der Stakeholder wirklich so gesagt?
	- Entsprechen die Anforderungen der Intention der Quelle?
- **Widerspruchsfreiheit (_auch: Konsistenz_)**:  
Hierzu wird geprüft, ob es in der Menge der dokumentierten Anforderungen Widersprüche oder Inkonsistenzen gibt:
	- Ist die gegebene Menge an Anforderungen erfüllbar?
	- Schließen sich Anforderungen gegenseitig aus?
	- Widersprechen sich Anforderungen?
- **Keine vorzeitigen Entwurfsentscheidungen**:  
Hier wird geprüft, ob in Anforderungen bereits festgelegt wird, wie die Anforderungen zu erfüllen sind, ohne dass es dazu verbindliche organisatorische oder rechtliche Randbedingungen gibt:
	- Werden bereits Vorschriften zur konkreten Gestaltung des Systems gemacht?
	- Werden zu verwendende Technologien vorgeschrieben? Werden detaillierte Angaben zu internen technischen Abläufen gemacht?
	- Werden technische Einschränkungen oder Bedingungen beschrieben?
- **Dokumentation des fachlichen Problems**:  
Hierzu wird geprüft, ob sich zu jeder dokumentierten Anforderung das fachliche Problem identifizieren lässt:
	- Ist zu jeder Anforderungen klar, welches fachliches Problem sie löst bzw. welcher Zweck damit erfüllt wird?
- **Überprüfbarkeit**:  
Hier wird geprüft, ob sich aus der Dokumentation zu der Anforderung die korrespondieren Abnahmekriterien und Testfälle für die Akzeptanztests erstellen lassen. Das erstellte System wird mit Testfällen getestet, die auf Grundlage der dokumentierten Anforderungen erstellt werden. Daher müssen die Anforderungen so formuliert werden, dass nach Abschluss der Implementierung deren Umsetzung überprüft werden kann:
	- Lassen sich konkrete Testfälle ableiten?
	- Ist klar, wie die Anforderungen nach der Umsetzung auf Richtigkeit überprüft werden können?
	- Sind bereits im Abnahmetest zu prüfende Kriterien festgelegt?
- **Notwendigkeit bezüglich des Zielbeitrags**:  
Hierzu wird geprüft, wie relevant bzw. notwendig die Anforderung tatsächlich zur Erreichung des formulierten Ziels ist. Oft werden alle Anforderungen dokumentiert, welche die Stakeholder in dem Moment der Ermittlung wichtig finden. Dabei tragen nicht alle Anforderungen gleichermaßen zur Erreichung des Projektziels bei. Daher wird mit diesem Kriterium gezielt jede Anforderung reflektiert, inwieweit sie tatsächlich einen Beitrag zum Projektziel leistet:
	- Lässt sich der Beitrag der Anforderung zum Projektziel beschreiben?
	- Erfüllt die Anforderung ein wichtiges Bedürfnis der Stakeholder?
	- Wird mit ihr eine Funktion oder Eigenschaft beschrieben, die vorerst nicht so wichtig ist?

### Prüfkriterien zur Dokumentation
>"Wurden die Anforderungen verständlich und unter Einhaltung der Vorschriften zur Dokumentation dokumentiert?“

##### Prüfkriterien:
- **Konformität zur Dokumentenstruktur**:  
Hierzu wird geprüft, ob zum einen die Anforderungen an der richtigen Stelle dokumentiert wurden und ob alle geforderten Elemente der Dokumentenstruktur ausgefüllt wurden:
	- Entspricht die Dokumentenstruktur dem vorgegebenen Template?
	- Sind alle Pflichtkapitel ausgefüllt?
	- Werden insbesondere Qualitätseigenschaften und Randbedingungen an den richtigen Stellen im Dokument beschrieben?
- **Verständlichkeit**:  
Hierzu wird geprüft, ob der formulierte Text vom Leser verstanden werden kann und ob fach- oder projektspezifische Begriffe und Abkürzungen im Glossar erläutert werden:
	- Ist jede Abkürzung im Glossar beschrieben?
	- Ist der Text verständlich formuliert?
	- Sind alle benötigten Kontextinformationen gegeben, damit die Anforderungen richtig verstanden werden können?
- **Eindeutigkeit**:  
Hierzu wird überprüft, ob die Anforderungen genauso verstanden werden können, wie sie tatsächlich gemeint waren oder ob die Dokumentationsform einen unzulässig hohen Interpretationsspielraum zulässt:
	- Ist der Text eindeutig formuliert?
	- Auf welche Weise kann der Text noch verstanden werden?
	- Gibt es Doppeldeutigkeiten in der Verwendung von Begriffen?
	- Sind die richtigen Fachbegriffe verwendet worden?
	- Wurde bei der Dokumentation eine angemessen präzise Ausdrucksweise gewählt?
- **Konformität zu Dokumentationsregeln**:  
Hierbei wird geprüft, ob die Anforderungen entsprechend den aktuellen Modellierungskonventionen oder sonstigen Vorschriften dokumentiert wurden. So gibt es häufig organisationsspezifische Vorgaben, z. B. nach welchem Schema oder in welcher Reihenfolge Anforderungen zu dokumentieren sind oder welche Modellierungssprachen für welchen Zweck eingesetzt werden:
	- Entspricht die Dokumentation den aktuellen Vorschriften?
- **Konformität zu Dokumentationsformat**:  
Hierzu wird überprüft, ob die Anforderungen im vorgeschriebenen Format und unter Einsatz der vorgeschriebenen Anwendungen dokumentiert werden. Die Vorschriften dazu werden häufig organisationsspezifisch festgelegt:
	- Wurden die Anforderungen in dem dazu vorgesehenen Format dokumentiert?

### Prüfkriterien zur Abgestimmtheit
>"Stimmen alle relevanten Stakeholder den dokumentierten Anforderungen zu und sind die bekannten Konflikte gelöst?“  
Insbesondere durch das Erlangen neuer Erkenntnisse im Verlauf des Softwareprozesses können neue Anforderungen identifiziert werden, die sich mit den bereits dokumentierten Anforderungen widersprechen.

##### Prüfkriterien:
- **Abgestimmtheit jeder Anforderung**:  
Zu diesem Kriterium wird geprüft, inwieweit die Menge der Anforderungen nach der Dokumentation bereits mit den Stakeholdern abgestimmt wurde:
	- Wurde die Anforderung bereits mit den relevanten Stakeholdern abgestimmt?
	- Gibt es Anforderungen, die nach der Dokumentation noch nicht mit den Stakeholdern besprochen wurden?
- **Abgestimmtheit nach Änderung von Anforderungen**:
Hierbei wird geprüft, ob nach Änderungen der Dokumentation bereits abgestimmter Anforderungen erneut abgestimmt wurde. Das wird insbesondere dann erforderlich, wenn durch Abhängigkeiten zwischen Anforderungen Änderungen erfolgen, die ursprünglich nicht vorherzusehen waren.
- **Konflikte aufgelöst**:  
Hier wird geprüft, ob alle identifizierten Konflikte zwischen den Stakeholdern beseitigt und die Widersprüche in der Menge der dokumentierten Anforderungen aufgelöst wurden:
	- Sind alle bekannten Konflikte gelöst?
	- Sind alle bekannten Widersprüche behoben?
- **Freigabe erteilt**:  
Vor der Umsetzung der Anforderungen müssen diese explizit freigegeben werden. Im Unterschied zur fachlichen Abgestimmtheit bedeutet die Erteilung der Freigabe den Beschluss, dass auf Basis des aktuellen Stands mit der Umsetzung begonnen werden darf. Unter Umständen kann dies auch der Fall sein, wenn noch nicht alle Qualitätsaspekte erfüllt sind, mit der Umsetzung jedoch trotzdem schon begonnen werden sollte. Andererseits kann die Umsetzung von bereits fertig abgestimmten Anforderungen auch zurückgestellt werden, weil Anforderungen neu priorisiert wurden:
	- Ist die Freigabe zur Umsetzung erteilt?

---
## 3. Prüfprinzipien
>Im Rahmen der Prüfung von Anforderungen können verschiedene Prüfprinzipien unterschieden werden, die zwar selber noch keine Prüftechnik darstellen, bei der Auswahl der
Prüftechniken jedoch helfen.  
Prüftechniken hingegen sind konkrete Verfahren oder Vorgehensweisen, die zur Durchführung der Prüfung eingesetzt bzw. genutzt werden. Eine Prüftechnik kann ein oder mehrere Prüfprinzipien unterstützen.

##### Prinzip 1: Beteiligung der richtigen Stakeholder
- Prüfer soll im Rahmen seiner Prüftätigkeit keine Interessenskonflikte haben.
	- Prüfer und Ersteller sollten verscheiden Personen sein.
	- Qualitativ hochwertigere Anforderung durch Externen-Prüfer (*z.B. fachliche und technische Aspekte in denen das Projektteam nicht sehr erfahren ist*).

##### Prinzip 2: Trennung von Fehlersuche und Fehlerkorrektur
- Mängel werden nur Dokumentiert und erst nach der Prüfung bewertet und konsolidiert.
- Die eingeplante Zeit soll zum Prüfen und nicht zum Beheben genutzt wird.
- Zusammenhänge verschiedener Anforderungen ergeben sich oft später.

##### Prinzip 3: Prüfung aus unterschiedlichen Sichten
- Die dokumentierten Anforderungen soll aus möglichst verschiedenen Gesichtspunkten betrachtet
und analysiert werden.
- Das Konzept wird in der Ermittlungstechnik als auch in der Prüfung (*perspektivenbasierten Lesen*) eingesetzt. 
- *Beispiel*:  
_Beim Prüfen konzentriert sich der Anwender ausschließlich auf die Funktionalität, der Tester ausschließlich auf die Testbarkeit der Anforderungen und ein Vertreter der Anwender nur auf die Aspekte der Benutzbarkeit._

##### Prinzip 4: Geeigneter Wechsel der Dokumentationsform
- Fehler sollen in einem Textdokument gefunden werden, indem aus diesem eine andere Dokumentationsform erstellt wird.
- *Beispiel*:  
*Ein in Textform beschriebener Ablauf zum Datenaustausch zwischen zwei Anwendungen wird als UML-Diagramm modelliert. Dann wird anhand des Diagramms geprüft, ob der Text die Anforderungen richtig wiedergibt.*

##### Prinzip 5: Konstruktion von Entwicklungsartefakten
- Mit der Konstruktion von Entwicklungsartefakten wird direkt die Verwendbarkeit der dokumentierten Anforderungen in den nachgelagerten Phasen des Softwareprozesses geprüft.
- Typische Anwendungsfälle sind die beispielhafte Konstruktion von Entwurfsartefakten oder die Erstellung konkreter Testfälle. Dabei werden Elemente der Anforderungsdokumentation auf die Weise eingesetzt, wie es tatsächlich in späteren Phasen geplant ist.
- Die Konstruktion von Entwicklungsartefakten ist sehr aufwendig und eignet sich daher insbesondere nur bei sehr risikoreichen Anforderungen!

##### Prinzip 6: Wiederholte Prüfung
- Wenn über die Laufzeit des Projekts eine größere Menge an Anpassungen berücksichtigt werden muss.
- Falls Anforderungen in ein anderes als das ursprünglich gedachte System übernommen werden sollen.

---
## 4. Prüftechniken
- Die am häufigsten eingesetzten Prüftechniken sind Reviewtechniken, bei denen die Beteiligten bestimmte Rollen einnehmen und je nach Technik verschiedene Aufgaben haben. Je nach Projektsituation wird der Review mehr oder weniger stark durchorganisiert. 
- Vergleichbar mit der Situation zur Qualitätssicherung von fertigen Softwaresystemen, ist es auch bei der Qualitätssicherung von Anforderungen in der Regel wirtschaftlich nicht sinnvoll, eine hundertprozentige Fehlerfreiheit erzielen zu wollen.
- Daher müssen auch bei der Qualitätssicherung von Anforderungen die zur Verfügung stehenden Ressourcen so eingesetzt werden, dass mit ihnen der größtmögliche Nutzen erzielt wird.

### Stellungnahme
- Der Ablauf folgt dabei keinem bestimmten Schema oder Vorgaben (*ist informal*).
- Die Anforderungsdokumentation wird durch eine an der Dokumentation der Anforderungen unbeteiligten und unabhängigen Person gelesen und hinsichtlich der relevanten Prüfkriterien
bewertet.
- Mängel werden dabei im Dokument markiert und kurz begründet.
- *Beispiel*:  
*Das Anforderungsdokument wird an einen Testingenieur übergeben. Dieser prüft das Dokument auf Testbarkeit der Anforderungen, markiert die Mängel und gibt dem RE Feedback zur Verbesserung.*

### Walkthrough
- Im Unterschied zur Stellungnahme wird das Dokument bei einem Walkthrough von mehreren Personen gelesen und die identifizierten Mängel in der Gruppe diskutiert.
- Bei einem Walkthrough müssen die Rollen Autor, Reviewer und Protokollant vergeben werden.
- **Ablauf**:
	1. Die dokumentierten Anforderungen werden an die Reviewer verteilt und die relevanten Prüfkriterien benannt.
	2. Die Reviewer erhalten ausreichend Zeit, um das Dokument hinsichtlich der genannten Kriterien individuell zu prüfen und ggf. Mängel zu notieren.
	3. Der Autor, alle Reviewer und ein Protokollant treffen sich zur Walkthrough-Sitzung. Dort stellt der Autor schrittweise die zu überprüfenden Anforderungen vor und erläutert diese. Je nach Größe der Gruppe und Disziplin der Teilnehmer kann auch ein Moderator eingebunden werden, der die Sitzung leitet.
	4. Sobald der Autor an den betreffenden Anforderungen angekommen ist, stellen die Reviewer die gefundenen Mängel vor und erläutern und diskutieren diese untereinander. Neben den im Vorfeld identifizierten Mängeln können auch noch während der Sitzung Qualitätsmängel identifiziert werden.
	5. Der Protokollant ist verantwortlich für das Notieren der Mängel, sodass die Autoren im Anschluss an die Sitzung das Dokument bei Bedarf überarbeiten können.
- Ein formale Version des Walkthroughs ist eine Inspektion.

### Perspektivenbasiertes Lesen
- Lässt sich mit einem Review (*z.B. Stellungnahme oder Walkthrough*) kombinieren.
- Abhängig von der aktuellen Projektsituation, werden dem Reviewer Perspektiven zugeteilt, aus der sie die Anforderungen bewerten sollen.
- *Beispiel*:
	- Rollenperspektiven: Einer liest aus der Sicht des Kunden, einer aus der Sicht des Testers und einer aus der Sicht des Softwarearchitekten.
	- Perspektiven anhand der relevanten Prüfkriterien. Falls beispielsweise neun relevante Kriterien identifiziert wurden und drei Reviewer zur Verfügung stehen, können die Kriterien unter den Reviewern aufgeteilt werden. So muss nicht jeder Reviewer alle Aspekte im Auge behalten, sondern kann sich auf die ihm zugeteilten Kriterien konzentrieren.
	- Die Konsolidierung der Fehler erfolgt dann im Anschluss gemeinsam, sodass sich die Reviewer auch untereinander zu den gefundenen Fehlern austauschen können.
	- Mit der Verteilung von solchen konkreten Reviewaufträgen wird eine Parallelisierung erreicht, mit der auch große Anforderungsdokumente effizient unter verschiedenen Gesichtspunkten überprüft werden können.

### Einsatz von Checklisten
- Um bei komplexen Sachverhalten keine Aspekte zu vergessen.
- Bei der Erstellung von Checklisten zur Qualitätssicherung von Anforderungen sind organisationsinterne Richtlinien und Vorgaben, relevante Prüfkriterien, Prüfprinzipien und die Erfahrung aus vergangenen Projekten von Nutzen.
- Bestehende Checklisten können wiederverwendet oder auch projektspezifische Checklisten erstellt werden.
- Insbesondere bei der wiederholten Prüfung von großen Dokumenten lohnt sich die projektspezifische Erstellung von Checklisten. Diese dient dem Reviewer beim Durcharbeiten der Anforderungen als Leitfaden, um den Fokus nicht zu verlieren und sicherzustellen, dass alle relevanten Fragen bzw. Prüfkriterien berücksichtigt wurden.
- Checklisten lassen sich gut mit dem perspektivenbasierten Lesen kombinieren. So können
gezielt für jede Perspektive die relevanten Fragen formuliert und dokumentiert werden.

### Prüfung durch Prototypen
- Eignen sich als Ermittlungs- und Dokumentationstechnik als auch zur Prüfen von Anforderungen. 
- Die Grundidee des Einsatzes von Prototypen bei der Prüfung von Anforderungen besteht darin, durch die Konstruktion von Systemartefakten dem Stakeholder das eigene Verständnis der ermittelten Anforderungen zurückzuspiegeln. Anhand des Prototypen können die Stakeholder dann bewerten, ob ihre gemeinten Anforderungen auch so verstanden wurden, ohne bereits ein vollständiges System konstruieren zu müssen.
- Durch die relativ einfache Änderbarkeit von Prototypen können Prüfung, Abstimmung und Überarbeitung in mehreren Zyklen durchgeführt werden.

---
## 5. Abstimmen von Anforderungen
>Falls sich widersprechende Anforderungen identifiziert wurden und diese nicht einfach behoben werden können, liegt eine Konfliktsituation vor. Mit den Aktivitäten zur Abstimmung von Anforderungen soll zum einen die Erreichung eines gemeinsamen und übereinstimmenden Verständnisses der Menge der Anforderungen unter den Stakeholdern erreicht werden. Zum anderen müssen aber auch Entscheidungen getroffen werden, welche Anforderungen tatsächlich umgesetzt werden sollen. Dabei soll mit den Mitteln des Konfliktmanagements der Konflikt aufgelöst und gleichzeitig die Kooperationsbereitschaft der Stakeholder aufrecht erhalten werden. 

##### Aufgaben des Konfliktmanagements:
1. Konfliktidentifikation,
2. Bestimmung des Konflikttyps,
3. Konfliktauflösung sowie
4. Dokumentation der Konfliktauflösung.

### Konfliktidentifikation
- Die Identifikation von Konflikten bei der Ermittlung erfordert eine hohe Aufmerksamkeit
und Sensibilität des verantwortlichen Requirements Engineer.
- Konflikte im Requirements Engineering können grundsätzlich zu jeder Zeit erkannt werden (*während der Ermittlung, Dokumentation und Prüfung von Anforderungen*).
- Widersprüchliche fachliche Anforderungen sind häufig nicht offensichtlich als solche zu erkennen. Die technischen Zusammenhänge und Abhängigkeiten kennt unter Umständen nur der Softwarearchitekt. Daher ist es empfehlenswert, bei der Analyse von Anforderungen auf Widersprüche auch den Softwarearchitekten miteinzubeziehen.

### Bestimmung des Konflikttyps
- Häufig trägt in der Praxis ein Konflikt die Merkmale mehrerer Konflikttypen.

##### Konflikttypen:
- **Sachkonflikt**:  
Typisch für einen Sachkonflikt ist das Vorliegen von falscher oder mangelnder Information bzw. eine unterschiedliche Interpretation durch die Stakeholder.
	- *Beispiel*:  
	*Ein Stakeholder stuft eine automatische Vervollständigung der Adresse als überflüssig ein, weil ihm Hintergrundinformationen zum konkreten Anwendungsfall fehlen.*
- **Interessenkonflikt**:  
Haben Stakeholder unterschiedliche Interessen oder unterschiedliche Ziele bezüglich des Systems oder des Softwareprojekts, liegt ein Interessenkonflikt vor.
	- *Beispiel*:  
	*Während einige Stakeholder befürchten, dass mit dem zu bauenden System der eigene Arbeitsplatz wegfällt, wünschen sich andere Stakeholder eine schnellere Bearbeitung durch die Unterstützung von IT-Systemen.*
- **Wertekonflikt**:  
Ein Wertekonflikt ist durch individuelle Ideale und kulturelle Unterschiede gekennzeichnet.
	- *Beispiel*:  
	*Ein Stakeholder beharrt auf den Einsatz eines ganz bestimmten Betriebssystems, weil er es gut kennt und für das Beste hält.*
- **Beziehungskonflikt**:  
Ein Beziehungskonflikt besteht, wenn Stakeholder untereinander persönliche Konflikte haben, die nicht unmittelbar mit dem System zusammenhängen, sich jedoch in der Art der Kommunikation äußern. Typische Merkmale sind eine schlechte Kommunikation, Missachtung, Beleidigungen und starke Emotionen.
	- *Beispiel*:  
	*Zwei Stakeholder, die privat zerstritten sind, tragen ihren Konflikt durch ihr Verhalten mit in das Projekt hinein.*
- **Strukturkonflikt**:  
Ein Strukturkonflikt liegt vor, wenn die Konfliktparteien unterschiedliche Macht bzw. Entscheidungsbefugnisse haben.
	- *Beispiel*:  
	*Der Vorgesetzte entscheidet über Anforderungen, ohne Rücksicht auf die Bedürfnisse und Wünsche der Mitarbeiter zu nehmen.*

### Konfliktauflösung
- Eine wesentliche Herausforderung bei der Konfliktauflösung ist die Erhaltung der Kooperationsbereitschaft der vom Konflikt betroffenen Stakeholder. Daher ist es in jedem Fall wichtig, alle relevanten Stakeholder bei der Lösung miteinzubeziehen, nicht zuletzt, um eine Akzeptanz der erreichten Lösung bei allen Beteiligten zu erreichen.

##### Lösungsstrategien:
- **Einigung**:  
Der Konflikt wird durch den Austausch von Informationen, Argumenten und deren Diskussion gelöst. Die Konfliktparteien einigen sich auf eine Lösung und beschreiben diese.
- **Abstimmung**:  
Alle relevanten Stakeholder stimmen ab, und es wird die Lösung umgesetzt, welche die vorher festgelegte erforderliche Stimmenanzahl erhält.
- **Ober-sticht-Unter**:  
Die Konfliktpartei mit der stärkeren Macht bzw. der höheren Autorität entscheidet.
- **Pro-Contra-Liste**:  
Zu den widersprüchlichen Anforderungen werden jeweils deren Vor und Nachteile untersucht und gegenübergestellt.
- **Werteorientierte Analyse**:  
Zu jeder der widersprüchlichen Positionen wird ermittelt, welcher Wert durch deren Umsetzung geschaffen wird. Anschließend wird diejenige verwirklicht, deren Umsetzung den größten Wert für das Unternehmen bringt.
- **Zurückstellen der Lösung**:  
Diese Strategie löst den Konflikt nicht, sondern verschiebt die Lösung auf einen späteren Zeitpunkt. Der Ansatz ist sinnvoll, wenn abzusehen ist, dass zukünftig noch ein deutlicher Erkenntnisgewinn erfolgt, der eine einfache Lösung des Konflikts ermöglicht. Außerdem kann mit der Zurückstufung von Konflikten zu unwichtigen Anforderungen verhindert werden, dass sich das Projektteam zu lange an unbedeutenden Kleinigkeiten aufhält.

### Dokumentation der Konfliktauflösung
- Der verantwortliche Requirements Engineer muss im Anschluss an die Konfliktauflösung darauf achten, dass der Konflikt, dessen Lösung und das Vorgehen zur Lösungsfindung geeignet dokumentiert werden. Nur so kann zum einen verhindert werden, dass der gleiche Konflikt später im Projektverlauf wieder auftaucht und dann noch einmal gelöst werden muss. 
- Falls der Konflikt aber doch wieder entsteht, kann er mit dem Verweis auf die
bereits gefundene Lösung schnell wieder beendet werden.
- Zum anderen kann sich zu einem späteren Zeitpunkt herausstellen, dass die gefundene Lösung nicht geeignet ist. Anhand der Dokumentation kann in diesem Fall die Entscheidungsfindung nachvollzogen und bei der Erarbeitung einer anderen Lösung berücksichtigt werden.
