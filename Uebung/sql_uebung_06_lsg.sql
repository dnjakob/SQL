-- Lösungen zum Übungsblatt 6
-- Zunächst wieder:
USE northwind;

-- Aufgabe 1)
CREATE VIEW orders_view AS
    SELECT id, customer_id, shipped_date, ship_name, ship_city,
        ship_state_province FROM orders;

SELECT * FROM orders_view;

-- Aufgabe 2)
-- z.B.:
SELECT * FROM orders_view ORDER BY ship_name;

-- Aufgabe 3)
-- egal, ob orders_view oder ganze Tabelle (orders)
-- a)
SELECT * FROM orders_view WHERE ship_city = 'Denver'
    ORDER BY shipped_date DESC;
-- b)
SELECT * FROM orders_view WHERE ship_city = 'Portland'
    ORDER BY shipped_date DESC;
-- c)
SELECT * FROM orders_view WHERE ship_city = 'Seattle'
    ORDER BY shipped_date DESC;
    
-- Aufgabe 4)
-- a)
SELECT AVG(shipping_fee) AS 'Kosten Chicago' FROM orders
    WHERE ship_city = 'Chicago';
-- b)
SELECT COUNT(*) AS 'Anz.Auftr.', AVG(shipping_fee) AS 'Kosten im Schnitt'
    FROM orders WHERE employee_id = 4;
-- c)
SELECT MAX(shipping_fee) AS Maximalwert, MIN(shipping_fee) AS Minimalwert
    FROM orders;

-- Aufgabe 5)
SELECT ship_city AS 'Stadt', COUNT(ship_city) AS 'Anz.Auftr.',
    SUM(shipping_fee) AS 'Summe Geb.' FROM orders GROUP BY ship_city;

-- Aufgabe 6)
-- a)
SELECT ship_city AS 'Stadt', COUNT(ship_city) AS 'Anz.Auftr.',
    SUM(shipping_fee) AS 'Summe Geb.' FROM orders GROUP BY ship_city
    HAVING COUNT(ship_city) > 2;
-- b)
SELECT ship_city AS 'Stadt', COUNT(ship_city) AS 'Anz.Auftr.',
    SUM(shipping_fee) AS 'Summe Geb.' FROM orders GROUP BY ship_city
    HAVING SUM(shipping_fee) > 50;

