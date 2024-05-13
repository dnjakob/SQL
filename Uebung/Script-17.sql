DELIMITER |
CREATE PROCEDURE b15_1(IN startyear INT, IN endyear INT)
BEGIN
	
	SELECT CD_Albums.CD_ID, CD_Albums.Title, CD_Artist.Name,
		CD_Albums.Release_Year FROM CD_Albums INNER JOIN CD_Artist
		ON CD_Albums.Interpret_ID = CD_Artist.Interpret_ID AND 
		(CD_Albums.Release_Year BETWEEN startyear AND endyear);
	
END | 
DELIMITER ;

CALL b15_1(1990, 2000);

DELIMITER |
CREATE PROCEDURE b15_2()
BEGIN
	DECLARE num_songs INT;
	DECLARE num_albums INT;
	DECLARE durchschnitt FLOAT;

	SELECT COUNT(CD_Albums.Title) INTO num_albums FROM CD_Albums;
	SELECT COUNT(CD_Songs.Title) INTO num_songs FROM CD_Songs;
	
	SET durchschnitt = CAST(num_songs AS FLOAT)
	  / CAST(num_albums AS FLOAT);
	SET durchschnitt = ROUND(durchschnitt, 2);

	SELECT CONCAT('Die ', num_songs, ' Tracks sind auf ', num_albums,
		' Alben verteilt. Dies ergibt einen Schnitt von ', durchschnitt, 
		' Songs pro Album!');

END |
DELIMITER ;

CALL b15_2;

DELIMITER |
CREATE PROCEDURE b15_3()
BEGIN
	DECLARE artist_id INT;
	DECLARE artist_name VARCHAR(50);
	DECLARE albcount INT;
	DECLARE loop_finished INT DEFAULT 0;	
	
	DECLARE cur_artists CURSOR FOR
	  SELECT Interpret_ID, Name FROM CD_Artist;
	DECLARE CONTINUE HANDLER FOR NOT FOUND
	  SET loop_finished = 1;
	 
	OPEN cur_artists;

	getArtists: LOOP
	  FETCH cur_artists INTO artist_id, artist_name;
	 
	  SELECT COUNT(CD_ID) INTO albcount FROM cd_albums 
	    WHERE Interpret_ID = artist_id;
	   
	  IF (loop_finished = 1) THEN
	    LEAVE getArtists;
	  END IF;
	 
	  IF (albcount >= 2) THEN
	  	SELECT artist_id AS 'Art.ID', artist_name AS 'Interpret', albcount
	  	  AS 'Anzahl der Alben';
	  END IF;
		
	END LOOP;

	CLOSE cur_artists;

END |
DELIMITER ;

CALL b15_3;

CREATE TABLE CD_Del_Backup (DelID INT NOT NULL AUTO_INCREMENT,
  DelTime DATETIME DEFAULT CURRENT_TIMESTAMP, B_CD_ID INT,
  B_Title VARCHAR(50), B_Interpret_ID INT, B_Release_Year INT, 
  PRIMARY KEY (DelID)) AUTO_INCREMENT = 1001;
 
DELIMITER |
CREATE TRIGGER b15_4 BEFORE DELETE ON CD_Albums
FOR EACH ROW
BEGIN

	INSERT INTO CD_Del_Backup (B_CD_ID, B_Title, B_Interpret_ID,
	  B_Release_Year) VALUES (OLD.CD_ID, OLD.Title, OLD.Interpret_ID,
	  OLD.Release_Year);
	
END |
DELIMITER ;













