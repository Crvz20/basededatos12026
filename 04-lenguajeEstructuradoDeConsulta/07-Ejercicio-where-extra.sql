/*========================================
Ejercicio Extra con la base de datos nortwind

==========================================*/

USE NORTWHIND;

-- Mostrar las ventas realizadas en Francia, brazil y belgica
-- de 10 de julio e 1996 al 31 de Diciembre de 1998, que tenga Region de Envio,
-- para los clientes VICTE, HANAR y SUPRD, y ordenados por fecha de pedido de la mas
-- cercana a la mas antigua.


SELECT
o.OrderID, AS numero_orden,
o.CostumerID AS ciente,
o.ShipCountry AS pais_envio,
o.OrderDate AS fecha_orden,
UPPER(FORMAT (o.OrderDate, 'MMMM', 'es-ES')) AS [mes_orden],
UPPER (FORMAT (o.OrderDate, 'dddd', 'es-ES')) AS [dia_orden],
DATEPART(YEAR o.orderDate) AS [año_orden]
FROM orders AS o
WHERE o.ShipCountry IN ('France','Brazil', 'belgium')
AND
o.CustomerID IN ('Victe', 'HANAR', 'SUPRD')
AND
o.CustomerID IN ('1996-07-10', AND '1998-12-24')
ORDER BYo.OderDate ASC;

SELECT
FROM Custumers
WHERE CompanyName LINE 'Bo%';

SELECT
FROM Custumers
WHERE CompanyName LINE '%er%';

