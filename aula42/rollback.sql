
-- UPDATE: serve para alterar dados que ja existem na tabela, altera na raiz
-- ROLLBACK: desfaz tudo que foi feito na transação, volta o banco exatamente como estava antes do BEGIN TRAN

SELECT *
FROM TB_VENDAS;

BEGIN TRAN
UPDATE TB_VENDAS
SET  VENDEDOR = 'Luiz Torres'
WHERE VENDEDOR = 'LTZ'

ROLLBACK