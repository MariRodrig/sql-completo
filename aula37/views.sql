
-- VIEWS
-- e uma consulta salva no banco
-- e como uma “tabela virtual”
-- nao armazena dados (so armazena a query)
-- melhor performance


SELECT *
FROM RELATORIO_NOVO;

CREATE VIEW VW_RELATORIO AS
SELECT *
FROM RELATORIO_NOVO
WHERE VENDEDOR = 'LLP';

SELECT *
FROM VW_RELATORIO;