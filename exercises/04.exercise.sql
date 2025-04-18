--* DATABASE DATA
CREATE TABLE authors (
	id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE books (
	id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  author_id INTEGER REFERENCES authors(id) ON DELETE CASCADE
);

CREATE TABLE reviews (
	id SERIAL PRIMARY KEY,
  rating INTEGER,
	reviewer_id INTEGER REFERENCES authors(id) ON DELETE CASCADE
  book_id INTEGER REFERENCES books(id) ON DELETE CASCADE
);

INSERT INTO authors ( name )
VALUES
	('JK Rowling'),
  ('Stephen King'),
  ('Agatha Christie'),
  ('Dr Seuss');

INSERT INTO books ( title, author_id )
VALUES
 	('It', 2),
	('Chamber of Secrets', 1),
  ('Cat and the Hat', 4),
  ('Affair at Styles', 3);

INSERT INTO reviews ( rating, reviewer_id, book_id ) 
VALUES 
  (3, 1, 2),
  (4, 2, 1),
  (5, 3, 2);

/*
Practice Joining Data
You are designing a database for a book publishing company.  The database needs to store a table of authors and books. An author has many books.  This means that books should have a foreign key column that references an author.

Write a query that will join together these two tables.  For each book, print the title of the book and the name of the author.
*/
--* --------------------- Solution

SELECT  
  title, name
FROM 
  books
JOIN authors ON authors.id = books.author_id

/*
Joins, Joins, Join!
You are still authoring a database for a book publisher.  The database has a table of authors and a table of books .

Write a query that will return the title of each book, along with the name of the author.  All authors should be included, even if they do not have a book associated with them.
*/
--* --------------------- Solution
-- SELECT title, name
-- FROM books
-- RIGHT OUTER JOIN authors ON authors.id = books.author_id

SELECT name, title
FROM authors
LEFT OUTER JOIN books ON books.author_id = authors.id

/*
  Three Way Exercise
  Hmmm...I wonder if any authors are writing their own reviews for books! You are working with a database of books, authors, and reviews

  Write a query that will return the title of each book, along with the name of the author, and the rating of a review.  Only show rows where the author of the book is also the author of the review.
*/

--* --------------------- Solution
SELECT title, rating, name
FROM reviews
JOIN books ON books.id = reviews.book_id
JOIN authors ON authors.id = reviews.reviewer_id AND authors.id = books.author_id

