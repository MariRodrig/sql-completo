
-- HAVING + DESAFIOS (INTERMEDIARIO)
-- Muito usado em juncao com o group by para filtrar resultados de um agrupamento
-- Diferenca entre HAVING e WHERE: where filtra linhas antes do GROUP BY, having filtra grupos depois do group by

SELECT FIRSTNAME, COUNT (FIRSTNAME) AS QUANTIDADE
FROM Person.Person
GROUP BY FirstName
HAVING COUNT (firstname) > 10;

-- ex01: quais produtos que no total de vendas estao entre 162k e 150k
SELECT ProductID, SUM (linetotal) AS TOTAL
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM (LineTotal) BETWEEN 162000 AND 500000;

-- ex02: quais nomes no sistema tem ocorrencia maior que 10 vezes, porem so onde o titulo e 'Mr.'
SELECT FIRSTNAME, COUNT (FIRSTNAME) AS QUANTIDADE
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT (firstname) > 10;

-- DESAFIO 01: Estamos querendo identificar as provincias com maior numero de cadastros no sistema
-- entao e preciso encontrar quais provincias estao registradas  no banco de dados mais que 1000 vezes

SELECT StateProvinceID, COUNT (StateProvinceID) AS Quantidade
FROM person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- DESAFIO 02: Os gerentes querem saber quais produtos nao estao trazendo em media no minimo
-- 1 milhao em total de vendas

SELECT ProductID, AVG(linetotal) 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000000