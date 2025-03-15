.--1.	¿Cuántos aeropuertos hay en cada país y cuál es el país con más aeropuertos registrados?
CREATE VIEW Aereopuertos_por_pais AS
SELECT c.name AS 'Nombre_pais', COUNT(a.id) AS 'Cant_aereopuertos' FROM airports a
JOIN countries c ON a.iso_country = c.code GROUP BY c.name
ORDER BY  Cant_aereopuertos DESC;
--2.	¿Cuál es el aeropuerto con la mayor elevación en la base de datos?
CREATE VIEW Aereopuerto_mayor_elevacion AS 
SELECT a.name AS 'Nombre_Aereopuerto' , a.elevation_ft AS 'Altura_aereopuerto', c.name AS 'Nombre_pais' FROM airports a
JOIN countries c ON a.iso_country = c.code WHERE a.elevation_ft = ( SELECT MAx(elevation_ft) FROM airports);
--3.	Lista los 5 aeropuertos con las pistas más largas.
DROP VIEW Aeropuertos_mas_largos 
CREATE VIEW Aeropuertos_mas_largos AS 
SELECT a.name AS 'Nombre_Aeropuerto', r.length_ft AS 'Longitud_Pista'
FROM airports a
JOIN runways r ON a.ident = r.airport_ident
ORDER BY r.length_ft DESC
LIMIT 5;

--4.	¿Cuántos aeropuertos tienen servicio programado en América del Norte? Nota. Los Aeropuertos de North America son los únicos que tienen asignado NULL
--es comprobable al hacer lista de todos los que tienen country = NULL
CREATE VIEW Aereopuertos_norteamericanos_con_servicio_programado AS
SELECT COUNT(*) AS 'Cantidad_Aeropuertos'
FROM airports
WHERE iso_country IN (SELECT code FROM countries WHERE continent is NULL)
AND scheduled_service = '1';
--5.	Encuentra los 3 países con más radioayudas registradas.
CREATE VIEW Paises_con_mas_radioayudas AS
SELECT navaids.iso_country AS 'codigo_del_pais', countries.name AS 'Pais', count(navaids.type) AS
'Radioayudas_registradas' FROM navaids INNER JOIN countries ON navaids.iso_country=countries.code 
GROUP BY iso_country ORDER BY count(navaids.type) DESC LIMIT 3; 
