

-- AS + DESAFIOS (INTERMEDIARIO)
-- Usado para criar apelidos para colunas ou tabelas

SELECT TOP 10 *
FROM Production.Product

SELECT TOP 10  listprice AS 'PRECO DO PRODUTO'
FROM Production.Product

SELECT TOP 10 AVG(listprice) AS 'Preco medio'
FROM Production.Product


-- DESAFIO 01: encontrar o FirstName e LastName na tabela person.person e colocar titulo em portugues
SELECT FirstName AS 'Nome', LastName AS 'Sobrenome'
FROM Person.Person

-- DESAFIO 02: renomear o ProductNumber da tabela production.product para 'Numero do produto'
SELECT ProductNumber AS 'Numero do produto'
FROM Production.Product

-- DESAFIO 03: renomear a coluna unitPrice da tabela sales.salesOrderDetail para 'Preco Unitario'
SELECT UnitPrice AS 'Preco Unitario' 
FROM Sales.SalesOrderDetail