-- Daniel Jakob Note 1 -MO

-- Daniel Jakob SQL-Klausur 24

--                                    1. Aufgabe

-- 1. Schritt - Erstellung der Datenbank "Firma"
CREATE DATABASE Firma;

-- 2. Schritt - Verwendung der Datenbank "Firma"
USE firma;

-- 3. Schritt - Erstellung der Tabelle "Mitarbeiter"
CREATE TABLE Mitarbeiter (id SMALLINT NOT NULL, nachname varchar(25),
	vorname varchar(25), einsatzort varchar(25), gehalt_eur DECIMAL(6,0));
	
-- 4. Schritt - Einsetzen von zwei Datensätzen
INSERT INTO mitarbeiter VALUES (1, 'Winter', 'Margot', 'München', 4200);
INSERT INTO mitarbeiter VALUES (2, 'Roser', 'Michael', 'Hamburg', 5200);

-- ok, 6P. -MO

-- 5. Schritt - Daten anzeigen lassen
SELECT * FROM mitarbeiter;

--                                    2. Aufgabe

-- a.)
SELECT * FROM mitarbeiter ORDER BY einsatzort ASC;

-- b.)
SELECT * FROM mitarbeiter ORDER BY gehalt_eur DESC;

-- c.)
SELECT * FROM mitarbeiter ORDER BY einsatzort ASC, gehalt_eur DESC;

-- ok, 4P. -MO

--                                    3. Aufgabe

-- a.) Dieses Statement gibt alle Datensätze aus, worin der Einsatzort 'Frankfurt' 
--     entspricht und das Gehalt über 5700€ liegt

-- b.) Dieses Statement gibt die Gesamtanzahl der Datensätze in einer neuen Spalte 
--     namens 'Anzahl Datensätze' aus

-- c.) Dieses Statement gibt die Anzahl der verschiedene Einsatzorte in einer neuen 
--     Spalte namens 'Anzahl Einsatzorte' aus

-- d.) Dieses Statement gibt das Durchschnittsgehalt, Maximalgehalt und Minimalgehalt 
--     von allen Datensätzen aus, worin der Einsatzort in München liegt

-- ok, 6P. -MO

--                                    4. Aufgabe

USE northwind;

SELECT customers.id, orders.ship_name, orders.shipped_date, customers.company, 
	customers.last_name, customers.first_name, customers.business_phone 
		FROM customers, orders WHERE orders.customer_id = customers.id 
			AND orders.ship_city = 'Los Angelas';
		
-- ok, 4P. -MO


--                                    5. Aufgabe
	
SELECT employees.id, employees.last_name, employees.first_name, orders.shipping_fee,
	COUNT(orders.customer_id) FROM employees, customers, orders;

-- Gruppierung, Verknüpfung fehlen 2P. -MO
	
	
	
--                                    6. Aufgabe
	
SELECT suppliers.company, suppliers.last_name, purchase_order_details.quantity, 
	purchase_order_details.unit_cost, purchase_order_details.date_received 
		FROM suppliers, purchase_order_details, purchase_orders WHERE purchase_orders.supplier_id = suppliers.id 
			AND purchase_orders.id = purchase_order_details.purchase_order_id;
		
-- ok, 6P. -MO
		
-- Gesamt: 28 Punkte -MO
		


