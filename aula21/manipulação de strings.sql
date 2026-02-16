

-- MANIPULACAO DE STRING (AVANCADO)


SELECT CONCAT(FirstName,' ',LastName)
FROM Person.Person;

SELECT UPPER(FirstName)
FROM Person.Person;

SELECT LOWER(FirstName)
FROM Person.Person;

SELECT Name, TRIM(Name)  -- remove espacos, do comeco/fim
FROM Production.Product;

SELECT FirstName, LEFT(FirstName, 2)  --pega parte do texto, no comeco
FROM Person.Person;

SELECT FirstName, RIGHT(FirstName, 3)  --pega parte do texto, no final
FROM Person.Person;

SELECT FirstName, LEN(FirstName)   -- conta caracteres 
FROM Person.Person;

SELECT FirstName, SUBSTRING(FirstName,1,3)   -- extrai informacoes, comecando do indice 1, extrair 3 letras 
FROM Person.Person;

SELECT FirstName   
FROM Person.Person
WHERE FirstName LIKE '%im%'  -- procura texto
 
SELECT REPLACE(ProductNumber, '-', '#')   -- substituiu, o - pelo #
FROM Production.Product;



