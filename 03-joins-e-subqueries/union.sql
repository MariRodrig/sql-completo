
-- UNION
-- Combina dois ou mais resultados de um select em um resultado apenas, podendo remover dados duplicados ou nao

SELECT ProductId, Name, ProductNumber
FROM Production.Product
WHERE name like '%CHAIN%'
UNION
SELECT ProductId, Name, ProductNumber
FROM Production.Product
WHERE name like '%DECAL%'
ORDER BY ProductID