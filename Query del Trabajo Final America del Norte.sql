-- Paso 1: Crear la tabla NA_Airports
DROP TABLE NA_Airports 
CREATE TABLE NA_Airports AS
SELECT countries.code, airports.ident,airports.name, airports.type, runways.length_ft, runways.width_ft, 
       runways.surface, runways.le_elevation_ft, airports.scheduled_service
FROM airports 
INNER JOIN runways ON airports.ident = runways.airport_ident
INNER JOIN countries ON airports.iso_country = countries.code 
WHERE airports.continent IS NULL  -- Filtrar aeropuertos donde el continente es NULL
GROUP BY airports.ident 
ORDER BY countries.code;
-- Paso 2: Actualizar los tipos de superficie de las pistas para estandarizarlos
UPDATE NA_Airports SET surface = 'ASPH' WHERE surface LIKE 'A%';
UPDATE NA_Airports SET surface = 'CON' WHERE surface LIKE 'C%';
UPDATE NA_Airports SET surface = 'GRS' WHERE surface LIKE 'GRASS%';
-- Paso 3: Contar el número de aeropuertos por tipo de superficie de pista
SELECT surface, count(*) FROM NA_Airports GROUP BY surface;
-- Paso 4: Eliminar entradas con tipos de superficie desconocidos
DELETE FROM NA_Airports WHERE surface = 'UNK';
-- Paso 5: Selección final para ver todos los datos en NA_Airports
SELECT * FROM NA_Airports;
-- Paso 6: Contar el número de aeropuertos por tipo
SELECT type, count(*) FROM NA_Airports GROUP BY type; 
-- Paso 7: Contar el número de aeropuertos por código de país
SELECT code, count(*) AS 'Cantidad de aeropuertos' FROM NA_Airports GROUP BY code;


SELECT COUNT(*) AS 'Cantidad_Aeropuertos_Con_Servicio_Programado' 
FROM NA_Airports 
WHERE scheduled_service = '1';