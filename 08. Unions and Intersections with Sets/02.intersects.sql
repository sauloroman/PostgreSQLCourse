--! INTERSECT
--* Find the rows common in the results of two queries. Remove duplicates

--! INTERSECT ALL
--* Find the rows common in the results of two queries

(
	SELECT * 
  FROM products
  ORDER BY price DESC
  LIMIT 4
) 
INTERSECT
(
	SELECT * 
  FROM products
  ORDER BY (price / weight) DESC
  LIMIT 4
);

--* In this case is the same result
--* since product with id 7 only appears
--* duplicated once in both tables. It means this product is not duplicated in both tables.
(
	SELECT * 
  FROM products
  ORDER BY price DESC
  LIMIT 4
) 
INTERSECT ALL
(
	SELECT * 
  FROM products
  ORDER BY (price / weight) DESC
  LIMIT 4
);



