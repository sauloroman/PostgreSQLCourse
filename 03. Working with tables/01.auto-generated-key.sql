CREATE TABLE users (
	id SERIAL PRIMARY KEY,
  username VARCHAR(50)
);

INSERT INTO users ( username )
VALUES 
	('Saulo Santillan'),
	('Danna Carreon'),
	('Joshua Hernandez'),
  ('Erika Nava');

SELECT * FROM users;