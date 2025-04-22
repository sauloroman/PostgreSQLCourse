-- Sorting, Offsetting, and Limiting
-- Write a query that shows the names of only the second and third most expensive phones.

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

SELECT name
FROM phones
ORDER BY price DESC
LIMIT 2
OFFSET 1;