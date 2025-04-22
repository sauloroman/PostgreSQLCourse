--! EXCEPT
--* Find the rows that are present in first query
--* but NOT second query. Remove duplicates

--! EXCEPT ALL
--* Find the rows that are present in first query
--* but NOT second query.

--! CHANGING QUERY ORDER CHANGE RESULTS
(
	SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
EXCEPT
(
	SELECT * 
  FROM products
  ORDER BY (price / weight) DESC
  LIMIT 4
)

