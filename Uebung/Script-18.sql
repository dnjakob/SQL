USE northwind;

-- Aufgabe 1a.)

SELECT id AS 'Bestellnummer', customer_id AS 'Kundennummer', 
	order_date AS 'Bestelldatum', 
	shipping_fee AS 'Versandkosten' FROM orders;
	
-- Aufgabe 1b.)

SELECT id AS 'ID', customer_id AS 'BenutzerID', 
	order_date AS 'Bestellungsdatum', 
	shipping_fee AS 'Versandkosten' FROM orders
		WHERE shipping_fee BETWEEN 10 AND 50;
		
-- Aufgabe 2a.)
	
