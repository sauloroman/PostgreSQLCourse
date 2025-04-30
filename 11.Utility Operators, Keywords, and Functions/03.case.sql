-- Print each product and its price. Also print a description of the price
-- if price > 600 then 'high'
-- if price > 300 then 'medium'
-- else print 'cheap'

SELECT
	name, 
  price,
  CASE
  	WHEN price > 600 THEN 'HIGH'
  	WHEN price > 300 THEN 'MEDIUM'
  	ELSE 'CHEAP'
  END 
  AS description
FROM products