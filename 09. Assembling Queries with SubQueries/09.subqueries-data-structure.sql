-- Show the name of all products with a price greater than the average
-- product price

SELECT name
FROM products
WHERE price > (
	SELECT AVG(price)
	FROM products
);

-- Show the name of all products that are not in the
-- same department as products with a price less than 100

SELECT name
FROM products
WHERE department NOT IN (
  SELECT department
  FROM products
  WHERE price < 100
)

-- Show the name, department, and price of products that are more expensive
-- than all products in the 'industrial' department

SELECT name, department, price
FROM products
WHERE price > ALL (
	SELECT price
	FROM products	
	WHERE department = 'Industrial'
);

-- Show the name of products that are more expensive than at least one
-- product in the 'Industrial' department

SELECT name
FROM products
WHERE price > ANY /* SOME */ (
	SELECT price
  FROM products
  WHERE department = 'Industrial'
)

