--* OFFSET skip the first 40 rows of the result set
SELECT * 
FROM users
OFFSET 40;

--* LIMIT only give the first 25 rows of the result set
SELECT *
FROM users
LIMIT 25;

--* 
-- The first most expensive products
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

-- The first least expensive products
SELECT *
FROM products
ORDER BY price 
LIMIT 5;

-- we put limit first and the offset if is neccesary
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5
OFFSET 1;

SELECT *
FROM products
ORDER BY price
LIMIT 20
OFFSET 0 -- 20, 40, 60, 80 pagination