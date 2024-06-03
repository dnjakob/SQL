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
	
SELECT id AS 'Artikelnr.', product_name AS 'Artikel', standard_cost AS 'Einkaufspreis', 
	list_price AS 'Listenpreis', (list_price - standard_cost) AS 'Gewinn pro Stück' FROM products;

-- Aufgabe 2b.)

SELECT id, product_name, standard_cost, list_price,
	(list_price - standard_cost) AS 'Händlergewinn', 
	reorder_level, target_level,
	(reorder_level * list_price) AS 'Wert Minimalvorrat',
	(target_level * list_price) AS 'Wert Sollvorrat',
	((list_price - standard_cost) * reorder_level) AS 'Gewinn Min.vorrat',
	((list_price - standard_cost) * target_level) AS 'Gewinn Sollvorrat'
	FROM products;

-- Aufgabe 3.)

CREATE VIEW aufg3_view AS
	SELECT id, order_date, ship_name, ship_country_region FROM orders WHERE shipping_fee != 0;
SELECT * FROM aufg3_view;

-- Aufgabe 4a.)

SELECT id, product_id, quantity, unit_price,
	(unit_price * quantity) AS 'Gesamtpreis'
	FROM order_details ORDER BY (unit_price * quantity) DESC;

-- Aufgabe 4b.)

SELECT max(quantity) AS 'Maximale Anzahl', AVG(unit_price) AS 'Durchschnittlicher Stückpreis',
	SUM(quantity * unit_price) AS 'Gesamtlistenpreis' FROM order_details;

-- Aufgabe 4c.)

SELECT order_details.status_id, AVG(unit_price), MAX(unit_price), MIN(unit_price)
	FROM order_details GROUP BY order_details.status_id;	

-- Aufgabe 4d.)

SELECT order_details_status.status_name stat, AVG(unit_price), MAX(unit_price), MIN(unit_price) 
	FROM order_details, order_details_status WHERE order_details.status_id = order_details_status.id GROUP BY stat HAVING  stat != "None";

-- Aufgabe 5a.)

SELECT orders.id, orders.order_date, employees.last_name, employees.first_name, 
	customers.last_name, customers.first_name FROM orders, customers, employees 
	WHERE customers.id = orders.customer_id AND employees.id = orders.employee_id;















