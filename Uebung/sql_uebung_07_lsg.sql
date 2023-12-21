-- SQL Übungsblatt 7 Lösungen

-- Aufgabe 1)
-- a)
SELECT * FROM orders, customers;
-- b)
SELECT * FROM orders, customers WHERE orders.customer_id = customers.id;
-- c)
SELECT orders.*, customers.company, customers.first_name, customers.last_name
    FROM orders, customers WHERE orders.customer_id = customers.id;
    
-- Aufgabe 2)
SELECT customers.id, last_name,city, order_date, ship_name,ship_state_province
    FROM customers, orders WHERE orders.customer_id = customers.id;
    
-- Aufgabe 3)
-- a)
SELECT customers.last_name, customers.first_name, customers.company,
    customers.state_province FROM orders, customers
    WHERE orders.customer_id = customers.id AND orders.id = 36;
    
-- b)
SELECT orders.id, orders.order_date, orders.shipping_fee,
    customers.last_name, customers.first_name FROM orders, customers
    WHERE customers.id = orders.customer_id AND 
    ((customers.last_name = 'Eggerer' AND customers.first_name = 'Alexander')
    OR (customers.last_name = 'Mortensen' AND customers.first_name = 'Sven'));
    
-- Aufgabe 4)
SELECT employees.last_name, orders.id, customers.last_name,
    customers.first_name FROM employees, orders, customers
    WHERE employees.id = orders.employee_id
    AND orders.customer_id = customers.id;
    
-- Aufgabe 5)
SELECT products.id, products.product_name, products.product_code,
    products.list_price, suppliers.company, suppliers.last_name
    FROM products, suppliers WHERE products.supplier_ids NOT LIKE '%;%'
    AND products.supplier_ids = suppliers.id;

-- Aufgabe 6)
SELECT purchase_orders.id, purchase_orders.submitted_date,
    purchase_order_details.quantity, purchase_order_details.unit_cost,
    (quantity * unit_cost), purchase_order_status.status 
    FROM purchase_orders, purchase_order_details, purchase_order_status
    WHERE purchase_orders.id = purchase_order_details.purchase_order_id
    AND purchase_orders.status_id = purchase_order_status.id;