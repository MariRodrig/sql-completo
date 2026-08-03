
-- WHERE: usado para fazer filtros

/*  SELECT coluna1, coluna2
FROM tabela
WHERE condição */

SELECT *
FROM Production.Product
WHERE Color = 'blue' or Color = 'black'

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 and ListPrice < 5000

SELECT *
FROM Production.Product
WHERE Color <> 'red'

-- Desafio 01: a equipe de producao de produtos precisa do nome de todas as pecas que pesam de 500kg a 700kg para inspecao

SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight <= 700

-- Desafio 02: foi pedido pelo marketing uma relacao com o nome de todos os funcionários que sao casados e sao assalariados

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1

/* Desafio 03: um usuario chamado Peter Krebs esta devendo um pagamento,
consiga o email dele para que possamos enviar uma cobranca.
(Vai ter que usar a tabela person.person e depois a tabela person.emailadress) */

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs'

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26
