
-- ORDER BY: ordena os resultados de forma crescente ou descendente

SELECT * 
FROM Person.Person
ORDER BY FirstName DESC


-- Desafio 01: obter o ProductID dos 10 produtos  mais caros cadastrados no sistema, listando do mais caro para o mais barato

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc

-- Desafio 02: obter o nome e o numero do produto, dos produtos que tem o ProductId entre 1 e 4

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID ASC