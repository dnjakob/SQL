USE northwind;

-- Aufgabe 1.)

-- a.)
SELECT SUBSTRING(strings.string_data, -9, 3) FROM strings
	WHERE strings.string_id = 13;
	
-- b.)
SELECT REPLACE(REPLACE(strings.string_data, 'Order', 'ORDER'), 'orders', 'ORDERS') FROM strings;

-- c.)
SELECT LENGTH(strings.string_data) FROM strings;
SELECT CONCAT(string_id, ' ', string_data) FROM strings;

-- d.)
SELECT UPPER(string_data) FROM strings WHERE (string_id % 2) = 1;
SELECT LOWER(string_data) FROM strings WHERE (string_id % 2) = 0;

-- Aufgabe 2.)

-- a.)
SELECT order_details.id, quantity, unit_price, product_code, product_name FROM order_details 
	LEFT JOIN products ON order_details.product_id = products.id;

-- alte Methode
SELECT orders.id, order_date, ship_name, ship_address, company, last_name, 
	first_name FROM orders, customers WHERE orders.customer_id = customers.id;

-- b.)
SELECT orders.id, order_date, ship_name, ship_address, company, last_name, 
	first_name FROM orders INNER JOIN customers ON orders.customer_id = customers.id;

-- c.)
SELECT purchase_orders.id, submitted_date, quantity, unit_cost 
	FROM purchase_orders RIGHT JOIN purchase_order_details ON purchase_orders.id = 
	purchase_order_details.purchase_order_id;

