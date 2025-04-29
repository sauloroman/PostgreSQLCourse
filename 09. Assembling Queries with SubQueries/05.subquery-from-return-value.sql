--* This subquery returns one single value

SELECT MAX(price) FROM products

--* We must select *, if not, this does not work
SELECT *
FROM (
	SELECT MAX(price) FROM products
) AS p;

