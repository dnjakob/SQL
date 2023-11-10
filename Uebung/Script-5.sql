-- Aufgabe 1.)

USE Northwind;

SELECT * FROM orders ORDER BY customer_id ASC;
SELECT * FROM orders ORDER BY customer_id DESC;

-- Aufgabe 2.)

SELECT SUM(shipping_fee) FROM orders;
SELECT ship_city, SUM(shipping_fee) FROM orders
	WHERE ship_city = 'Las Vegas' OR ship_city = 'Chicago' OR ship_city = 'Milwaukee'
		GROUP BY ship_city;
SELECT SUM(shipping_fee) FROM orders
	WHERE ship_city = 'Las Vegas' OR ship_city = 'Chicago' OR ship_city = 'Milwaukee';
	
-- Aufgabe 3.)

SELECT ship_city, AVG(shipping_fee) FROM orders
	GROUP BY ship_city;
	
SELECT AVG(shipping_fee) FROM orders
	WHERE employee_id = 9;
	
-- Aufgabe 4.)

SELECT MIN(shipping_fee), MAX(shipping_fee) FROM orders;
	
SELECT MIN(shipping_fee), MAX(shipping_fee) FROM orders
	WHERE ship_state_province = "NY";
	
-- Aufgabe 5.)

SELECT COUNT(*) FROM orders;

SELECT COUNT(customer_id) FROM orders;

