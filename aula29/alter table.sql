
-- ALTER TABLE
-- modifica a estrutura de uma tabela existente

-- Exs do que pode ser feito
-- Add, remover ou alterar uma coluna
-- Setar valores padroes para uma coluna
-- Add ou remover restricoes de uma coluna
-- Renomear uma tabela

SELECT *
FROM Filmes2


-- Adicionando uma coluna
ALTER TABLE Filmes
ADD Ativo BIT;


-- Alterando um limite de uma coluna
ALTER TABLE Filmes
ALTER COLUMN Categoria VARCHAR(300) NOT NULL;


-- Alterando o nome de uma coluna
-- EXEC sp_rename 'nomeTabela.nomeColunaAtual', 'nomeColunaNova', 'COLUMN'
EXEC SP_RENAME 'Filmes.Nome', 'NomeCanal', 'COLUMN';

-- Alterando o nome de uma tabela
-- EXEC SP_RENAME 'nomeTabelaAtual', 'nomeTabelaNova'
EXEC sp_rename 'Filmes', 'Filmes2';

-- Removendo uma coluna
ALTER TABLE Filmes2
DROP COLUMN Ativo;


