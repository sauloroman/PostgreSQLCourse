-- CREATE TABLE photos (
-- id SERIAL PRIMARY KEY,
-- url VARCHAR(200),
-- user_id INTEGER REFERENCES users(id)
-- );
 
-- INSERT INTO photos (url, user_id)
-- VALUES
-- ('http:/one.jpg', 4),
-- ('http:/two.jpg', 1),
-- ('http:/25.jpg', 1),
-- ('http:/36.jpg', 1),
-- ('http:/754.jpg', 2),
-- ('http:/35.jpg', 3),
-- ('http:/256.jpg', 4);

--** DELETING A TABLE
DROP TABLE photos;

--* ON DELETE CASCADE
CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
	url VARCHAR(200),
	user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

DELETE FROM users WHERE id = 1;

--* ON DELETE SET NULL

CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
	url VARCHAR(200),
	user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);
 
INSERT INTO photos (url, user_id)
VALUES
('http:/one.jpg', 4),
('http:/754.jpg', 2),
('http:/35.jpg', 3),
('http:/256.jpg', 4);

DELETE FROM users WHERE id = 4;
