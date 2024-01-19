USE northwind;

-- Aufgabe 1.)
SELECT customer_id, employee_id, order_date, product_name, list_price,
	quantity_per_unit, category FROM orders, products, order_details 
	WHERE order_details.order_id = orders.id AND order_details.product_id 
	= products.id;