-- CREATE TABLE users (
-- 	id SERIAL PRIMARY KEY,
--   username VARCHAR(50)
-- );

CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) -- FOREIGN KEY
);

INSERT INTO photos( url, user_id)
VALUES ('http://one.jpg', 4);

INSERT INTO photos (url, user_id)
VALUES 
	('http://two.png', 1),
  ('http://three.png', 1),
  ('http://four.png', 1),
  ('http://five.png', 2),
  ('http://six.png', 3),
  ('http://seven.png', 3),
  ('http://eight.png', 3),
  ('http://nine.png', 4),
  ('http://ten.png', 4);

SELECT * FROM photos;

-- Find all the photos created by user with ID 4
SELECT * FROM photos WHERE user_id = 4;

/* 
	List all photos with details about the associated
  user for each
 */
 
SELECT *
FROM 
	photos
JOIN users ON users.id = photos.user_id;

SELECT url, username FROM photos
JOIN users ON users.id = photos.user_id;