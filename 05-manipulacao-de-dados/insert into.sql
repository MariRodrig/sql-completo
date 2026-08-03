
-- INSERT INTO
-- Pode ser usado em uma tabela e quer inserir dados nela ou para criar uma nova tabela

CREATE TABLE aula(
Id INT PRIMARY KEY,
Nome VARCHAR(200)
);

INSERT INTO aula(Id, Nome)
VALUES(1, 'Aula 1');

INSERT INTO aula(Id, Nome)  -- inserindo multiplos registros
VALUES 
(2, 'Aula 2'),
(3, 'Aula 3'),
(4, 'Aula 4');


SELECT *
FROM aula