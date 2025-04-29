--* Any subquery, so long as the outer selects/wheres/etc are COMPATIBLE
--* GOTCHA: subquery must have an alias applied to it

-- SUBQUERY
SELECT name, price / weight AS price_weight_ratio
FROM products

--* Implies that name and price_weight_ratio are columns available 
--* through the 'FROM'

SELECT name, price_weight_ratio
FROM (
  SELECT name, price / weight AS price_weight_ratio
  FROM products
) AS p ---> ALIAS IS NECESSARY
WHERE price_weight_ratio > 5