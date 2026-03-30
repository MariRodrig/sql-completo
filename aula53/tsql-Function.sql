
-- FUNCTION 
-- E um objeto que:retorna um valor ou tabela, pode receber parametros, pode ser usada dentro de SELECT
-- Diferente de Procedure: Function precisa retornar algo, nao pode alterar dados (INSERT, UPDATE, DELETE direto)
-- Obs: Se voce precisa usar dentro de SELECT → Function, se e processo/acao → Procedure


IF OBJECT_ID('dbo.tbTransacoes') IS NULL    -- criando a tabela
    BEGIN
        DROP TABLE dbo.tbTransacoes
    END
        CREATE TABLE dbo.tbTransacoes (
            DataTransacao NVARCHAR(30),
            Cliente NVARCHAR(100),
            TipoTransacao NVARCHAR(50),
            ValorTransacoes DECIMAL(10,2),
            Bandeira NVARCHAR(50),
            Aprovado NVARCHAR(10)
        );
   DECLARE @json NVARCHAR(MAX);         -- declarando a variavel que aparece o json

   SELECT @jason = Bulkcolumn
     FROM OPENROWSET(
        BULK 'C:\TempCarga\exemplo_tabela.json',
        SINGLE_CLOB
    ) AS JsonData;


     INSERT INTO dbo.tbTransacoes (      -- inserindo os dados do json na nova tabela
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

   SELECT * FROM dbo.tbTransacoes


   -- Criando a function
   
   ALTER FUNCTION FnSaudacao (@nome VARCHAR(100))
   RETURNS NVARCHAR(100)
   AS
    BEGIN
        RETURN 'Ola, '+ @nome + '!'
    END
    GO
    
   SELECT
    ValorTransacoes,
    dbo.fnSaudacao(Cliente) as Saudacao,
    DataTransacao
       
   FROM dbo.tbTransacoes;