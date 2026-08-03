
-- FUNCOES MATEMATICAS (AVANCADO)

SELECT UnitPrice + LineTotal
FROM Sales.SalesOrderDetail;

SELECT UnitPrice - LineTotal
FROM Sales.SalesOrderDetail;

SELECT UnitPrice * LineTotal
FROM Sales.SalesOrderDetail;

SELECT UnitPrice / LineTotal
FROM Sales.SalesOrderDetail;

SELECT AVG(LineTotal)  -- MEDIA
FROM Sales.SalesOrderDetail;

SELECT SUM(LineTotal)  -- SOMA
FROM Sales.SalesOrderDetail;

SELECT MIN(LineTotal)  -- MINIMO
FROM Sales.SalesOrderDetail;

SELECT MAX(LineTotal)  -- MAXIMO
FROM Sales.SalesOrderDetail;

SELECT LineTotal, ROUND(LineTotal, 3)  -- ARREDONDAMENTO
FROM Sales.SalesOrderDetail;

SELECT LineTotal, CEILING(LineTotal)  -- ARREDONDA PRA CIMA
FROM Sales.SalesOrderDetail;

SELECT LineTotal, FLOOR(LineTotal)  -- ARREDONDA PRA BAIXO
FROM Sales.SalesOrderDetail;

SELECT LineTotal, SQRT(LineTotal)  -- RAIZ QUADRADA	
FROM Sales.SalesOrderDetail;