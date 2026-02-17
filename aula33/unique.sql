
-- UNIQUE
-- Serve para impedir valores duplicados em uma coluna.
-- Pode repetir NULL (diferente de PRIMARY KEY)
-- Mas não pode repetir valores iguais

CREATE TABLE CarteiraMotorista01(
Id INT NOT NULL,
Nome VARCHAR(255) NOT NULL,
Idade INT CHECK(Idade >= 18),
CodigoCNH INT NOT NULL UNIQUE
);

SELECT *
FROM CarteiraMotorista01;

INSERT INTO CarteiraMotorista01 (Id, Nome, Idade, CodigoCNH)
VALUES (1, 'Charles', 30, 252345);
INSERT INTO CarteiraMotorista01 (Id, Nome, Idade, CodigoCNH)
VALUES (1, 'Charles', 30, 252345);