-- Aufgabe 1.)

DELIMITER |
CREATE FUNCTION bl14_01 (c_code VARCHAR(3))
RETURNS DECIMAL (3,1)
DETERMINISTIC
BEGIN
	DECLARE avg_lang DECIMAL(3,1);
	SELECT AVG(Percentage) INTO avg_lang FROM countrylanguage 
		WHERE CountryCode = c_code;	
	RETURN avg_lang;
END |
DELIMITER ;

SELECT * FROM countrylanguage WHERE Percentage < bl14_01 ('ABW')
	AND CountryCode = 'ABW';
	
	
-- Aufgabe 2.)
	
DELIMITER |
CREATE FUNCTION bl14_02 (c_code VARCHAR(3))
RETURNS VARCHAR(6)
DETERMINISTIC
BEGIN
	DECLARE sur_area INT;
	DECLARE sur_result VARCHAR(6);
	SELECT SurfaceArea INTO sur_area FROM country 
		WHERE CountryCode = c_code;

	CASE sur_area
		WHEN sur_area < 1000 THEN sur_result = "WINZIG";
		WHEN sur_area BETWEEN 1001 AND 250000 THEN sur_result = "KLEIN";
		WHEN sur_area BETWEEN 250001 AND 2500000 THEN sur_result = "MITTEL";
		WHEN sur_area BETWEEN 2500001 AND 10000000 THEN sur_result = "GROSS";
		WHEN sur_area > 10000000 THEN sur_resutl = "RIESIG";
		ELSE BEGIN END;
	END CASE;

END |
DELIMITER ;

SELECT Name, Population, SurfaceArea, bl14_02('ABW') FROM country WHERE Code = 'ABW';



