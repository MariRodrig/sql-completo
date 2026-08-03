
-- Functions com CASE (Regra de Desconto)
-- Objetivo: Criar functions escalares para aplicar regra de negócio
-- Function 1: Calcula desconto de 5% para valores acima de 3000
-- Function 2: Retorna mensagem informando se há desconto
-- Conceitos: CREATE FUNCTION, RETURNS, RETURN, CASE, Uso de Function no SELECT

CREATE FUNCTION fnConcedDesc (@valor DECIMAL(10,2))
RETURNS DECIMAL(10,2)

AS
	BEGIN
		RETURN
		CASE WHEN @valor > 3000 THEN @valor * 0.95
		ELSE @valor
		END
END



CREATE FUNCTION fnMensDesc (@valor DECIMAL(10,2))
RETURNS NVARCHAR(50)

AS
	BEGIN
		RETURN
		CASE WHEN @valor > 3000 THEN 'Conceder desconto'
		ELSE 'Nao conceder desconto'
		END
END



SELECT
	Cliente,
	dbo.fnConcedDesc(ValorTransacoes) AS ValorComDesconto,
	dbo.fnMensDesc(ValorTransacoes) AS Mensagens
FROM  dbo.tbTransacoes;
