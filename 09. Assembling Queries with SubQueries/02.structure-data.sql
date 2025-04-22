-- SUBQUERIES CAN BE USED AS...
-- A source of A value
-- A source of rows
-- A source of A column

--* Understanding the shape of a query result is key

SELECT * FROM orders; --> Many rows, many columns
SELECT id FROM orders; --> Many rows, one column
SELECT COUNT(*) FROM orders; --> Onew row, one column (single value) SCALAR QUERY

--* Pregunta 1:
-- Take a look at this query.  If you executed it, what would the structure of the returned data look like?

SELECT id, first_name, last_name 
FROM users;

-- Hint: You can copy-paste the query over to pg-sql.com and run it to double check your answer!

--* A: Many columns, many rows

--* Pregunta 2:
-- Take a look at this query.  If you executed it, what would the structure of the returned data look like?

SELECT product_id, COUNT(*)
FROM orders
GROUP BY product_id;

-- Hint: You can copy-paste the query over to pg-sql.com and run it to double check your answer!

--* A: Many rows, many columns

--* Pregunta 3:
-- Take a look at this query.  If you executed it, what would the structure of the returned data look like?

SELECT paid
FROM orders
WHERE id = 3;

-- Hint: You can copy-paste the query over to pg-sql.com and run it to double check your answer!

--* A: A single value

--* Pregunta 4:
-- Take a look at this query.  If you executed it, what would the structure of the returned data look like?

SELECT paid
FROM orders
WHERE id IN (3, 4, 5);

-- Hint: You can copy-paste the query over to pg-sql.com and run it to double check your answer!

--* A: Many rows, one column


