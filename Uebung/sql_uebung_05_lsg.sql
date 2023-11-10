-- Lösungen zum SQL Übungsblatt 5
-- Wichtig: Zunächst:
USE northwind;

-- Aufgabe 1)
SELECT * FROM orders ORDER BY customer_id; -- ASC
SELECT * FROM orders ORDER BY customer_id DESC;

-- Aufgabe 2)
SELECT SUM(shipping_fee) AS 'Summe Shipping' FROM orders;
SELECT SUM(shipping_fee) AS 'Summe der 3 Städte' FROM orders
    WHERE ship_city = 'Las Vegas' OR ship_city = 'Chicago' OR
    ship_city = 'Milwaukee';
-- fortgeschrittene Lösung mit GROUP BY
SELECT ship_city, SUM(shipping_fee) AS 'Summe pro Stadt' FROM orders
    GROUP BY ship_city;

-- Aufgabe 3)
SELECT AVG(shipping_fee) AS 'Durchschnitt Sh.Fee' FROM orders;
-- oder, mit Runden-Funktion:
SELECT ROUND(AVG(shipping_fee), 2) AS 'Durchschnitt' FROM orders;

SELECT AVG(shipping_fee) AS 'Durchsch. Sh.Fee Empl. 9' FROM orders
    WHERE employee_id = 9;
    
-- Aufgabe 4)
SELECT MAX(shipping_fee) AS 'Maximal', MIN(shipping_fee) AS 'Minimal'
    FROM orders;
SELECT MAX(shipping_fee) AS 'Maximal NY', MIN(shipping_fee) AS 'Minimal NY'
    FROM orders WHERE ship_state_province = 'NY';
    
-- Aufgabe 5)
SELECT COUNT(*) AS 'Anzahl' FROM orders;
SELECT COUNT(customer_id) AS 'Anz. Cust.ID' FROM orders;
