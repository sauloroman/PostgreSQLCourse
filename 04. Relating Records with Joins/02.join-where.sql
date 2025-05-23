/*
  Users can comment on photos that they posted.
  List the url and contents for every photo/comment
  where this occured
*/

SELECT url, contents
FROM comments
JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id

--* THREE WAY JOINS
SELECT url, contents, username
FROM comments
JOIN photos ON photos.id = comments.photo_id
JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;