USE sqlinfo;

-- cd_stpr_01

DELIMITER |
CREATE PROCEDURE cd_stpr_01 ()
BEGIN
	SELECT 'Hello, World!';
END |
DELIMITER ;

-- cd_stpr_02

DELIMITER |
CREATE PROCEDURE cd_stpr_02 (Artist VARCHAR(50))
BEGIN
	SELECT CONCAT(Artist, ' wurde angegeben!');
END |
DELIMITER ;

-- cd_stpr_03

DELIMITER |
CREATE PROCEDURE cd_stpr_03 (Artist VARCHAR(50))
BEGIN
	IF((SELECT COUNT(Name) FROM CD_Artist WHERE Name = Artist) = 0) THEN
	  BEGIN
	  	SELECT 'Es ist noch kein Interpret dieses Namens vorhanden!';
	  END;
	ELSE
	  BEGIN
	  	SELECT CONCAT(Artist, ' ist schon in der Tabelle vorhanden!');
	  END;
	END IF;
END |
DELIMITER ;

-- cd_stpr_04

DELIMITER |
CREATE PROCEDURE cd_stpr_04 (Artist VARCHAR(50))
BEGIN
	IF((SELECT COUNT(Name) FROM CD_Artist WHERE Name = Artist) = 0) THEN
	  SELECT 'Es ist noch kein Interpret dieses Namens vorhanden!';
	ELSE
	  SELECT CD_Artist.Interpret_ID, CD_Artist.Name,
	 	CD_Artist.Year_Established, CD_Albums.CD_ID, CD_Albums.Title,
	 	CD_Albums.Release_Year FROM CD_Artist, cd_albums
	 	WHERE CD_Artist.Name = Artist
	 	AND CD_Artist.Interpret_ID = CD_Albums.Interpret_ID;
	END IF;
END |
DELIMITER ;

-- cd_stpr_05

DELIMITER |
CREATE PROCEDURE cd_stpr_05 (Artist VARCHAR(50), founding_year INT)
BEGIN
	DECLARE mx_art_id INT;
	SET mx_art_id = 0;

	IF ((SELECT COUNT(Name) FROM CD_Artist WHERE Name = Artist) = 0) THEN
	BEGIN 
		SELECT MAX(Interpret_ID) + 1 INTO mx_art_id FROM CD_Artist;
		INSERT INTO CD_Artist VALUES (mx_art_id, Artist, founding_year);
	END;
	ELSE
		SELECT 'Dieser Künstler ist schon vorhanden!';
	END IF;
END |
DELIMITER ;

-- cd_stpr_06

DELIMITER |
CREATE PROCEDURE cd_stpr_06 (album_title VARCHAR(50), release_year INT,
	artist_name VARCHAR(50))
main:BEGIN
	DECLARE next_album_id INT;
	DECLARE artist_id INT;

	IF ((SELECT COUNT(Name) FROM CD_Artist WHERE Name = artist_name) = 0) THEN
		SELECT 'Interpret nicht vorhanden! Trage erst einen Interpreten in
		\'CD_Artist\' ein!';
		LEAVE main;
	END IF;

	SELECT Interpret_ID INTO artist_id FROM CD_Artist
		WHERE Name = artist_name;
	
	IF ((SELECT COUNT(TITLE) FROM CD_Albums WHERE Title = album_title) = 0) THEN
		SELECT MAX(CD_ID) + 1 INTO next_album_id FROM CD_Albums;
		INSERT INTO CD_Albums (CD_ID, Title, Interpret_ID, Release_Year)
			VALUES (next_album_id, album_title, artist_id, release_year);
	ELSE
		SELECT 'Es gibt schon ein Album mit diesen Namen!';
	END IF;
END |
DELIMITER ;


