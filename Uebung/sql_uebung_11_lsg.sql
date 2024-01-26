-- SQL INFO2 Übungsblatt 11

-- Aufgabe 1)
-- a)
SELECT SUBSTRING(strings.string_data, -9, 3) FROM strings WHERE string_id = 13;

-- b)
SELECT REPLACE(strings.string_data, 'Order', 'ORDER') FROM strings;

-- c)
SELECT LENGTH(strings.string_data) AS 'Length Col.', 
    LENGTH(CONCAT(strings.string_id, strings.string_data)) AS 'Length 2 Cols.'
    FROM strings;

-- d)
SELECT UPPER(string_data) FROM strings WHERE strings.string_id % 2 = 0;
SELECT LOWER(string_data) FROM strings WHERE strings.string_id % 2 = 1;

-- Aufgabe 2)
-- a)
SELECT order_details.product_id, order_details.quantity,
    order_details.unit_price, products.product_name,
    products.quantity_per_unit, products.standard_cost, products.list_price
    FROM order_details LEFT JOIN products
    ON order_details.product_id = products.id;
    
-- b)
SELECT orders.customer_id, orders.order_date, orders.ship_city,
    customers.last_name, customers.first_name, customers.company 
    FROM orders INNER JOIN customers ON orders.customer_id = customers.id;
    
-- c)
SELECT purchase_orders.id, purchase_orders.creation_date,
    purchase_orders.taxes, purchase_order_details.quantity,
    purchase_order_details.unit_cost, purchase_order_details.date_received 
    FROM purchase_orders RIGHT JOIN purchase_order_details
    ON purchase_orders.id = purchase_order_details.purchase_order_id;