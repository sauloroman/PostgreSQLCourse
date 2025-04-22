-- NUMBERS
SELECT * FROM products ORDER BY price; -- ASC by default
SELECT * FROM products ORDER BY price DESC;

-- VARCHARS
SELECT * 
FROM products 
ORDER BY name;

SELECT * 
FROM products 
ORDER BY name DESC;

-- ORDER BY TWO CRITERIA
SELECT * 
FROM products 
ORDER BY price, weight;

SELECT * 
FROM products 
ORDER BY price, weight DESC;