/* Retrieve information */
-- SELECT * FROM cities;

/* Retrieve only specific columns */
-- SELECT city_name, country FROM cities;
-- SELECT city_name, population, area FROM cities;
SELECT city_name, area, area, area FROM cities;

/* calculated columns */
SELECT city_name, (population / area ) AS population_density 
FROM cities;