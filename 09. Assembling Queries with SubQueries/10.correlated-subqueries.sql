-- Show the name, department, and price of the most expensive product
-- in each deapartment

SELECT name, department, price
FROM products
WHERE price IN (
	SELECT MAX(price)
	FROM products
	GROUP BY department
);

-- CORRELATED SUBQUERIE
SELECT name, department, price
FROM products AS p1
WHERE p1.price = (
	SELECT MAX(price)
	FROM products AS p2	
	WHERE p2.department = p1.department 
);

-- Whitout using a join or a group by, print the number of orders for each products

SELECT name, COUNT(*) AS orders_count
FROM orders
JOIN products ON products.id = orders.product_id
GROUP BY product_id
ORDER BY product_id 

--* Solution
SELECT 
	name, 
  (
		SELECT COUNT(*)
    FROM orders AS o1 
    WHERE o1.product_id = p1.id
  ) AS num_orders
FROM products AS p1
