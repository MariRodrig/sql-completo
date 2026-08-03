
-- INSERT INTO (DESAFIOS)

-- Criando uma segunda tabela
SELECT *
INTO TabelaNova
FROM aula;

-- Inserindo uma linha na nova tabela
INSERT INTO TabelaNova(Id, Nome)  
VALUES (6, 'Aula 6');

-- Copiando os dados da segunda tabela para a primeira
INSERT INTO aula(Id, Nome)
SELECT Id, Nome
FROM TabelaNova tn
WHERE Id 
NOT IN (1,2,3,4,5);




SELECT *
FROM TabelaNova

SELECT *
FROM aula