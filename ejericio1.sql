USE actividades;

-- ejercicio 1

-- 1.1
SELECT nombre FROM articulos;

-- 1.2
SELECT nombre, precio FROM articulos;

-- 1.3
SELECT nombre FROM articulos WHERE precio <= 200;

-- 1.4
SELECT * FROM articulos WHERE precio BETWEEN 60 AND 120;

-- 1.5
SELECT nombre, precio * 166.386 AS precio_pesetas FROM articulos;

-- 1.6
SELECT AVG(precio) AS precio_medio	FROM articulos;

-- 1.7
SELECT AVG(precio) AS precio_medio FROM articulos WHERE fabricante = 2;

-- 1.8
SELECT COUNT(*) AS numero_articulos FROM articulos WHERE precio >= 180;

-- 1.9
SELECT nombre, precio FROM articulos WHERE precio >= 180 ORDER BY precio DESC, nombre ASC;

-- 1.10
SELECT articulos.*, fabricantes.nombre FROM articulos JOIN fabricantes ON articulos.fabricante = fabricantes.codigo;

-- 1.11
SELECT articulos.nombre, articulos.precio, fabricantes.nombre AS nombre_fabricante FROM articulos JOIN fabricantes ON articulos.fabricante = fabricantes.codigo; -- para diferenciar los nombres, el fabricante.nombre lo pongo AS nombre_fabricante

-- 1.12
SELECT fabricante, AVG(precio) AS precio_medio FROM articulos GROUP BY fabricante;

-- 1.13
SELECT fabricantes.nombre AS nombre_fabricante, AVG(articulos.precio) AS precio_medio_articulos FROM articulos JOIN fabricantes ON articulos.fabricante = fabricantes.codigo GROUP BY fabricantes.nombre;

-- 1.14
SELECT fabricantes.nombre AS nombre_fabricante FROM articulos JOIN fabricantes ON articulos.fabricante = fabricantes.codigo GROUP BY fabricantes.nombre HAVING AVG(articulos.precio) >= 150;

-- 1.15
SELECT nombre, precio FROM articulos WHERE precio = (SELECT MIN(precio) FROM articulos);

-- 1.17
INSERT INTO articulos (codigo, nombre, precio, fabricante) VALUES ('11', 'Altavoces', 70, 2);

-- 1.18 
UPDATE articulos SET nombre = 'Impresora Laser' WHERE CODIGO = 8;

-- 1.19
UPDATE articulos SET precio = precio * 0.9;

-- 1.20
UPDATE articulos SET precio = precio - 10 WHERE precio >= 120;







