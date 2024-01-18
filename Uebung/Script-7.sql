-- Aufgabe 1.)

SELECT * FROM customers, employee_privileges, employees, inventory_transaction_types, inventory_transactions, invoices, order_details, order_details_status, orders, orders_status, orders_tax_status, privileges, products, purchase_order_details, purchase_order_status, purchase_orders, sales_reports, shippers, strings, suppliers;

-- Aufgabe 2.)

SELECT employees.last_name, employees.job_title ,purchase_orders.id, purchase_orders.creation_date, purchase_orders_status.status, 
	FROM purchase_order, purchase_order_status, employees WHERE purchase_orders.submitted_by = employees.id AND purchase_orders.status_id = purchase_order_status.id;

SELECT purchase_orders.id, purchase_orders.creation_date,
	purchase_order_status.status, employees.last_name, employees.job_title
	FROM purchase_orders, purchase_order_status, employees
	WHERE purchase_orders.status_id = purchase_order_status.id and
	purchase_orders.submitted_by = employees.id;
	
-- Aufgabe 3.)

SELECT purchase_orders.id, creation_date, company, last_name, job_title
	FROM purchase_orders RIGHT JOIN suppliers
	ON purchase_orders.supplier_id = suppliers.id;	
	
-- Aufgabe 4.)

SELECT inventory_transactions.id, inventory_transactions.transaction_created_date,
	inventory_transaction_types.type_name, products.product_code, 
	products.product_name FROM inventory_transactions, inventory_transaction_types,
	products WHERE inventory_transactions.transaction_type =
	inventory_transaction_types.id AND inventory_transactions.product_id 
	= products.id;
	
-- Aufgabe 5.)

SELECT customers.company, customers.last_name, customers.job_title,
	AVG(orders.shipping_fee) FROM customers, orders 
	WHERE customers.id = orders.customer_id GROUP BY orders.customer_id
	HAVING AVG(orders.shipping_fee) > 50;

