SQL Kurzarbeit I - Daniel Jakob Info 2

USE SQLInfo;

-- Aufgabe 1.)

CREATE TABLE karitOrg (reg_nr SMALLINT NOT NULL, name TINYTEXT, eingetr_verein BOOLEAN, typ TINYTEXT, gruendungs_jahr SMALLINT, kontostand_EUR DECIMAL(10,2));

INSERT INTO karitOrg VALUES (4001, 'Baumschmuser', TRUE, 'Schutz von gefährdeten Pflanzen', 1962, 15296392.34);
INSERT INTO karitOrg VALUES (4002, 'Club zur Erhaltung des wilden Zwergkaninchens', FALSE, 'Schutz vor Zwergkaninchen und anderer Kleintierspezies', 2003, 863621.03);
INSERT INTO karitOrg VALUES (4003, 'Green Goblins', FALSE, 'Militante Kämpfer für den Anarcho-Primitivismus', 2011, 74.62);
INSERT INTO karitOrg VALUES (4004, 'Sehr graue Wölfe', TRUE, 'Unterstützung des würdigen Älter-werdens', 1972, 62268112.97);
INSERT INTO karitOrg VALUES (4005, 'Eulen Spiegel', TRUE, 'Versorgung und Aufheiterung kranker Kinder', 1988, 826276.88);

-- Aufgabe 2.)

-- a.)

INSERT INTO karitOrg VALUES (4006, 'Bonsai Boys', TRUE, 'Aufzucht und Pflege japanischer Bonsai-Bäume', 1986, 122932.12);

-- b.)

INSERT INTO karitOrg (reg_nr, name, typ, kontostand_EUR)
	VALUES (4007, '501ste Legion', 'Ausrüstung und Reenactment der Taktiken imperialer Sturmtruppen', 2367226.01);

-- Aufgabe 3.)

CREATE VIEW Kontostaende
	AS SELECT reg_nr, name, kontostand_EUR
		FROM karitOrg;

-- Aufgabe 4.)
	
-- a.)
	
UPDATE karitOrg SET eingetr_verein = FALSE, gruendungs_jahr = 1995 WHERE reg_nr = 4007;

-- b.)

UPDATE karitOrg SET kontostand_EUR = kontostand_EUR - 1000 WHERE reg_nr = 4001 OR reg_nr = 4004;

-- Aufgabe 5.)

CREATE VIEW Zuschuss
	AS SELECT reg_nr, name, gruendungs_jahr, kontostand_EUR FROM karitOrg
		WHERE gruendungs_jahr < 1990 AND kontostand_EUR < 1000000;



