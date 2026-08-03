

-- IN: filtra registros que correspondem a uma lista de valores, usado junto com o WHERE

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13);

SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13);