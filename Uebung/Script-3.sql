-- Aufgabe 1.)

USE SQLInfo;

CREATE TABLE schulnoten (id INT NOT NULL, vorname VARCHAR(20),
	name VARCHAR(25), mathe DECIMAL(2,1), physik DECIMAL(2,1),
	deutsch DECIMAL(2,1), englisch DECIMAL(2,1), geschichte DECIMAL(2,1));

-- Aufgabe 2.)

INSERT INTO schulnoten (id, vorname, name, mathe, physik, englisch)
	VALUES(1001, 'Jerry', 'Lewis', 2.5, 2.9, 3.1);
INSERT INTO schulnoten (id, vorname, name,  physik, deutsch, geschichte)
	VALUES(1002, 'Heinz', 'Erhardt', 1.5, 1.3, 3.2);
INSERT INTO schulnoten (id, vorname, name, mathe, physik, deutsch, englisch)
	VALUES(1003, 'Otto', 'Waalkes', 1.0, 2.2, 4.1, 3.5);
INSERT INTO schulnoten (id, vorname, name, mathe, englisch, geschichte)
	VALUES(1004, 'Michael', 'Mittermaier', 2.9, 2.4, 4.4);
INSERT INTO schulnoten (id, vorname, name, physik, deutsch, englisch)
	VALUES(1005, 'Johnny', 'Controlletti', 4.6, 3.5, 3.3);
SELECT * FROM schulnoten ORDER BY id ASC;

-- Aufgabe 3.)

CREATE VIEW m_ph_sicht AS
SELECT id, name, mathe, physik FROM schulnoten;
SELECT * FROM m_ph_sicht ORDER BY id ASC;

-- oder

CREATE VIEW m_ph_sicht2 AS
SELECT id, name, mathe, physik FROM schulnoten
	WHERE mathe IS NULL OR physik IS NULL;
SELECT * FROM m_ph_sicht2 ORDER BY id ASC;

-- Aufgabe 4.)

UPDATE schulnoten SET deutsch = 4.8, geschichte = 2.2 WHERE id = 1001;
UPDATE schulnoten SET mathe = 2.4, englisch = 3.4 WHERE id = 1002;
UPDATE schulnoten SET geschichte = 4.7 WHERE id = 1003;
UPDATE schulnoten SET physik = 3.6, deutsch = 1.2 WHERE id = 1004;
UPDATE schulnoten SET mathe = 4.1, geschichte = 2.1 WHERE id = 1005;
SELECT * FROM schulnoten ORDER BY id ASC;

-- Aufgabe 5.)

CREATE VIEW durchfallen_1 AS
SELECT * FROM schulnoten
	WHERE mathe > 4.5 OR physik > 4.5 OR deutsch > 4.5 OR englisch > 4.5 OR geschichte > 4.5;
SELECT * FROM durchfallen_1 ORDER BY id ASC;