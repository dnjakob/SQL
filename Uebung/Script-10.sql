USE northwind;

-- Aufgabe 1.)
SELECT customer_id, employee_id, order_date, product_name, list_price,
	quantity_per_unit, category FROM orders, products, order_details 
	WHERE order_details.order_id = orders.id AND order_details.product_id 
	= products.id;
	
-- Aufgabe 2.)

-- a. + b.)
SELECT customers.company, customers.last_name, customers.city, 
	customers.state_province, customers.business_phone, COUNT(orders.customer_id) 
	FROM customers, orders WHERE customers.id = orders.customer_id 
	GROUP BY orders.customer_id HAVING COUNT(orders.customer_id) >= 5 
	ORDER BY COUNT(orders.customer_id) DESC;
	
-- Aufgabe 3.)
SELECT purchase_orders.id, purchase_orders.submitted_date, 
	suppliers.company, suppliers.last_name, employees.job_title, 
	employees.last_name FROM purchase_orders, suppliers, employees 
	WHERE purchase_orders.supplier_id = supplier_id 
	AND purchase_orders.created_by = employees.id;

-- Aufgabe 4.)
SELECT COUNT(orders.ship_city), orders.ship_city FROM orders
GROUP BY orders.ship_city HAVING COUNT(orders.ship_city) > 1;

-- orders-Tabelle "Los Angelas"

SELECT AVG(shipping_fee), MAX(shipping_fee), MIN(shipping_fee), ship_city,
	COUNT(ship_city) AS 'Anzahl Lieferungen' FROM orders GROUP BY ship_city
	HAVING COUNT(ship_city) > 2 ORDER BY COUNT(ship_city) DESC;



