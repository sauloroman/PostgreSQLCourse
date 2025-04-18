--* JOINS
--* Produces values by merging together rows from different
--* related tables
--* Use a join most times that you're asked to find data
--* that involves multiple resources

--* AGGREGATTION
--* Look at many rows and calculate a single value
--* Words like 'most', 'average', 'least' are a sign that
--* you need to use an aggregation

--* 1. FOR EACH COMMENT, SHOW THE CONTENTS OF THE COMMENT
--* AND THE USERNAME OF THE USER WHO WROTE THE COMMENT
SELECT
	contents, username
FROM
	comments
JOIN users ON users.id = comments.user_id

--* 2. FOR EACH COMMENT, LIST THE CONTENTS OF THE COMMENT
--* AND THE URL OF THE PHOTO THE COMMENT WAS ADDED TO
SELECT 
	contents, url
FROM
	comments
JOIN photos ON photos.id = comments.photo_id

--* NOTES ON JOINS
--* 1. Table order between FROM and JOIN frequently makes a difference
--* 2. We must give context if column names collide
--* 3. Tables can be renamed using the 'AS' keyword
--* 4. There are a few kinds of joins

--* 2) --> column reference "id" is ambiguous
SELECT
	id
FROM
	comments
JOIN photos ON photos.id = comments.photo_id

SELECT
	photos.id AS photo_id, comments.id AS comment_id
FROM
	comments
JOIN photos ON photos.id = comments.photo_id

--* 3)
SELECT
	photos.id AS photo_id, c.id AS comment_id
FROM
	COMMENTS AS c
JOIN photos ON photos.id = c.photo_id

SELECT
	photos.id AS photo_id, c.id AS comment_id
FROM
	COMMENTS c
JOIN photos ON photos.id = c.photo_id

--* 4
SELECT
	url, username
FROM
	photos
JOIN users on users.id = photos.user_id

INSERT INTO photos ( url, user_id )
VALUES ('https://banner.jpg', NULL );

-- The photo with null user is not listed due to we are using inner join
--* INNER JOIN
SELECT url, username
FROM photos
/* INNER */ JOIN users ON users.id = photos.user_id

-- OTHER JOIN TO INCLUDE THAT PHOTO
--* LEFT OUTER JOIN
SELECT url, username
FROM photos
LEFT /* OUTER */ JOIN users ON users.id = photos.user_id

--* RIGHT OUTER JOIN
INSERT INTO users( username )
VALUES ('Saulo Nava');

SELECT url, username
FROM photos
RIGHT /* OUTER */ JOIN users ON users.id = photos.user_id;

--* FULL JOIN
SELECT url, username
FROM photos
FULL /* OUTER */ JOIN users ON users.id = photos.user_id

--* 1) There is difference but only in LEFT JOIN AND RIGHT JOIN
-- Deja la tabla join listado todas las fotos inclusive aquellas que no tiene
-- asociado ningun usuario
SELECT url, username
FROM photos
LEFT JOIN users ON users.id = photos.user_id

-- Deja la tabla join listando todos los usuarios, inclusive aquellos que no tienen
-- asociado ninguna foto
SELECT url, username
FROM users
LEFT JOIN photos ON photos.user_id = user.id