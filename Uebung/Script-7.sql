-- Aufgabe 1.)

USE Northwind;

SELECT orders.id, employee_id, customer_id, customers.id, order_date, 
	shipped_date, company, last_name, first_name FROM orders, customers;
	
SELECT orders.id, employee_id, customer_id, customers.id, order_date, 
	shipped_date, company, last_name, first_name FROM orders, customers 
		WHERE customer_id = customers.id;
		
SELECT orders.id, employee_id, order_date, 
	shipped_date, orders.customer_id, company, last_name, first_name FROM orders, customers 
		WHERE orders.customer_id = customers.id;
		
-- Aufgabe 2.)
	
SELECT customers.id, customers.last_name, customers.city, orders.order_date, 
	orders.ship_name, orders.ship_state_province FROM customers, orders 
		WHERE customers.id = orders.customer_id
			ORDER BY customers.id ASC;
			
-- Aufgabe 3.)
		
-- a.)

SELECT orders.id, customers.last_name, customers.first_name, 
	customers.company, customers.state_province FROM orders, customers 
		WHERE orders.id = 36 AND orders.customer_id = customers.id;

-- b.)
	
SELECT orders.id, orders.order_date, orders.shipping_fee, 
	customers.last_name, customers.first_name FROM orders, customers 
		WHERE (orders.customer_id = customers.id) AND (customers.last_name = "Mortensen" 
			OR customers.last_name = "Eggerer");