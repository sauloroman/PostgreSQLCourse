CREATE TABLE phones (
	name VARCHAR(50),
  manufacturer VARCHAR(50),
  price INTEGER,
  units_sold INTEGER
);

INSERT INTO phones (name, manufacturer, price, units_sold)
VALUES ('N128', 'Nokia', 199, 1925),
       ('IPhone 4', 'Apple', 399, 9436),
       ('Galaxy S', 'Samsung', 299, 2359);

SELECT name, (price * units_sold) AS revenue
FROM phones;

-- WHERE 1
SELECT 
  name, price
FROM
  phones
WHERE
  units_sold > 5000;

-- WHERE 2.1
SELECT
  name, manufacturer
FROM
  phones
WHERE
  manufacturer IN ('Apple', 'Samsung');

-- WHERE 2.2
SELECT
  name, manufacturer
FROM
  phones
WHERE
  manufacturer = 'Apple' OR manufacturer = 'Samsung';

-- WHERE 2.3
SELECT
  name, manufacturer
FROM
  phones
WHERE
   manufacturer NOT IN ('Nokia', 'Motorola');

-- WHERE 2.4
SELECT
  name, manufacturer
FROM
  phones
WHERE
   manufacturer <> 'Nokia' AND manufacturer <> 'Motorola';

-- WHERE 3
SELECT
    name,
    (price * units_sold) AS total_revenue
FROM
    phones
WHERE
    price * units_sold > 1e6;

--* UPDATING
-- Write query here to update the 'units_sold' of the phone with name 'N8' to 8543
UPDATE phones
SET units_sold = 8543
WHERE name = 'N8';


-- Write query here to select all rows and columns of the 'phones' table
SELECT * FROM phones;

--* DELETING
-- Write your delete SQL here
DELETE FROM phones
WHERE manufacturer = 'Samsung';

-- Write query here to select all rows and columns from phones
SELECT * FROM phones;