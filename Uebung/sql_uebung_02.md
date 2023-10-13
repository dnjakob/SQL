# SQL INFO2 Übungsblatt 2

## Aufgabe 1)
Wir wollen mit der im Blatt 1 erstellten 'cellar' - Tabelle üben. Um eine
__Originalversion__ behalten zu können, speichern wir eine (oder mehrere)
Kopie(n) der 'cellar' - Tabelle ab:

CREATE TABLE cellar_copy LIKE cellar;
INSERT cellar_copy SELECT * FROM cellar;

Die folgenden Aufgaben bearbeiten wir nun in den kopierten Tabellen, die wir bei
Fehlern leicht löschen und/oder neu kopieren können. Verwendet also bei allen folgenden Aufgaben die (oder eine) kopierte 'cellar'-Version!

## Aufgabe 2)
Weine, von denen 10 Flaschen und mehr vorhanden sind, sollen soweit
"ausgemistet" werden, bis weniger als 10 Flaschen übrig sind (sprich: 9!).

## Aufgabe 3)
Bei Weinen, die **NACH** '84 gereift sind (Spalte 'ready'), sollen die Bestände
aufgefüllt werden, so dass bei diesen Weinen mindestens 7 Flaschen vorhanden
sind.

## Aufgabe 4)
Die Weinfirma 'Ch.St.Jean' hat sich umbenannt in 'Terrorwein Inc.'. Außerdem hat
man die Produktpalette angepasst und den Wein 'Fume Blanc' umbenannt in 'Südtir.
Schädelsprenger'. Passe die Tabelle an! Achte dabei besonders auf eventuelle
Leerzeichen in den Namen!

## Aufgabe 5)
Die Umbenennung des Weines von __Aufgabe 4)__ soll in den Kommentaren vermerkt
werden (also in etwa "vorher Fume Blanc" etc.).

## Aufgabe 6)
Eine Katastrophe hat den Hersteller 'Robt.Mondavi' heimgesucht. Die Hälfte der
Warenbestände wurden vernichtet! Passe dies in der Tabelle an! Bei ursprünglich
ungeraden Flaschen-anzahlen soll immer abgerundet werden, da keine "halben"
Flaschen im Lager existieren. Tip hierzu: **Ganzzahl-Division**; Dividieren
"ohne Rest"!

## Aufgabe 7)
Die Firma 'Mirassou' ging bankrott und ist nun nicht mehr wichtig für unsere
Tabelle! Lösche diese(n) Datensatz/sätze!

## Aufgabe 8)
Fortgeschrittene Aufgabe (evtl. mit etwas Beratung untereinander am Ende der
Bearbeitungszeit): Lasse dir die Anzahl der Jahre bis zur vollständigen Reifung
der Weine übersichtlich anzeigen! Tip: Die relevanten Spalten sind __'jahr'__
(Jahr der Abfüllung/Einlagerung) und __'ready'__ (Jahr der vollendeten Reifung).
