

-- DESAFIO
-- Criar uma procedure com variaveis usando a tabela BaseFraude onde gere uma tabela sobre 'Ocorrencias fora do padrao'
-- Informacoes que devem constar na tabela:
-- ValorTransacao > 4000
-- Hora >= 23:00
-- Bandeira Amex

SELECT *
FROM BaseFraude;

ALTER PROCEDURE RelatorioCritico
@ValorMinimo DECIMAL(10,2),
@HoraMinima INT,
@Bandeira NVARCHAR(20)

AS
	BEGIN
		SELECT DataTransacao,
		Cliente,
		TipoTransacao,
		ValorTransacao,
		Bandeira,
		Aprovado,
		'Transacao suspeita' AS Status
		FROM BaseFraude
		WHERE
		ValorTransacao > @ValorMinimo
		AND Bandeira = @Bandeira
		AND DATEPART(HOUR, DataTransacao) >= @HoraMinima

END
GO

EXEC RelatorioCritico @ValorMinimo = 4000, @Bandeira = 'Amex', @HoraMinima = 23;