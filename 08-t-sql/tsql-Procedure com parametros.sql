

-- ADCIONANDO PARAMETROS NA PROCEDURE

SELECT *
FROM BaseFraude;

ALTER PROCEDURE ListarTransacoesPorClientes

@Cliente NVARCHAR (100),
@Aprovado NVARCHAR(10)
AS

BEGIN 

SELECT
TipoTransacao,
ValorTransacao,
Cliente,
Aprovado,
DataTransacao
FROM BaseFraude
WHERE Cliente = @Cliente 
AND Aprovado = @Aprovado

END
GO

EXEC ListarTransacoesPorClientes @Cliente = 'Cliente 4', @Aprovado = 'Não';


-- Criando uma nova procedure
CREATE PROCEDURE BuscarTransacoes
@Cliente	NVARCHAR(100),
@Ano		INT

AS BEGIN
SELECT *
FROM BaseFraude
WHERE CLIENTE = @Cliente
AND YEAR(DataTransacao) = @Ano
END;
GO

EXEC BuscarTransacoes @Cliente = 'Cliente 1', @Ano = 2023;

