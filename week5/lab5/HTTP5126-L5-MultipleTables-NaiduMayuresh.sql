--  LAB 5 MULTIPLE TABLES

--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--  1 
-- A 
SELECT * FROM sale WHERE stock_item_id = 1014;
-- B 
SELECT sa.date, st.stock_item_id FROM sale sa INNER JOIN stock_item st ON sa.stock_item_id = st.stock_item_id AND sa.stock_item_id = 1014;
--  2
-- A 
SELECT sa.* FROM sale sa INNER JOIN employee em ON sa.employee_id = em.employee_id AND sa.employee_id = 111;
-- B
SELECT sa.date, em.first_name, em.last_name, sa.stock_item_id FROM sale sa INNER JOIN employee em ON sa.employee_id = em.employee_id AND sa.employee_id = 111;
--  3
-- A
SELECT sa.date, st.name from sale sa INNER JOIN stock_item st ON sa.stock_item_id = st.stock_item_id ORDER BY sa.date ASC LIMIT 5;
-- B
SELECT em.first_name, em.last_name, sa.date, st.name, st.price FROM sale sa INNER JOIN employee em ON sa.employee_id = em.employee_id INNER JOIN stock_item st ON sa.stock_item_id = st.stock_item_id ORDER BY sa.date ASC LIMIT 5;
--  4
-- A
SELECT sa.date, st.name, em.first_name FROM sale sa INNER JOIN stock_item st ON sa.stock_item_id = st.stock_item_id INNER JOIN employee em ON sa.employee_id = em.employee_id WHERE sa.date BETWEEN '2025-01-12' AND '2025-01-18';
-- B
SELECT COUNT(sale_id) AS 'sales', em.first_name, em.last_name FROM sale sa INNER JOIN employee em ON sa.employee_id = em.employee_id GROUP BY em.first_name, em.last_name ORDER BY sales DESC;
--  5
-- A
-- SELECT sa.date, st.name, st.price, st.category, em.first_name FROM employee em INNER JOIN sale sa ON sa.employee_id = em.employee_id INNER JOIN stock_item st ON sa.stock_item_id = st.stock_item_id AND COUNT(sa.employee_id) GROUP BY sa.employee_id DESC LIMIT 1;
-- B
SELECT st.stock_item_id, st.name, st.price, st.category, COUNT(sa.sale_id) AS 'Times Sold' FROM stock_item st LEFT JOIN sale sa ON st.stock_item_id = sa.stock_item_id GROUP BY st.stock_item_id, st.name, st.price, st.category ORDER BY st.stock_item_id ASC;
--  6
-- A 
-- Display the total quantity sold for each item, along with the item name, price, and category. Include the employee's first and last name who sold each item. The results should be ordered by most items sold to least.
-- B
SELECT st.name, st.price, st.category, COUNT(sa.sale_id) AS total_sold, em.first_name, em.last_name FROM sale sa INNER JOIN stock_item st ON sa.stock_item_id = st.stock_item_id INNER JOIN employee em ON sa.employee_id = em.employee_id GROUP BY st.stock_item_id, em.employee_id ORDER BY total_sold DESC;