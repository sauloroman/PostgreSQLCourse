SELECT GREATEST(200, 10, 40);

-- Compute the cost to ship each item
-- shipping is the maximum of ( weight * 2 ) or $30
SELECT 
  name,
  weight,
	GREATEST( weight * 2, 30 ) AS cost_to_ship
FROM products