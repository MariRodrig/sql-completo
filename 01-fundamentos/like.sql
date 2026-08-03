
-- LIKE: busca padroes de texto
-- % significa que nao importa o que vem depois

SELECT *
FROM Person.Person
WHERE FirstName like 'ovi%'

SELECT *
FROM Person.Person
WHERE FirstName like '%to'

SELECT *
FROM Person.Person
WHERE FirstName like '%essa%'