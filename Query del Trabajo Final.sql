SELECT DISTINCT regions.iso_country AS Pais, regions.continent AS Continente, countries.name AS Nombre
FROM regions INNER JOIN countries ON countries.code=regions.iso_country WHERE regions.continent IS'SA';

CREATE TABLE 'SA_Airports' AS
SELECT countries.code, airports.ident,airports.name, airports.type, runways.length_ft, runways.width_ft, 
runways.surface, runways.le_elevation_ft FROM airports INNER JOIN runways ON airports.ident=runways.airport_ident
INNER JOIN countries ON airports.iso_country=countries.code WHERE airports.continent='SA' AND runways.le_elevation_ft IS
NOT NULL AND runways.width_ft IS NOT NULL AND runways.surface IS NOT NULL 
GROUP BY airports.ident ORDER BY countries.code;
 
UPDATE SA_Airports SET surface = 'ASPH' WHERE surface LIKE 'A%';
UPDATE SA_Airports SET surface = 'CON' WHERE surface LIKE 'C%';
UPDATE SA_Airports SET surface = 'GRS' WHERE surface LIKE 'GRASS%';
SELECT surface, count(*) FROM SA_Airports GROUP BY surface;
DELETE FROM SA_Airports WHERE surface IS 'UNK';
SELECT * FROM SA_Airports WHERE type IS 'closed';
DELETE FROM SA_Airports WHERE type IS 'closed';
SELECT * FROM SA_Airports;

SELECT type, count(*) FROM SA_Airports GROUP BY type; 
SELECT code, count(*) AS 'Cantidad de aeropuertos' FROM SA_Airports GROUP BY code;
SELECT code, name FROM countries WHERE code IN ('CL','FK','GF','SR');