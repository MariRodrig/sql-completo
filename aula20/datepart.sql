
-- DATEPART (AVANCADO)
-- Extra uma parte da data

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS Mes
FROM Sales.SalesOrderHeader

SELECT AVG(TOTALDUE) AS Media, DATEPART(MONTH, OrderDate) AS Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY Mes