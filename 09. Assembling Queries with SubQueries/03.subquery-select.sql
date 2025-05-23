--* A subquery that results in a single value

SELECT name, price, ( SELECT MAX(price) FROM products )
FROM products
WHERE price > 867

SELECT name, price, (
	SELECT price
  FROM products
  WHERE id = 3
) AS id_3_price
FROM products
WHERE price > 867

-- Embedding in Select
-- Write a query that prints the name and price for each phone.  In addition, print out the ratio of the phones price against max price of all phones (so price / max price).  Rename this third column to price_ratio

-- The result should look something like this. (Only one row is shown, there should be one row for each phone)

-- +-------+-------+-------------+
-- | name  | price | price_ratio |
-- +-------+-------+-------------+
-- | N1280 | 199   | .498        |
-- +-------+-------+-------------+
-- For reference, here is the phones table:

-- +-------------+--------------+-------+------------+
-- | name        | manufacturer | price | units_sold |
-- +-------------+--------------+-------+------------+
-- | N1280       | Nokia        | 199   | 1925       |
-- +-------------+--------------+-------+------------+
-- | Iphone 4    | Apple        | 399   | 9436       |
-- +-------------+--------------+-------+------------+
-- | Galaxy S    | Samsung      | 299   | 2359       |
-- +-------------+--------------+-------+------------+
-- | S5620 Monte | Samsung      | 250   | 2385       |
-- +-------------+--------------+-------+------------+
-- | N8          | Nokia        | 150   | 7543       |
-- +-------------+--------------+-------+------------+
-- | Droid       | Motorola     | 150   | 8395       |
-- +-------------+--------------+-------+------------+
-- | Wave S8500  | Samsung      | 175   | 9259       |
-- +-------------+--------------+-------+------------+

--* SOLUTION
SELECT 
  name, 
  price, 
  (price / ( SELECT MAX(price) FROM phones )) AS price_ratio
FROM phones