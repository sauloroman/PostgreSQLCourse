--* Find the average number of orders for all users

SELECT AVG(num_orders)
FROM(
  SELECT user_id, COUNT(*) AS num_orders
  FROM orders
  GROUP BY user_id
) AS o
