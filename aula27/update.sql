
-- UPDATE
-- altera dados que ja existem em uma tabela
-- importante: Sem WHERE, altera tudo

UPDATE aula
SET Nome = 'aula 3'
WHERE Nome = 'Aula 3';

SELECT *
FROM aula