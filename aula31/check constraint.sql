
-- CHECK CONSTRAINT
-- Define uma regra, cria restricoes para os valores de uma coluna
-- Impede que dados invalidos sejam inseridos
-- CHECK = regra de validacao
-- Pode usar: >, <, BETWEEN, IN

CREATE TABLE CarteiraMotorista (
Id INT NOT NULL,
Nome VARCHAR(255) NOT NULL,
Idade INT CHECK(Idade >= 18)
);

SELECT *
FROM CarteiraMotorista;

INSERT INTO CarteiraMotorista
VALUES (1, 'Alfredo', 20);