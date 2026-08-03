
-- SUBQUERY
--  É uma query dentro de outra query

-- Ex: monte um relatorio de todos os produtos cadastrados que possuem preco de venda acima da media

SELECT *
FROM Production.Product

SELECT AVG (ListPrice)
FROM Production.Product

SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(LISTPRICE) FROM Production.Product)  -- essa fórmula completa para resolver o ex

-- DESAFIO 01: Extrair o nome dos funcionarios que possuem o cargo de 'Design Engineer'

SELECT *
FROM Person.Person

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer'

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN(
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer')

-- DESAFIO 02: extrair todos os enderecos que estao no estado de 'Alberta', pode extrair todas as informacoes

SELECT * 
FROM Person.Address

SELECT * 
FROM Person.StateProvince
WHERE Name = 'Alberta'

SELECT *
FROM Person.Address 
WHERE StateProvinceID in (
SELECT StateProvinceID FROM Person.StateProvince
WHERE Name = 'Alberta')