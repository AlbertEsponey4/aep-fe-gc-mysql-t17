USE actividades;

-- ejercicio 3

-- 3.1
SELECT * FROM almacenes;

-- 3.2
SELECT * FROM cajas WHERE valor > 150;

-- 3.3
SELECT DISTINCT contenido FROM cajas; -- uso DISTINCT para que no me muestre repetidos

-- 3.4
SELECT AVG(valor) AS valor_medio FROM cajas;

-- 3.5
SELECT almacen, AVG(valor) AS valor_medio FROM cajas GROUP BY almacen; -- gorup by para no repetir

-- 3.6
SELECT almacen AS almacenes_valor_medio_superior_150 FROM cajas GROUP BY almacen HAVING AVG(valor) > 150;

-- 3.7 
SELECT cajas.numreferencia, almacenes.lugar FROM cajas JOIN almacenes ON cajas.almacen = almacenes.codigo;

-- 3.8
SELECT almacen, COUNT(*) AS numero_cajas FROM cajas GROUP BY almacen; 

-- 3.9
SELECT codigo FROM almacenes WHERE (SELECT COUNT(*) FROM cajas WHERE cajas.almacen = almacenes.codigo) > capacidad;

-- 3.10
SELECT cajas.numreferencia FROM cajas JOIN almacenes ON cajas.almacen = almacenes.codigo WHERE almacenes.lugar = 'Bilbao';

-- 3.11
INSERT INTO almacenes (codigo, lugar, capacidad) VALUES ('6' ,'Barcelona', 3);

-- 3.12
INSERT INTO cajas (numreferencia, contenido, valor, almacen) VALUES ('H5RT', 'Papel', 200, 2);

-- 3.13
UPDATE cajas SET valor = valor * 0.85;

-- 3.14
UPDATE cajas SET valor = valor * 0.8 WHERE valor > (SELECT AVG(valor) FROM cajas);

-- 3.15
DELETE FROM cajas WHERE valor < 100;

-- 3.16
DELETE FROM cajas WHERE almacen IN (
  SELECT almacenes.codigo
  FROM almacenes JOIN (SELECT almacen, COUNT(*) AS num_cajas FROM cajas GROUP BY almacen) cajas_por_almacen 
  ON almacenes.codigo = cajas_por_almacen.almacen 
  WHERE num_cajas > almacenes.capacidad
);










