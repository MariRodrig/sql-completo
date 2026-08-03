
-- JSON (JavaScript Object Notation)
-- E um formato leve de troca de dado, baseado em uma estrutura simples de chave-valor.
-- Pode conter objetos e arrays
-- Diferente de um banco relacional (SQL), o JSON é um formato de dados semiestruturado, ou seja, 
-- nao precisa seguir uma estrutura fixa de tabela
-- Importante: JSON nao e banco de dados, nao e linguagem de programação, e apenas um formato de dados

ALTER PROCEDURE importaJsonTransacoes
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @json NVARCHAR(MAX);

    SELECT @json = BulkColumn
    FROM OPENROWSET(
        BULK 'C:\TempCarga\exemplo_tabela.json',
        SINGLE_CLOB
    ) AS J;

    IF OBJECT_ID('dbo.tbTransacoes') IS NULL
    BEGIN
        CREATE TABLE dbo.tbTransacoes (
            DataTransacao NVARCHAR(30),
            Cliente NVARCHAR(100),
            TipoTransacao NVARCHAR(50),
            ValorTransacoes DECIMAL(10,2),
            Bandeira NVARCHAR(50),
            Aprovado NVARCHAR(10)
        );
    END

    TRUNCATE TABLE dbo.tbTransacoes;

    INSERT INTO dbo.tbTransacoes (
        DataTransacao,
        Cliente,
        TipoTransacao,
        ValorTransacoes,
        Bandeira,
        Aprovado
    )
    SELECT
        DataTransacao,
        Cliente,
        TipoTransacao,
        Valor_Transacoes, 
        Bandeira,
        Aprovado
    FROM OPENJSON(@json)
    WITH (
        DataTransacao NVARCHAR(30) '$.DataTransacao',
        Cliente NVARCHAR(100) '$.Cliente',
        TipoTransacao NVARCHAR(50) '$.TipoTransacao',
        Valor_Transacoes DECIMAL(10,2) '$.Valor_Transacoes', 
        Bandeira NVARCHAR(50) '$.Bandeira',
        Aprovado NVARCHAR(10) '$.Aprovado'
    );

END;
GO

EXEC importaJsonTransacoes;

SELECT *
FROM dbo.tbTransacoes;

