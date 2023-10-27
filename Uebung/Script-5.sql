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

