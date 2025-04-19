-- Practice For Grouping and Aggregating
-- Back to books and authors!

-- Write a query that will print an author's id and the number of books they have authored.

-- Hint: all the information that you need for this is present on the books table.

-- An example of the authors table

-- +----+-----------------+
-- | id | name            |
-- +----+-----------------+
-- | 1  | JK Rowling      |
-- +----+-----------------+
-- | 2  | Stephen King    |
-- +----+-----------------+
-- | 3  | Agatha Christie |
-- +----+-----------------+
-- | 4  | Dr Seuss        |
-- +----+-----------------+
-- An example of the books table

-- +----+---------------------+-----------+
-- | id | title               | author_id |
-- +----+---------------------+-----------+
-- | 1  | Chamber of Secrets  | 1         |
-- +----+---------------------+-----------+
-- | 2  | Prisoner of Azkaban | 1         |
-- +----+---------------------+-----------+
-- | 3  | The Dark Tower      | 2         |
-- +----+---------------------+-----------+
-- | 4  | Murder At the Links | 3         |
-- +----+---------------------+-----------+
-- | 5  | Affair at Styles    | 3         |
-- +----+---------------------+-----------+
-- | 6  | Cat in the Hat      | 4         |
-- +----+---------------------+-----------+


--* SOLUTION
SELECT author_id, COUNT(*)
FROM books
GROUP BY author_id

-- Grouping With a Join!
-- This is the same exercise as the last one, but this time we want to print out some information from both tables!

-- Write a query that will print an author's name and the number of books they have authored.

-- Hint: all the information that you need for this is present on the books table.

-- An example of the authors table

--* SOLUTION
SELECT name, COUNT(*) as num_books_published
FROM books
INNER JOIN authors ON authors.id = books.author_id
GROUP BY authors.name

-- Practice Yourself Some Having
-- You are trying to find the phone manufacturers with the greatest revenue from selling phones.

-- Given a table of phones, print the names of manufacturers and total revenue (price * units_sold) for all phones.  Only print the manufacturers who have revenue greater than 2,000,000 for all the phones they sold.

-- Hints:

-- From the problem statement, it looks like you don't need to filter down any of the initial rows. That means you probably won't have to use the WHERE keyword!

-- +-------------+--------------+-------+------------+
-- | name        | manufacturer | price | units_sold |
-- +-------------+--------------+-------+------------+
-- | N1280       | Nokia        | 199   | 1925       |
-- +-------------+--------------+-------+------------+
-- | Iphone 4    | Apple        | 399   | 9436       |
-- +-------------+--------------+-------+------------+
-- | Galaxy S    | Samsung      | 299   | 2359       |
-- +-------------+--------------+-------+------------+
-- | S5620 Monte | Samsung      | 250   | 2385       |
-- +-------------+--------------+-------+------------+
-- | N8          | Nokia        | 150   | 7543       |
-- +-------------+--------------+-------+------------+
-- | Droid       | Motorola     | 150   | 8395       |
-- +-------------+--------------+-------+------------+
-- | Wave S8500  | Samsung      | 175   | 9259       |
-- +-------------+--------------+-------+------------

--* SOLUTION
SELECT manufacturer, SUM( price * units_sold ) AS total_revenue
FROM phones
GROUP BY manufacturer 
HAVING SUM(price * units_sold) > 2e6