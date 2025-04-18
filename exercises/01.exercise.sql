CREATE TABLE movies (
  title VARCHAR(60),
  box_office INTEGER
);

INSERT INTO movies (title, box_office) 
VALUES ('The Avengers', 150000000),
       ('Batman vs Superman', 87300000);

SELECT * FROM movies;