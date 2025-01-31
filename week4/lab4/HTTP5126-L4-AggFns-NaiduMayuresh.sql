-- LAB 4 AGGREGATE FUNCTIONS
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 6; your query for question 1B should go on line 8...

--  1 
-- A
SELECT MIN(price) FROM stock_item;
-- B
SELECT MAX(inventory) FROM stock_item;
-- C
SELECT AVG(price) FROM stock_item;
-- D
SELECT SUM(inventory) FROM stock_item;

--  2
-- A
SELECT COUNT(employee_id), role FROM employee GROUP BY role;
-- B
SELECT COUNT(item), category AS 'Mammals' from stock_item WHERE NOT category = 'Piscine' GROUP BY category;
-- C
SELECT AVG(price) AS 'Average Price ($)', category FROM stock_item WHERE NOT inventory = 0 GROUP BY category;

--  3
-- A
SELECT SUM(inventory) AS 'In Stock', category AS 'Species' from stock_item GROUP BY category ORDER BY inventory DESC;
-- B
SELECT SUM(inventory), AVG(price), category from stock_item GROUP BY category HAVING SUM(inventory) < 100 AND AVG(price) < 100;

--  4
-- A
SELECT item AS 'Product', CONCAT('$', price) AS 'Price', inventory AS 'Stock Remaining', category AS 'Species', CONCAT('$', price * inventory) AS 'Potential Earnings' from stock_item  ORDER BY price * inventory DESC; 