

CREATE DATABASE FRAUDE;

CREATE TABLE BaseFraude (
DataTransacao		DATETIME,
Cliente				NVARCHAR(50),
TipoTransacao		NVARCHAR(50),
ValorTransacao		FLOAT,
Bandeira			NVARCHAR(50),
Aprovado			NVARCHAR(50)
)

-- Inserindo da pasta para o banco
-- BULK INSERT: importa os dados de um arquivo para a tabela no banco, usado para upload em massa

BULK INSERT BaseFraude
FROM 'C:\TempCarga\Base_Fraude.csv'  -- caminho completo do arquivo csv

WITH (
FIRSTROW = 2,					-- comeca da linha 2(pula o cabecalho)
FIELDTERMINATOR = ',',			-- separador de coluna
ROWTERMINATOR = '\n',			-- quebra de linha
CODEPAGE = '65001'				-- defini o codigo de paginas com UTF 8, diz qual é o padrão de codificação do CSV

)

SELECT *
FROM BaseFraude;