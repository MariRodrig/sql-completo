

-- COUNT: usado para contar registros

SELECT COUNT (*) 
FROM Person.Person

SELECT COUNT (DISTINCT Title) 
FROM Person.Person

-- Desafio 01: quantos produtos estão cadastrados na tabela de produtos

SELECT COUNT (ProductID)
FROM Production.Product

-- Desafio 02: quantos tamanhos de produtos estao cadastrados na tabela

SELECT COUNT (size)
FROM Production.Product