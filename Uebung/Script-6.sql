-- Aufgabe 1.)
USE NORTHWIND;

CREATE VIEW orders_view AS
	SELECT id, customer_id, shipped_date, ship_name, ship_city,
		ship_state_province FROM orders;

SELECT * FROM orders_view;
SELECT id, customer_id FROM orders_view;

-- Aufgabe 2.)

SELECT * FROM orders_view
	ORDER BY customer_id ASC;
	
-- Aufgabe 3.)

-- a.), b.) und c.)

SELECT * FROM orders
	WHERE ship_city = "Denver" OR ship_city = "Portland" OR ship_city = "Seattle"
		ORDER BY shipped_date DESC;

-- Aufgabe 4.)

-- a.)
	
SELECT ship_city, AVG(shipping_fee) FROM orders
	WHERE ship_city = "Chicago"
		GROUP BY ship_city;

-- b.)
	
SELECT employee_id, COUNT(employee_id), AVG(shipping_fee) FROM orders
	WHERE employee_id = 4
		GROUP BY employee_id;
	
-- c.) 
	
SELECT MIN(shipping_fee), MAX(shipping_fee) FROM orders;

-- Aufgabe 5.)

SELECT ship_city, COUNT(ship_city), SUM(shipping_fee) FROM orders
	GROUP BY ship_city;

-- Aufgabe 6.)

-- a.)

SELECT ship_city, COUNT(ship_city), SUM(shipping_fee) FROM orders
	GROUP BY ship_city HAVING COUNT(ship_city) > 2;

-- b.) 

SELECT ship_city, COUNT(ship_city), SUM(shipping_fee) FROM orders
	GROUP BY ship_city HAVING SUM(shipping_fee) > 50;
