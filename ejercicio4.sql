-- ejercicio 4

-- 4.1
SELECT nombre FROM peliculas;

-- 4.2
SELECT DISTINCT calificacionedad FROM peliculas;

-- 4.3
SELECT * FROM peliculas WHERE calificacionedad IS NULL;

-- 4.4
SELECT * FROM salas WHERE pelicula IS NULL;

-- 4.5
SELECT salas.codigo, salas.nombre, peliculas.nombre AS nombre_pelicula FROM salas JOIN peliculas ON salas.pelicula = pelciulas.codigo;

-- 4.6
SELECT peliculas.codigo, peliculas.nombre, peliculas.calificacionedad, salas.nombre AS nombre_sala FROM peliculas JOIN salas ON salas.pelicula = peliculas.codigo;

-- 4.7
SELECT peliculas.nombre FROM peliculas LEFT JOIN salas ON salas.pelicula = peliculas.codigo WHERE salas.pelicula IS NULL;

-- 4.8
INSERT INTO peliculas (codigo,NOMBRE, CALIFICACIONEDAD) VALUES (10,'Uno, Dos, Tres', 'PG');

-- 4.9
UPDATE peliculas SET CALIFICACIONEDAD = 'PG-13' WHERE CALIFICACIONEDAD IS NULL;

-- 4.10
DELETE FROM salas WHERE PELICULA IN (SELECT CODIGO FROM peliculas WHERE CALIFICACIONEDAD = 'G');