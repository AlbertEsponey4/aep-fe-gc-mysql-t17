-- ejercicio2

-- 2.1
SELECT apellidos FROM empleados;

-- 2.2
SELECT DISTINCT apellidos FROM empleados;

-- 2.3
SELECT * FROM empleados WHERE apellidos = 'Smith';

-- 2.4
SELECT * FROM empleados WHERE apellidos = 'Smith' OR apellidos = 'Rogers';

-- 2.5
SELECT * FROM empleados WHERE departamento = 14;

-- 2.6
SELECT * FROM empleados WHERE departamento = 37 OR departamento = 77;

-- 2.7
SELECT * FROM empleados WHERE apellidos LIKE 'P%';

-- 2.8
SELECT sum(presupuesto) FROM departamentos;

-- 2.9
SELECT DEPARTAMENTO, COUNT(*) AS NumeroEmpleados FROM empleados GROUP BY DEPARTAMENTO;

-- 2.10
SELECT empleados.dni, empleados.nombre, empleados.apellidos, departamentos.nombre AS departamento FROM empleados JOIN departamentos ON empleados.departamento = departamentos.codigo;

-- 2.11
SELECT empleados.nombre, empleados.apellidos, departamentos.nombre AS nombre_departamento, departamentos.presupuesto AS presupuesto FROM empleados JOIN departamentos ON empleados.departamento = departamentos.codigo;

-- 2.12
SELECT empleados.nombre, empleados.apellidos FROM empleados JOIN departamentos ON empleados.departamento = departamentos.codigo WHERE departamentos.presupuesto > 60000;

-- 2.13
SELECT * FROM departamentos WHERE presupuesto > (SELECT avg(presupuesto) FROM departamentos);

-- 2.14
SELECT departamentos.NOMBRE FROM departamentos JOIN empleados ON departamentos.CODIGO = empleados.DEPARTAMENTO GROUP BY departamentos.NOMBRE HAVING COUNT(*) > 2;

-- 2.15
INSERT INTO departamentos (CODIGO, NOMBRE, PRESUPUESTO) VALUES (11, 'Calidad', 40000);
INSERT INTO empleados (DNI, NOMBRE, APELLIDOS, DEPARTAMENTO) VALUES (89267109, 'Esther', 'Vázques', 11);

-- 2.16
UPDATE departamentos SET presupuesto = presupuesto * 0.9;

-- 2.17
UPDATE empleados SET DEPARTAMENTO = 14 WHERE DEPARTAMENTO = 77;

-- 2.18
DELETE FROM empleados WHERE departamento = 14;

-- 2.19
DELETE FROM empleados WHERE DEPARTAMENTO IN (SELECT CODIGO FROM departamentos WHERE PRESUPUESTO > 60000);

-- 2.20
DELETE FROM empleados;