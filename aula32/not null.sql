
-- NOT NULL
-- Serve para impedir que a coluna fique vazia (NULL)
-- Obriga o preenchimento

CREATE TABLE CarteiraMotorista (
Id INT NOT NULL,
Nome VARCHAR(255) NOT NULL,
Idade INT CHECK(Idade >= 18)
);

SELECT *
FROM CarteiraMotorista;


INSERT INTO CarteiraMotorista
VALUES (1,, 23);  -- Não permite criar assim, coluna Nome possui Not Null	