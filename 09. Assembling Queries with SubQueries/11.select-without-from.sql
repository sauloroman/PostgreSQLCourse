SELECT 
( SELECT MAX(price) FROM products ) 
/ 
( SELECT MIN(price) FROM products )
AS ratio

SELECT 
( SELECT MAX(price) FROM products ) 
,
( SELECT AVG(price) FROM products )
