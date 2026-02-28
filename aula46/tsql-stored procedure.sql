

-- STORED PROCEDURE
-- E um bloco de codigo SQL salvo no banco que pode ser executado depois
-- E como uma “funcao” armazenada no banco
-- Vantagens: reutilizavel, padronizacao, melhor performance, seguranca no controle


CREATE PROCEDURE Selecionar_TodasTransacoes
AS

BEGIN  

SELECT *
FROM BaseFraude;

END
GO;

EXEC Selecionar_TodasTransacoes;