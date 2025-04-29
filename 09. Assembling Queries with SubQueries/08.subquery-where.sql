--* Show the id of orders that involve a product
--* with a price/weight ratio greater than 5

SELECT id
FROM orders
WHERE product_id IN 
(
	SELECT id
	FROM products
	WHERE price / weight > 5
)

-- SELECT orders.id
-- FROM orders
-- JOIN products ON products.id = orders.product_id
-- WHERE products.price / products.weight > 5