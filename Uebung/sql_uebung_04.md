# SQL INFO2 Übungsblatt 4

Wie in einem vorangegangenen Aufgabenblatt verwenden wir wieder eine Kopie
unserer Wein-Tabelle 'cellar':

CREATE TABLE cellar_copy2 LIKE cellar;
INSERT INTO cellar_copy2 SELECT * FROM cellar;

## Aufgabe 1)
Wähle aus der Tabelle den Weinnamen, Flaschenanzahl und Jahrgang von den Weinen
aus, bei denen mehr als 3 Flaschen vorhanden sind **und** die älter als Jahrgang
'80 sind.

## Aufgabe 2)
Lasse die gesamten Datensätze anzeigen, bei denen ein Kommentar vorhanden ist!
Es ist evtl. etwas "Probiererei" nötig.

## Aufgabe 3)
Die Weine des Produzenten 'Buena Vista' werden neu angeliefert. Füge zu jeder
Sorte dieses Produzenten 6 Flaschen zum Bestand hinzu.

## Aufgabe 4)
Ganzzahlige Division: Wie schon besprochen soll bei Divisionen mit ganzen Zahlen
auch eine ganze Zahl (ohne Rest, ohne Nachkommastellen!) herauskommen. Ähnlich
wie bei einer Aufgabe aus dem __Aufgabenblatt 2__ werden nun die Weine des
Produzenten 'Buena Vista' zur Hälfte abverkauft. Trage den neuen Bestand ein und
beachte, dass "halbe" Flaschen in unserem Weinlager nicht auftauchen sollen
(runde also immer ab!).
Dazu gibt es in MariaDB/MySQL den DIV-Operator, der ganzzahlige Divisionen
ermöglicht. Achtung: In anderen SQL-Dialekten kann ggf. auch einfach der "/"-
Operator verwendet werden, wenn Dividend und Divisor beides Integer sind!

## Aufgabe 5)
Ein Kunde will Weine der Jahrgänge '79, '80 und '81 (jeweils 1 Flasche) kaufen.
Trage die neuen Bestände ein und lasse sie dir auch anzeigen!

## Aufgabe 6)
Nun wollen wir ID (__'bin'__), Name und Produzenten der Weine anzeigen von A bis
M (Weinnamen!). Etwas Testen und "um-die-Ecke-denken" ist hier wiederum nötig!

## Aufgabe 7)
Alle Weine, die **keinen** Kommentar eingetragen haben, sollen nun vollständig
angezeigt werden (Dies ist komplementär zu __Aufgabe 2)__).
