SELECT * FROM photos; -- show 21 photos ( last with user NULL)

SELECT COUNT(user_id) FROM photos; --* 20 (NO COUNT NULL USER)
SELECT COUNT(*) FROM photos; --* 21 (THIS DOES COUNTS IT)

SELECT user_id, COUNT(*)
FROM comments
GROUP BY user_id