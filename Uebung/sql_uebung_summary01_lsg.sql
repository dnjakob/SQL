-- Aufgabe 1)
-- a)
SELECT id AS Nummer, customer_id AS KundenID, order_date AS Datum,
    shipping_fee AS Versandkosten FROM orders;
-- b)
SELECT id AS Nummer, customer_id AS KundenID, order_date AS Datum,
    shipping_fee AS Versandkosten FROM orders
    WHERE shipping_fee >= 10 AND shipping_fee <= 50;

-- Aufgabe 2)
-- a)
SELECT id, product_name, standard_cost, list_price,
    (list_price - standard_cost) AS Gewinn FROM products;
-- b)
SELECT id, product_name, (list_price * reorder_level) AS Min_Value,
    (list_price * target_level) AS Target_value,
    ((list_price - standard_cost) * reorder_level) AS Min_Revenue,
    ((list_price - standard_cost) * target_level) AS Target_revenue
    FROM products;

-- Aufgabe 3)
CREATE VIEW aufg3_view AS
    SELECT id, order_date, ship_name, ship_country_region, shipping_fee
    FROM orders WHERE shipping_fee > 0;
SELECT * FROM aufg3_view;

-- Aufgabe 4)
-- a)
SELECT id, product_id, quantity, unit_price, (quantity * unit_price) AS Gesamt
    FROM order_details
    ORDER BY  Gesamt DESC;
-- b)
SELECT MAX(quantity) AS Max_anzahl, AVG(unit_price) AS Schnitt_preis,
    SUM(quantity * unit_price) AS Gesamt_wert FROM order_details;
-- c)
SELECT order_details_status.status_name, AVG(unit_price), MAX(unit_price),
    MIN(unit_price)
    FROM order_details, order_details_status
    WHERE order_details_status.id = order_details.status_id
    GROUP BY order_details_status.status_name;

-- d)
SELECT order_details_status.status_name, AVG(unit_price), MAX(unit_price),
    MIN(unit_price)
    FROM order_details, order_details_status
    WHERE order_details_status.id = order_details.status_id
    GROUP BY order_details_status.status_name
    HAVING order_details_status.status_name != 'None';

-- Aufgabe 5)
-- a)
SELECT orders.id, orders.order_date, customers.first_name, customers.last_name
    FROM orders LEFT JOIN customers ON orders.customer_id = customers.id;

-- b)
-- Die letzten beiden id-Spalten in order_details wurden der Einfachheit halber
-- weggelassen, da in der verknüpften Tabelle auch kein Textfeld auszulesen war.
SELECT order_details.id, orders.ship_name, products.product_name,
    order_details_status.status_name
    FROM order_details, orders, products, order_details_status
    WHERE order_details.order_id = orders.id AND 
    order_details.product_id = products.id AND 
    order_details.status_id = order_details_status.id;

-- alternativ, mit INNER JOIN:
SELECT order_details.id, orders.ship_name, products.product_name,
    order_details_status.status_name FROM order_details INNER JOIN orders
    ON order_details.order_id = orders.id INNER JOIN products
    ON order_details.product_id = products.id INNER JOIN order_details_status 
    ON order_details.status_id = order_details_status.id;

-- Aufgabe 6)
-- Eigentlich auch lösbar mit einer einfachen Abfrage:
SELECT * FROM orders WHERE ship_state_province = 'NY';
-- Aber eine Version mit Unterabfrage funktioniert auch
-- (ist aber eigentlich komplett unnötig):
SELECT * FROM orders
    WHERE id IN (SELECT id FROM orders WHERE ship_state_province = 'NY');

