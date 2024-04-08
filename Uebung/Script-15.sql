-- Aufgabe 1a.)

DELIMITER |
CREATE PROCEDURE bl13aufg1 (c_code VARCHAR(3))
BEGIN
	DECLARE total_pop INT DEFAULT 0;
	DECLARE c_name VARCHAR(30);

	SELECT SUM(Population) INTO total_pop FROM city
		WHERE CountryCode = c_code;
	SELECT Name INTO c_name FROM country WHERE Code = c_code;

	SELECT CONCAT('Die zusammengerechnete Einwohnerzahl der',
		' Städte im Land ', c_name, ' beträgt ', total_pop) 
		AS 'Ergebnis';

END | 
DELIMITER ;

CALL bl13aufg1 ('AFG');

-- Aufgabe 1b.)

DELIMITER |
CREATE PROCEDURE bl13aufg1b ()
BEGIN
	DECLARE cur_pop INT;
	DECLARE total_pop BIGINT DEFAULT 0;

	DECLARE finished BOOLEAN DEFAULT FALSE;

	DECLARE cursor_pop CURSOR FOR
		SELECT Population FROM country; -- jetzt: Bevölkerung aller Länder!
	DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET finished = TRUE;

	OPEN cursor_pop;
	getPop: LOOP
		FETCH cursor_pop INTO cur_pop;
	
		IF (finished = TRUE) THEN
			LEAVE getPop;
		END IF;
	
		SET total_pop = total_pop + cur_pop;
	
	END LOOP;
	CLOSE cursor_pop;
	

	SELECT CONCAT('Die Gesamtbevölkerung aller (angegebenen)',
		' Länder beträgt ', total_pop) 
		AS 'Ergebnis';

END | 
DELIMITER ;

CALL bl13aufg1b();

-- Aufgabe 2.)

DELIMITER |
CREATE PROCEDURE bl13aufg2(c_code VARCHAR(30))
BEGIN
	DECLARE city_pop INT;
	DECLARE city_name VARCHAR(30);
	DECLARE country_name VARCHAR(30);

	SELECT Name INTO country_name FROM country
		WHERE Code = c_code;
	SELECT MAX(Population) INTO city_pop FROM city 
		WHERE CountryCode = c_code;
	SELECT Name INTO city_name FROM city WHERE CountryCode = c_code
		AND Population = city_pop;
	
	SELECT CONCAT('Die größte Stadt in ', country_name, ' ist ', 
		city_name, ' mit ', city_pop, ' Einwohner.') AS Ergebnis;
END |
DELIMITER ;

CALL bl13aufg2('AFG');

-- Aufgabe 3.)

DELIMITER |
CREATE PROCEDURE bl13aufg3()
BEGIN
	
END |
DELIMITER ;

























