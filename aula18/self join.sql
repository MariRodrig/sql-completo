
-- SELF JOIN
-- Quando a tabela se relaciona com ela mesmo, obrigatorio usar o alias (apelido)

SELECT *
FROM Customers

-- Ex: Filtrar todos os clientes que moram na mesma regiao
SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region

-- DESAFIO 01: Encontrar (nome e data de contratacao) de todos os funcionarios
-- que foram contratados no mesmo ano

SELECT N.FirstName, N.HireDate, A.FirstName, A.HireDate
FROM Employees N, Employees A
WHERE DATEPART(YEAR, N.HireDate) = DATEPART(YEAR, A.HIREDATE)

-- DESAFIO 02: Extrair da tabela de pedidos, quais produtos tem o mesmo percentual de desconto

SELECT P.ProductId, P.Discount, P2.ProductId, P2.Discount
FROM [Order Details] P, [Order Details] P2
WHERE P.Discount = P2.Discount