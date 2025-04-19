--* Grouping
--* 1. Reduces many rows down to fewer rows
--* 2. Done by using the 'GROUP BY' keyword
--* 3. Visualizing the result is key to use

--* GROUPING
--* Find the set of all unique user_id
--* Take each row and assign it to a group based on its user_id

SELECT user_id
FROM comments
GROUP BY user_id;

--! column "comments.id" must appear in the GROUP BY clause or be used in an aggregate function
SELECT *
FROM comments
GROUP BY user_id;

