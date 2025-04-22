--! UNION
--* Join together the results of two queries
--* and remove duplicates

--! UNION ALL
--* Join together results of two queries

--* Find the 4 products with the highest price AND
--* the 4 products with the highest price/weight ratio

--* Find the 4 products with the highest price AND
SELECT * 
FROM products
ORDER BY price DESC
LIMIT 4

--* the 4 products with the highest price/weight ratio
SELECT *
FROM products
ORDER BY (price / weight) DESC
LIMIT 4


--* TO COMBINE THIS

(
  SELECT *
  FROM products
  ORDER BY price DESC
	LIMIT 4
)
UNION --* this keyword removes duplicates UNION ALL
(
	SELECT *
  FROM products
  ORDER BY ( price / weight) DESC
  LIMIT 4
);

--* UNION IN TWO QUERYS MUST MATCH CORRECTLY WITH THE DATE TYPE OF THE COLUMNS

SELECT name FROM products
UNION
SELECT price FROM products

--* UNION types character varying and integer cannot be matched
