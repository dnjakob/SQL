-- Daniel Jakob 2. Klausur - SQL -- Note 2 -MO

-- 1.) LEFT JOIN
-- 1a.)	Beim LEFT JOIN wird der Datensatz aus der erstgenannten Tabelle auf alle Fälle ins Ergebnis dazugepackt,
--		während der Datensatz aus der zweitgenannten Tabelle nur eingetragen wird, falls die ON-Anweisung erfüllt ist
--		Falls nicht erfüllt ist, werden die Spalten leer bleiben.

-- 1b.)
SELECT * FROM werkzeuge LEFT JOIN herstellerdaten ON werkzeuge.Hersteller = herstellerdaten.HID;
		
-- 2.) RIGHT JOIN
-- 2a.) 
SELECT * FROM herstellerdaten RIGHT JOIN werkzeuge ON werkzeuge.Hersteller = herstellerdaten.HID;

-- 2b.) Beim RIGHT JOIN ist es umgekehrt, hier werden die Daten der erstgenannten Tabelle nur durch Erfüllung der 
-- 		ON-Anweisung miteinbezogen. Somit werden die Daten, die die Anweisung nicht erfüllen leer bleiben. Die Daten 
-- 		der zweitgenannten Tabelle werden alle mit ins Ergebnis genommen.


	
-- 3.) SQL-Schlüssel
-- 3a.) Ein Primärschlüssel ist ein eindeutiger Wert, der zur Identifikation von Datensätzen hergenommen wird.
--		Der Primärschlüssel besitzt die Eigenschaften NOT NULL und UNIQUE.
	
-- 3b.)	Während sich ein Primärschlüssel nur aus einer Spalte zusammensetzt, hat der zusammengesetzte Schlüssel 
--		zwei oder mehr Spalten, die zur Identifikation von Datensätze hergenommen werden.
-- 		BEISPIEL: Ein Schüler hat ein eindeutige ID
--				  Eine Note hat ein Fach und einen Schüler zur Identifikation

-- 1), 2) und 3) OK -MO
	
-- 4.) STORED PROCEDURE

DELIMITER |
CREATE PROCEDURE aufgabe4(id INT, bestellmenge INT)
BEGIN
			
	DECLARE artikel_id int;
	DECLARE auf_lager int;
			
	IF((SELECT werkzeuge.id , werkzeuge.Lager INTO artikel_id, auf_Lager FROM werkzeuge
		WHERE id = hersteller.id) = 0) THEN
		-- liefert obiges wirklich einen booleschen Wert? --MO
			SELECT CONCAT("Der ID ist keinem Artikel zugeordnet!");
			-- CONCAT bräucht's hier nicht -MO
	END IF;
		
			
	END |
		
DELIMITER ;

-- fehlt: Check auf Lager < Bestellmenge, ausrechnen des Gesamtpreises + Ausgabe
-- -7 P. -MO
	
-- 5.) TRIGGER
CREATE TABLE werkzeugaenderung (id INT, Name VARCHAR(30),
	Auf_Lager INT, Preis DECIMAL(3,2), Hersteller VARCHAR(5), Changelog_id INT NOT NULL AUTO_INCREMENT,
		PRIMARY KEY(Changelog_id))AUTO_INCREMENT = 101;
		
DELIMITER |
CREATE TRIGGER aufgabe5 BEFORE UPDATE ON werkzeuge
FOR EACH ROW
BEGIN
	INSERT INTO werkzeugaenderung (id, Name, Auf_Lager, Preis, Hersteller) 
			VALUES (OLD.id, OLD.Name, OLD.Lager, OLD.Preis, OLD.Hersteller);
END |
DELIMITER ;

-- so etwas wie ein Zeitstempel fehlt! -2 P. -MO

-- Gesamt: 36 Punkte -MO
	
	
	
	