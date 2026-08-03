
-- TABELAS TEMPORARIAS (#) - so permite consultar na query ativa
-- sao tabelas que existem so por um tempo, usadas para armazenar dados temporarios
-- muito usadas em consultas complexas


SELECT *
FROM TB_VENDAS;

SELECT *
INTO #RELATORIO_LTZ
FROM TB_VENDAS
WHERE VENDEDOR = 'LTZ';

SELECT *
FROM #RELATORIO_LTZ;


-- TABELAS TEMPORARIAS (##) - permite consultar na query ativa e em outra query
SELECT *
INTO ##RELATORIO_LTZ
FROM TB_VENDAS
WHERE VENDEDOR = 'LTZ';


-- EXCLUINDO UMA TABELA TEMPORARIA
DROP TABLE ##RELATORIO_LTZ;