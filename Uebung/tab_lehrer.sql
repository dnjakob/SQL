-- Lehrer-Tabelle für Übungs'blatt' 1
-- anfangs zur Sicherheit:
USE SQLInfo;

-- Tabelle erstellen:
CREATE TABLE IF NOT EXISTS Lehrer (name CHAR(20), vorname CHAR(20),
    lehr_nr INTEGER, fach CHAR(20), jahr SMALLINT);

-- Daten eintragen:
INSERT INTO Lehrer (name, vorname, lehr_nr, fach, jahr) VALUES
               ('Controlletti', 'Johnny', 100001, 'Physik', 2011);
INSERT INTO Lehrer VALUES ('Doria', 'Andrea', 100002, 'BWL', 2010);
INSERT INTO Lehrer VALUES ('Ratlos', 'Rudi', 100003, 'Chemie', 2012);
INSERT INTO Lehrer VALUES ('Mueller', 'Lieschen', 100004, 'Biologie', 2013);
INSERT INTO Lehrer VALUES ('Mueller', 'Sabine', 100005, 'Mathematik', 2009);
