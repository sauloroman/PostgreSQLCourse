SELECT
	city_name, area
FROM 
	cities 
WHERE 
	area > 4000;

-- 2
SELECT
	city_name, area
FROM 
	cities 
WHERE 
	area = 4015;

-- 3
SELECT
	city_name, area
FROM 
	cities 
WHERE 
	area <> 4015; /* != */

-- BETWEEN
SELECT
	city_name, area
FROM 
	cities 
WHERE 
	area BETWEEN 2000 AND 4000;

-- IN
SELECT
	city_name, area
FROM 
	cities 
WHERE 
	city_name IN ('Delhi', 'Sao Paulo');

-- NOT IN
SELECT
	city_name, area
FROM 
	cities 
WHERE 
	city_name NOT IN ('Delhi', 'Sao Paulo');

SELECT
	city_name, area
FROM 
	cities 
WHERE 
	area NOT IN (8223, 4015);

-- AND
SELECT
	city_name, area
FROM 
	cities 
WHERE 
	area NOT IN (8223, 4015) AND city_name = 'Delhi';

-- OR
SELECT
	city_name, area
FROM 
	cities 
WHERE 
	area NOT IN (8223, 4015) 
  OR city_name = 'Delhi'
  OR city_name = 'Tokyo';

-- CALCULATED WHERE
SELECT 
	city_name, 
  population / area AS density
FROM 
	cities
WHERE 
	population / area > 6000;