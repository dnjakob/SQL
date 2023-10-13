-- Aufgabe 1.)
use SQLInfo;

CREATE TABLE cellar_copy LIKE cellar;
INSERT cellar_copy SELECT * FROM cellar;


-- Aufgabe 2.)
UPDATE cellar_copy SET bottles = 9 WHERE bottles >= 10;

-- Aufgabe 3.)
UPDATE cellar_copy SET bottles = 7 WHERE ready > 84 AND bottles < 7;

-- Aufgabe 4.)
UPDATE cellar_copy SET producer = 'Terrorwein Inc.' WHERE producer = 'Ch.St.Jean';
ALTER TABLE sqlinfo.cellar_copy MODIFY COLUMN wine varchar(51) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL NULL;
UPDATE cellar_copy SET wine = "Südtir.Schädelsprenger" WHERE wine = 'Fume Blanc';

-- Aufgabe 5.)
UPDATE cellar_copy SET comments = 'vorher Fume Blanc' WHERE wine = 'Südtir.Schädelsprenger';

-- Aufgabe 6.)
UPDATE cellar_copy SET bottles = bottles DIV 2 WHERE producer = 'Robt.Mondavi';

-- Aufgabe 7.)
DELETE FROM cellar_copy WHERE producer = 'Mirassou';

-- Aufgabe 8.)
SELECT jahr AS 'Einlagerung', ready AS 'Reife', ( ready - jahr) AS 'Reifezeit'  FROM cellar_copy;
