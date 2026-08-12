/*------------------------------------------------------------------------
    DQL (Data Query Languaje) en SQLSERVER 

Archivo: 06-filtrado-registros-where.sql.sql

Descripcion: se recuperan unicamente las filas que cumplen determinadas condiciones mediante la 
clausula where.

Orden Sintactico
SELECT/TOP
FROM
JOIN/ON
WHERE
GRPUP BY
HAVING
ORDER BY

Orden de ejecucion
FROM/JOINS 
WHERE
Goup by
HAVING
SELECT 
DISTINCT
ORDER BY
TOP

OPERADORES
ARITMETICOS
( )
*,/,%
+,-

RELACIONALES (BOOLEAN)
= IGUAL QUE
< MAYOR QUE
> MENOR QUE 
<=MENOR O IGUAL QUE
>=MAYOR O IGUAL QUE
<> DIFERENTE QUE
! DIFERENTE QUE (MENOS UTILIZADO)

OPERADORES LOGICOS
NOT 
AND
OR
T +T = T
F+T= F
T+F= F
F+F= F
----------------------------------------------------------------------------*/

/*------------------------------------------------------------------------
Sintaxis
SELECT
    Columna_1,
    columna_2,
    columna_n

FROM nombre_tabla
WHERE condicion,

Nonta: La condicion puede ser relacional y la combinacion de esta con logica
Nota: El select no filtra registros


----------------------------------------------------------------------------*/

--Seleccionar el prducto cuyo precio es 200 pesos
SELECT 
    p.codigo AS [Codigo],
    p.nombre AS [Producto],
    p.precio AS [Precio]

FROM productos AS p
WHERE precio=200;

--Seleccionar el cliente cuyo identificador es 25

SELECT
    c.id_cliente AS [Identificador cliente],
    CONCAT(
        c.nombre, ' ',
        c.apellido_paterno, ' ',
        c.apellido_materno
    ) AS [Nombre completo]
FROM clientes AS c
WHERE c.id_cliente = 25;


--Comparacion de cadenas de texto
SELECT 
c.nombre [Categoria]

FROM categorias AS c
WHERE c.nombre = 'cómputo';

--Seleccionar los datos de cliente con nombre cliente 1
SELECT 
c.nombre [Categoria]

FROM categorias AS c
WHERE c.nombre = 'cliente1';

-- seleccionar datos de los empleados que no pertenescan al dempartamento 1

SELECT 
c.id_departamento[departamento],
CONCAT(
        c.nombre, ' ',
        c.apellido_paterno, ' ',
        c.apellido_materno
    ) AS [Nombre completo]

FROM empleados AS c
WHERE c.id_departamento = '1';

-- seleccionar los datos de los productos donde el precio se supererior a 490
SELECT
p.precio AS precio,
p.codigo AS codigo,
p.nombre AS nombre

FROM productos AS p
WHERE p.precio > 490;

--seleccionar los datos de los productos con existencia critica inferior a 10 unidades
SELECT
p.precio AS precio,
p.codigo AS codigo,
p.nombre AS nombre,
p.existencia AS existencia

FROM productos AS p
WHERE p.existencia < 10;


-- Seleccionar los datos de los empleados donde su salario sea de 30,000 en adelante
SELECT 
c.id_departamento AS [departamento],
c.salario,
CONCAT(
        c.nombre, ' ',
        c.apellido_paterno, ' ',
        c.apellido_materno
    ) AS [Nombre completo]

FROM empleados AS c
WHERE c.salario >= '30000';

-- Seleccionar los datos de los productos donde sus precios sean de 10 o menos

-- seleccionar los datos de las vntas realizadas en los meses de abril

SELECT 
v.id_venta



--Seleccionar todas las vntas anteriores al primero de febrero de 2025


SELECT
    v.id_venta AS [Número de venta],
    v.fecha AS [Fecha de venta],
    YEAR(v.fecha) AS [Año],
    DATENAME(MONTH, v.fecha) AS [Mes],
    DAY(v.fecha) AS [Día]
