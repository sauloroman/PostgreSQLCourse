/* CONCAT STRINGS */
SELECT city_name ||'-'|| country AS city_country 
FROM cities;

/* CONCAT STRINGS */
SELECT CONCAT(city_name, ' - ', country) AS city_country 
FROM cities;

/* UPPERCASE AND LOWERCASE */
SELECT 
	UPPER(CONCAT(city_name, ' -- ', country)) AS location
FROM 
	cities;

SELECT 
	LOWER(CONCAT(city_name, ' -- ', country)) AS location
FROM 
	cities;

/* LENGTH */
SELECT
	UPPER(city_name), LENGTH(city_name) AS city_name_length
FROM
	cities;
