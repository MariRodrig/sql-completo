

-- PROCEDURE COM CASE
-- Funciona como IF dentro do select
-- Case: expressao, IF: estrutura de controle


CREATE PROCEDURE ListarTransacoesClassificadas

AS
	BEGIN
		SELECT Cliente,
		ValorTransacao,
		CASE
			WHEN ValorTransacao < 500 THEN 'Baixo'
			WHEN ValorTransacao BETWEEN 500 AND 1000 THEN 'Medio'
			ELSE 'Alto'
			END AS Classificacao
		FROM BaseFraude
	END;

EXEC ListarTransacoesClassificadas