FROM ventas AS v
WHERE v.fecha < '20250201';

-- Seleccionar las ventas anteriores al 1 de febrero del 2025

SELECT
    v.id_venta,
    v.fecha,
    YEAR(v.fecha) AS [Año],
    MONTH(v.fecha) AS [Mes],
    DAY(v.fecha) AS [Día],
    FORMAT(v.fecha, 'MMMM') AS [Mes en Ingles],
    UPPER(FORMAT(v.fecha, 'MMMM', 'es-ES')) AS [Mes en Español],
    FORMAT(v.fecha, 'MMM') AS [Mes Abreviado],
    FORMAT(v.fecha, 'MMM', 'es-ES') AS [Mes Abreviado],
    FORMAT(v.fecha, 'dddd') AS [Día en Ingles],
    FORMAT(v.fecha, 'dddd', 'es-ES') AS [Día en Ingles],
    v.id_cliente,
    v.id_empleado
FROM ventas AS v;

-- DISTINCT 
--QUITA ELEMENTOS REPETIDOS DE UNA O la combinacion de columnas 

--Muestra los sexos de los clientes

SELECT DISTINCT
cu.nombre
FROM clientes AS c
INNER JOIN ciudades AS cu
ON c.id_ciudad = cu.id_ciudad;

--Seleccionar los descuentos unicos de las ventas
SELECT DISTINCT
    dv.descuento
FROM detalle_ventas AS dv
ORDER BY dv.descuento DESC;
GO

-- SEE APLICA EL DISTINCT A TODAS LAS CONSULTAS
SELECT DISTINCT
p.id_categoria,
p.id_proveedor
FROM productos AS  p;
GO

--TOP 
--Limita la cantidad de filas devueltas por una consulta 

SELECT TOP (1)
dv.id_venta,
dv.precio,
dv.cantidad,
dv.descuento
FROM detalle_ventas AS dv;
GO
-- LOS PRIMEROS 10 %
SELECT TOP (10) PERCENT
dv.id_venta,
dv.precio,
dv.cantidad,
dv.descuento
FROM detalle_ventas AS dv;
GO

-- Seleccionar las ventas anteriores al 1 de febrero del 2025

SELECT
    v.id_venta,
    v.fecha,
    YEAR(v.fecha) AS [Año],
    MONTH(v.fecha) AS [Mes],
    DAY(v.fecha) AS [Día],
    FORMAT(v.fecha, 'MMMM') AS [Mes en Ingles],
    UPPER(FORMAT(v.fecha, 'MMMM', 'es-ES')) AS [Mes en Español],
    FORMAT(v.fecha, 'MMM') AS [Mes Abreviado],
    FORMAT(v.fecha, 'MMM', 'es-ES') AS [Mes Abreviado],
    FORMAT(v.fecha, 'dddd') AS [Día en Ingles],
    FORMAT(v.fecha, 'dddd', 'es-ES') AS [Día en Ingles],
    v.id_cliente,
    v.id_empleado
FROM ventas AS v
WHERE v.fecha <'2025-02-01';

--Seleccionar lo datos de los productos mostrando el codigo y el valor del inventario donde el valor de inventario
-- debe ser mayor a 50 mil.

SELECT 
p.codigo AS codigo_producto,
p.existencia AS esistencia,
p.precio AS precio,
(p.precio * p.existencia) AS valor_inventario
FROM productos AS p
WHERE (p.precio * p.existencia) > 50000;
GO

--Mostrar los productos con precio que este entre 200 pejecoins y 300 pejecoins

SELECT 
p.codigo AS codigo_producto,
p.existencia AS esistencia,
p.precio AS precio,
(p.precio * p.existencia) AS valor_inventario
FROM productos AS p
WHERE precio >=200 AND precio <=300;
GO

-- Instruccion con BETWEEN
SELECT 
p.codigo AS codigo_producto,
p.existencia AS esistencia,
p.precio AS precio,
(p.precio * p.existencia) AS valor_inventario
FROM productos AS p
WHERE precio BETWEEN 200 AND 300;
GOS