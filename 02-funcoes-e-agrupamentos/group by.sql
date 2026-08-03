
-- GROUP BY + DESAFIOS (INTERMEDIARIO)
-- GROUP BY divide o resultado da sua pesquisa em grupos

SELECT *
FROM Sales.SalesOrderDetail;

SELECT specialOfferId, SUM(UnitPrice) AS SOMA
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

-- ex: Quanto de cada produto foi vendido ate hoje?
SELECT ProductId, COUNT (ProductID) AS CONTAGEM
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- ex01: Quantos nomes de cada nome temos no cadastrado no banco de dados?
SELECT firstname, COUNT (firstname) AS CONTAGEM
FROM Person.Person
GROUP BY FirstName;

-- ex03: Na tabela production.product qual a media de preco para os produtos silver?
SELECT Color, AVG (LISTPRICE) AS PRECO
FROM Production.Product
WHERE Color = 'silver'
GROUP BY Color;

-- DESAFIO 01: quantas pessoas tem o mesmo MidleName e agrupar por MidleName
SELECT MiddleName, COUNT (MiddleName) AS CONTAGEM
FROM Person.Person
GROUP BY MiddleName;

-- DESAFIO 02: qual a media e quantidade de cada produto vendido na loja
SELECT PRODUCTID, SUM (OrderQty) AS SOMA
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

SELECT productid, AVG (OrderQty) AS MEDIA
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- DESAFIO 03: quais foram as 10 vendas que no total tiveram os maiores valores de venda por produto, do maior para o menor
SELECT TOP 10 PRODUCTID, SUM (LINETOTAL)
FROM Sales.SalesOrderDetail 
GROUP BY ProductID
ORDER BY  SUM(LineTotal) DESC;

-- DESAFIO 04: quantos produtos e qual a quantidade media de produtos estao cadastrados nas ordens de servico, agrupados por productId
SELECT ProductId, COUNT(ProductID) AS CONTAGEM,
AVG (ORDERQTY) AS MEDIA
FROM Production.WorkOrder
GROUP BY ProductID