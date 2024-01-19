USE northwind;

-- Aufgabe 1.)
-- a.)
SELECT * FROM orders
	WHERE order_date >= "2006-01-01"
	AND order_date < ADDDATE("2006-01-01", INTERVAL 1 MONTH);

-- b.)
SELECT * FROM orders
	WHERE order_date >= "2006-02-01"
	AND order_date < ADDDATE("2006-02-01", INTERVAL 1 QUARTER);
	
-- c.)
SELECT * FROM orders
	WHERE order_date >= "2006-04-01"
	AND order_date < ADDDATE("2006-04-01", INTERVAL 1 WEEK);
	
-- d.)
SELECT id, order_date, shipped_date, DATEDIFF(shipped_date, order_date)
	FROM orders ORDER BY DATEDIFF(shipped_date, order_date) DESC;
	
SELECT id, order_date, shipped_date, (shipped_date - order_date)
	FROM orders ORDER BY (shipped_date - order_date) DESC;
-- Vorsicht mit den Einheiten!

-- e.)
SELECT id, order_date, DATEDIFF(NOW(), order_date) / 365 FROM orders
	WHERE order_date IS NOT NULL ORDER BY DATEDIFF(NOW(), order_date);

-- Aufgabe 2.) 
-- a.) 
SELECT id, MAX(unit_price * quantity) - MIN(unit_price * quantity) 
	FROM order_details WHERE id = 40 OR id = 42;

SELECT ABS(MAX(unit_price * quantity) - MIN(unit_price * quantity))
	AS 'Differenz zweier Gesamtpreise'
	FROM order_details WHERE id = 40 OR id = 42;

-- b.)
SELECT SUM(quantity) FROM order_details;

-- c.)
SELECT id, CEILING(standard_cost * reorder_level),
	FLOOR(standard_cost * reorder_level),
	ROUND(standard_cost * reorder_level)FROM products
	WHERE id BETWEEN 40 AND 80;

-- d.) 
SELECT id, (reorder_level % 2) AS 'Reorder Level Ungerade?' FROM products;

-- e.)
SELECT id, ((target_level * standard_cost) - (reorder_level % standard_cost))
	AS 'Max. Ersparnis' FROM products;






