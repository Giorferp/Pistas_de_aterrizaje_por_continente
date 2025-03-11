--1.	¿Cuántos aeropuertos hay en cada país y cuál es el país con más aeropuertos registrados?

--2.	¿Cuál es el aeropuerto con la mayor elevación en la base de datos?

--3.	Lista los 5 aeropuertos con las pistas más largas.

--4.	¿Cuántos aeropuertos tienen servicio programado en América del Norte?

--5.	Encuentra los 3 países con más radioayudas registradas.
SELECT navaids.iso_country AS 'codigo_del_pais', countries.name AS 'Pais', count(navaids.type) AS
'Radioayudas_registradas' FROM navaids INNER JOIN countries ON navaids.iso_country=countries.code 
GROUP BY iso_country ORDER BY count(navaids.type) DESC LIMIT 3; 
