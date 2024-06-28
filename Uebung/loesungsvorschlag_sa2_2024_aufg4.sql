-- Lösung Schulaufgabe 2/2024, Aufg. 4
DELIMITER |
CREATE PROCEDURE sa2_2024 (ident INT, best_menge INT)
main:BEGIN
    DECLARE ges_preis DECIMAL(6, 2);
    DECLARE art_name VARCHAR(50);
    -- Artikel nicht vorhanden, wenn COUNT hier 0
    IF ((SELECT COUNT(id) FROM werkzeuge WHERE id = ident) = 0) THEN
        SELECT 'Artikel nicht vorhanden!';
        -- Abbruch
        LEAVE main;
    ELSE
        -- verschachtetes IF ->
        -- Bestellmenge zu groß...
        IF ((SELECT Lager FROM werkzeuge WHERE id = ident) < best_menge) THEN 
        
            SELECT 'Bestellmenge größer als Lagerbestand!';
            -- Abbruch
            LEAVE main;
        ELSE
            -- Berechnung des Gesamtpreises und Ausgabe Preis und Name
            SELECT (best_menge * preis), Name INTO ges_preis, art_name
                FROM werkzeuge WHERE id = ident;
            
            SELECT CONCAT('Bestellung OK! ', best_menge, ' Stück ',
                art_name, ' im Wert von ', ges_preis, ' werden geliefert!');
        END IF;
    END IF;
END |
DELIMITER ;
