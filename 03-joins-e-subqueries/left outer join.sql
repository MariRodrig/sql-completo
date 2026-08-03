
-- LEFT OUTER JOIN (LEFT JOIN)

-- Ex: descobrir quais pessoas tem um cartao de credito registrado?


SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL

-- INNER JOIN: 19.118 ROWS
-- LEFT JOIN: 19.972 ROWS