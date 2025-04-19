SELECT user_id, MAX(id)
FROM comments
GROUP BY user_id;

SELECT user_id, COUNT(id) as num_comments_created
FROM comments
GROUP BY user_id;