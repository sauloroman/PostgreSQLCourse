SELECT LEAST(1, 20, 50, 100)

-- All products are on sale!
-- Price is the least of the products price * 0.5 or $400
SELECT
	name,
  price,
  LEAST( price * 0.5, 400 )
FROM products
