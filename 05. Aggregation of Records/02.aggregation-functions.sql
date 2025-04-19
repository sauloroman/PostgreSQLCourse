--* Aggregates: 
--* 1. Reduces many values down to one
--* 2. Done by using 'aggregate functions'

--* AGGREGATION FUNCTIONS
--* COUNT() -> Returns the number of values in a group of values
--* SUM() -> Finds the sum of a group of numbers
--* AVG() -> Finds the average of a group of numbers
--* MIN() -> Returns the minimum value from a group of numbers
--* MAX() -> Returns the maximum value from a group of numbers

SELECT SUM(id)
FROM comments;

SELECT COUNT(id)
FROM comments;

SELECT MAX(id)
FROM comments;

SELECT MIN(id)
FROM comments;

SELECT AVG(id)
FROM comments;
