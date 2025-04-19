--* Find the number of comments for each photo

SELECT photo_id, COUNT(*) as num_comments
FROM comments
GROUP BY photo_id