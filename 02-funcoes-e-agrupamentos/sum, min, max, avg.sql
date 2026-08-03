
-- MIN, MAX, SUM E AVG: sao funcoes que agregam ou combinam dados de uma tabela em um resultado só


SELECT TOP 10 SUM (linetotal) AS SOMA
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN (linetotal) AS menorValor
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX (linetotal) AS maiorValor
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG (linetotal) AS mediaValores
FROM Sales.SalesOrderDetail