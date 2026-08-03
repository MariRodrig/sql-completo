

-- Function com CASE
-- Objetivo: Criar function escalar para tratar status
-- Conceitos: CREATE FUNCTION, RETURNS, RETURN, CASE


CREATE FUNCTION fnStatusAprovado (@status NVARCHAR(30))
RETURNS NVARCHAR(30)

AS
	BEGIN
		RETURN
		CASE
		WHEN @status = 'Sim' THEN 'Aprovada com sucesso'
		WHEN @status = 'Nao' THEN 'Reprovada pelo sistema'
		ELSE 'Status desconhecido'
	END
END

SELECT 
	Cliente,
	REPLACE	(Aprovado, 'Não', 'Nao'),
	dbo.fnStatusAprovado(Aprovado) AS StatusDetalhado
FROM  dbo.tbTransacoes;