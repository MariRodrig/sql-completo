
-- PROCEDURE COM IF, DATEPART, HOUR

SELECT *
FROM BaseFraude;

-- PROJETO MONITORAMENTO DE TRANSACAO

 
CREATE PROCEDURE VerificarTransacaoClienteAprovado

@Cliente NVARCHAR(100)  -- paramentro de entrada com o cliente

AS
BEGIN  -- verifica se o cliente possui pelo menos uma transacao aprovada
IF EXISTS(
	SELECT 1
	FROM	BaseFraude
	WHERE	Cliente = @Cliente
			AND Aprovado = 'Sim' )

BEGIN  -- verifica se possui transacoes suspeita (valor alto, horario)
IF EXISTS (
	SELECT 1
	FROM	 BaseFraude
	WHERE	Cliente = @Cliente 
		AND Aprovado = 'Sim'
		AND ValorTransacao >= 4000
		AND DATEPART (HOUR, DataTransacao) >= 21)

BEGIN -- retorna as transacoes suspeitas
	SELECT	DataTransacao,
			TipoTransacao,
			ValorTransacao,
			Bandeira,
			Aprovado,
			'Transacao suspeita' AS Status
	FROM	BaseFraude
	WHERE	Cliente = @Cliente
		AND Aprovado = 'Sim'
		AND ValorTransacao >= 4000
		AND DATEPART (HOUR, DataTransacao) >= 21
END


ELSE 
	BEGIN  -- caso tenha transacoes mas nenhuma suspeita
	SELECT  'Sem transacao suspeita' AS Status
	END
END

ELSE
	BEGIN  -- caso nao tenha nenhuma transacao
	SELECT	DataTransacao,
			TipoTransacao,
			ValorTransacao,
			Bandeira,
			Aprovado,
			'Sem transacao' AS Status
	FROM	BaseFraude
	WHERE	Cliente = @Cliente
		AND Aprovado = 'Não'
	END
END

Exec VerificarTransacaoClienteAprovado @Cliente = 'Cliente 7'