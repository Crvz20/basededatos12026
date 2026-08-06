/*------------------------------------------------------------------------
    DQL (Data Query Languaje) en SQLSERVER 

Archivo: 05-Basic-queries.sql

Descripcion:Se resalizan consultas basicas con SELECT
----------------------------------------------------------------------------*/
USE comercial_db;
GO
--Uso de SELECT *
/*-------------------
--Sintaxis
SELECT *
FROM nombre_tabla;
NOTA: El asterisco significa todas las columnas de la tabla

No se recomienda Utilizarla siempre

1. Reduce la claridad de la consulta
2. Puede aumentar el consumo de recursos
3. Puede afectar aplicaciones futuras

Solamente se usa cuando las tablas son muy prqueñas, no es recomendable cuando existen muchos datos o columnas
-----------------------------------*/

SELECT *
FROM productos;

--Proyeccion de la tabla producto (Es mas facil de leer si cada campo esta en una linea diferente)
--NOTA: no olvidar poner ";" , no es necesario en SQL pero si en otros sistemas gestores.
SELECT 
    codigo, 
    nombre, 
    precio
FROM productos;

SELECT 
    nombre, 
    codigo, 
    precio
FROM productos;
GO

--Alias de columna(Sobrenombre que se le pone a un campo)

SELECT 
    codigo AS codigo_producto,
    nombre AS nombre_producto,
    precio AS precio_unitario
FROM productos;

-- Alias con espacios, se utilizan corchetes o comillas simples 
SELECT 
    codigo AS [codigo producto],
    nombre AS [nombre producto],
    precio AS [precio unitario]
FROM productos;

SELECT 
    codigo AS 'codigo producto',
    nombre AS 'nombre producto',
    precio AS 'precio unitario'
FROM productos;


--Alias sin la Instruccion AS (no recomendado)
SELECT 
    codigo codigo_producto,
    nombre nombre_producto,
    precio precio_unitario
FROM productos;

SELECT 
    codigo [codigo producto],
    nombre [nombre producto],
    precio [precio unitario]
FROM productos;


--Alias de tabla (Es util en los join y en nombres ambigüos)
--NOTA:a

SELECT 
    p.codigo, 
    p.nombre, 
    p.precio
FROM productos AS p;
GO

SELECT 
    categorias.id_categoria, 
    categorias.nombre, 
    productos.id_producto, 
    productos.nombre, 
    productos.precio
FROM categorias
INNER JOIN 
productos
ON categorias.id_categoria = productos.id_categoria;
GO

SELECT 
    c.id_categoria, 
    c.nombre, 
    p.id_producto, 
    p.nombre, 
    p.precio
FROM categorias AS c
INNER JOIN 
productos AS P
ON c.id_categoria = p.id_categoria;
GO

SELECT 
    p.codigo AS Código, 
    p.nombre AS [Nombre producto], 
    p.precio AS 'Precio Unitario'
FROM productos AS p;
GO

--Columnas Calculadas, Campos calculados y en el ER (Entidad Relacional) se conoce como atrbuto deribado

--Seleccionar el codigo, nombre, precio, existencia y el valor del inventario
SELECT 
p.codigo,
p.nombre,
p.precio,
(p.existencia * p. precio) AS precio_inventario
FROM productos AS p;

--operadores aritmeticos y mas ejercicios de campos calculados
/*------------------------------------------------------------------------
+ Suma
- resta
* multiplicacion
/ división
% modulo o reciduo de la division
----------------------------------------------------------------------------*/

-- seleccionar los emplados y calcular su salario anual
SELECT 
    e.nombre,
    e.apellido_materno,
    e.salario AS salario_anual,
    (salario * 12) AS salario_anual
FROM empleados AS e;
GO

--seleccionar el detalle de las ventas, mostrando
-- Numero de vent, cantidad, precio, descuento, 
-- Calcular el importe bruto(cantidad*precio)
-- Calcular el importe con descuento (importe bruto * descuento/100)
-- Calcular el importe neto (importe bruto *1 - descuento /100)

SELECT 
    dv.id_venta AS #venta,
    dv.cantidad AS cantidad_vendida,
    dv.precio AS [precio de venta],
    dv.descuento AS 'descuento de venta',
    (dv.cantidad* dv.precio) AS importe_bruto,
    (dv.cantidad* dv.precio/100.0) AS importe_descuento,
    dv.cantidad *dv.precio*(1.0 -descuento/100.0) AS importe_neto

FROM detalle_ventas AS dv;
GO