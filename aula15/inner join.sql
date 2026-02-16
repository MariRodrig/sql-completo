
-- INNER JOIN + DESAFIOS (INTERMEDIARIO)
-- Junta dados em comum entre duas ou mais tabelas, liga tabelas usando colunas relacionadas


-- Ex01: informar o BusinessEntityId, FirstName, LastName, EmailAddress
SELECT TOP 10 *
FROM Person.Person;

SELECT TOP 10 *
FROM person.EmailAddress;

SELECT p.businessEntityId, p.FirstName, p.LastName, pe.emailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress PE on p.BusinessEntityID = p.BusinessEntityID

-- Ex02: extrair o preco, nome dos produtos e nome da subcategoria de produtos
SELECT TOP 10 * 
FROM Production.Product

SELECT TOP 10 *
FROM Production.ProductSubcategory

SELECT p.Name, p.ListPrice, ps.Name
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS PS on p.ProductSubcategoryID = ps.ProductSubcategoryID

-- JUNTANDO TODOS OS DADOS DE DUAS TABELAS
SELECT TOP 10 *
FROM person.BusinessEntityAddress

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA 
INNER JOIN Person.Address PA ON BA.AddressID = PA.AddressID

-- DESAFIO 01: extrair o BusinessEntityId, Name, PhoneNumberTypeId e o PhoneNumber das tabelas person.phoneNumberType e person.PersonPhone
SELECT TOP 10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

SELECT pp.businessEntityId, pt.Name, pp.PhoneNumber, pt.PhoneNumberTypeId
FROM Person.PhoneNumberType as PT
INNER JOIN Person.PersonPhone AS PP on pt.PhoneNumberTypeID = pp.PhoneNumberTypeID

-- DESAFIO 02: extrair o AddressId, City, StateProvinceId e o Nome do Estado das tabelas person.stateprovince e person.address
SELECT TOP 10 *
FROM Person.StateProvince

SELECT TOP 10 *
FROM Person.Address

SELECT pa.AddressId, pa.City, ps.StateProvinceId, ps.Name
FROM Person.StateProvince AS PS
INNER JOIN Person.Address AS PA on ps.StateProvinceID = pa.StateProvinceID