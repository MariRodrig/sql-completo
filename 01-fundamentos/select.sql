-- Selecionando todos os dados de uma tabela
SELECT *
FROM person.Person;

-- Selecionando a aba titulos 
SELECT title
FROM person.Person;

SELECT *
FROM person.EmailAddress;

-- DESAFIO
-- A equipe de marketing precisa fazer uma pesquisa sobre os nomes mais comuns de seus clientes
-- e precisa do sobrenome de todos os clientes que estao cadastrados no sistema

SELECT FirstName, LastName
FROM person.Person;
