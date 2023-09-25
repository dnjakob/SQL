# SQL INFO2 Übungsblatt 1

## Aufgabe 1)

### a)
Erstelle in der SQL-Installation eine Datenbank mit dem Namen 'SQLInfo'
Bedenke: Bei mißlungenen Versuchen können eventuell fehlerhaft erstellte
Datenbanken mit **'DROP DATABASE'** wieder gelöscht werden!

### b)
Erstelle nun eine Tabelle in dieser DB mit dem Namen 'Lehrer' mit folgenden
Spaltendefinitionen:

    name    CHAR(20)
    vorname CHAR(20)
    lehr_nr INTEGER
    fach    CHAR(20)
    jahr    SMALLINT

Speichere diesen Befehl in einer .sql - Datei ab!

## Aufgabe 2)

### a)
Trage nun in die Tabelle einige Datensätze ein! Hänge die entsprechenden
SQL-Befehle an die unter **1b)** erstellte .sql - Datei an und speichere
wiederum alles für spätere Zwecke ab!

    name          vorname      lehr_nr      fach        jahr
    Controlletti  Johnny       100001       Physik      2011
    Doria         Andrea       100002       BWL         2010
    Ratlos        Rudi         100003       Chemie      2012
    Mueller       Lieschen     100004       Biologie    2013
    Mueller       Sabine       100005       Mathematik  2009

Anmerkung: Umlaute werden noch aus Kompatibilitätsgründen vermieden

### b)
Lasse dir die ganze Tabelle nun erst einmal anzeigen (mit **'SELECT * ...'**)

## Aufgabe 3)

### a)
Ändere jetzt das Fach der beiden Lehrerinnen mit Namen 'Mueller' in 'BWL'! Lasse
dir auch nochmal die Tabelle zur Überprüfung anzeigen!

### b)
Lösche den Datensatz des Chemielehrers! Wiederum: Tabelle zur Überprüfung
anzeigen lassen!

### c)
Achtung: Damit nichts verloren geht, erst vergewissern, dass man die
Tabellenstruktur und - Daten abgespeichert hat, wie in Aufgaben 1 und 2
gefordert!
Lösche nun die gesamte Tabelle 'Lehrer'!
Stelle sie dann anschließend wieder her mit der bei **1b)** und **2a)**
abgespeicherten .sql - Datei!

## Aufgabe 4)

Mit diesem Wissen können wir nun die 'cellar' - Tabelle, die als Blatt
ausgeteilt wurde, in unserer Datenbank erstellen und die Daten eintragen. Mache
das!
