

-- UPDATE: serve para alterar dados que ja existem na tabela, altera na raiz
-- BEGIN TRAN: inicia uma transacao, uma alteracao mas que so e definitiva ao dar o COMMIT
-- COMMIT: confirma definitivamente a transação, tudo que foi feito após o BEGIN TRAN passa a valer no banco
-- ROLLBACK: desfaz tudo que foi feito na transação, volta o banco exatamente como estava antes do BEGIN TRAN


SELECT *
FROM TB_VENDAS
WHERE VENDEDOR = 'LUIZ LOPES';

-- BEGIN TRAN
-- ROLLBACK
-- COMMIT	

BEGIN TRAN
UPDATE TB_VENDAS
SET VENDEDOR = 'LUIZ LOPES' -- tabela para ser alterada
WHERE VENDEDOR = 'LLP'  -- campo para ser alterado

COMMIT --precisa commitar quantas vezes fizer o update

-- Obs: depois de rodar o UPDATE do vendedor LLP, ele so sera encontrado como Luiz Lopes