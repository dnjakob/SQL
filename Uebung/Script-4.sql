-- Aufgabe 1.)

USE SQLInfo;

CREATE TABLE cellar_copy2 LIKE cellar;
INSERT INTO cellar_copy2 SELECT * FROM cellar;

SELECT wine, bottles, jahr FROM cellar_copy2
	WHERE bottles > 3 AND jahr < 80;
	
-- Aufgabe 2.)

SELECT * FROM cellar_copy2 WHERE comments IS NOT NULL;
SELECT * FROM cellar_copy2 WHERE NOT (NULLIF(comments, ''));

-- Aufgabe 3.)

UPDATE cellar_copy2 SET bottles = bottles + 6 WHERE producer = 'Buena Vista';
SELECT * FROM cellar_copy2;

-- Aufgabe 4.)

