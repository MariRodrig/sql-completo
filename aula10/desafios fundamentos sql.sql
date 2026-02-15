
/* Desafio Fundamentos SQL

Desafio 01: quantos produtos temos cadastrados no sistema que custam mais de 1500 dolares?
> tabela production.product
> usar count, where e mais algum operador

Desafio 02: quantas pessoas temos com o sobrenome que inicia com a letra P?
> tabela person.person
> count, where e like

Desafio 03: em quantas cidades unicas estao cadastrados nossos clientes?
> tabela person.adress
> count, distinct

Desafio 04: quais sao as cidades unicas que temos cadastradas em nosso sistema?
> tabela person.address
> similar a resposta anterior

Desafio 05: quantos produtos vermelhos tem preco entra 500 e 1000 dolares?
> production.product
> count, like 

Desafio 06: quantos produtos cadastrados tem a palavra 'road' no nome deles?
> production.product
> count, like  */

-- DESAFIO 01
SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;

-- DESAFIO 02
SELECT COUNT (LastName) 
FROM Person.Person
WHERE LastName LIKE 'p%';

-- DESAFIO 03
SELECT COUNT (DISTINCT City)
FROM Person.Address;

-- DESAFIO 04
SELECT DISTINCT City
FROM Person.Address;

-- DESAFIO 05
SELECT COUNT (*)
FROM Production.Product
WHERE Color = 'red' and ListPrice BETWEEN 500 AND 1000;

-- DESAFIO 06
SELECT COUNT (*)
FROM Production.Product
WHERE name LIKE '%road%';
