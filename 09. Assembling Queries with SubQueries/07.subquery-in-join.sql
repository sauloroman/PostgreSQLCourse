--* SUBQUERY

SELECT user_id
FROM orders
WHERE product_id = 3


SELECT firstName,
FROM users
JOIN (
  SELECT user_id
  FROM orders
  WHERE product_id = 3
) AS o
ON o.user_id = users.id 


-- SELECT first_name
-- FROM orders
-- JOIN users ON users.id = orders.user_id
-- WHERE orders.product_id = 3