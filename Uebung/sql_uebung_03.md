# SQL INFO2 Übungsblatt 3

## Aufgabe 1)
Es soll eine Tabelle angelegt werden mit Schulnoten der zugehörigen Schüler.
Die Tabelle soll den Namen __'schulnoten'__ erhalten und folgendermaßen
aufgebaut sein:

id (NOT NULL)  vorname  name  mathe  physik  deutsch  englisch  geschichte

Die Noten-Spalten sollen "Komma-Noten", also Noten mit **einer**
Nachkomma-Stelle enthalten (also z.B. 1.7; 3.5 usw.)

## Aufgabe 2)
Nun soll die Tabelle befüllt werden. Allerdings sind einige Noten noch nicht
vorhanden. Die vorläufigen, unvollständigen Datensätze lauten:

1001  Jerry    Lewis        mathe: 2.5 physik: 2.9 englisch: 3.1
1002  Heinz    Erhardt      physik: 1.5 deutsch: 1.3 geschichte: 3.2
1003  Otto     Waalkees     mathe: 1.0 physik: 2.2 deutsch: 4.1 englisch: 3.5
1004  Michael  Mittermaier  mathe: 2.9 englisch: 2.4 geschichte: 4.4
1005  Johnny   Controlletti physik: 4.6 deutsch: 3.5 englisch: 3.3

## Aufgabe 3)
Jetzt soll eine View erstellt werden, die zunächst nur die Noten in Mathe und
Physik anzeigt. Dabei soll erkennbar sein, wem in den beiden Fächern noch Noten
fehlen.

## Aufgabe 4)
Neue Noten wurden gemacht:

1001  deutsch: 4.8 geschichte: 2.2
1002  mathe: 2.4 englisch: 3.4
1003  geschichte: 4.7
1004  physik: 3.6 deutsch: 1.2
1005  mathe: 4.1 geschichte: 2.1

Trage die Noten in der Tabelle nach! Lasse dir jetzt die View aus __Aufgabe 3)__
nochmals anzeigen und überprüfe, ob die Mathe/Physik - Noten jetzt vollständig
erfasst sind.

## Aufgabe 5)
Erstelle eine neue View, die die Schüler anzeigt, die in einem Fach durchfallen
würden - d.h. Noten schlechter als 4.5 haben!
