

-- PROCEDURE COM VARIABEIS

SELECT *
FROM BaseFraude

CREATE PROCEDURE ListarTransacoesPorClientes

@Cliente NVARCHAR (100)
AS

BEGIN 

SELECT
TipoTransacao,
ValorTransacao,
Cliente,
Aprovado
FROM BaseFraude
WHERE Cliente = @Cliente

END
GO

EXEC ListarTransacoesPorClientes @Cliente = 'Cliente 5';
