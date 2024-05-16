-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.
CREATE DATABASE db_registroescola;

-- Comando para usar o banco de dados criado.
USE db_registroescola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
CREATE TABLE estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade BIGINT,
notas DECIMAL (7,2) NOT NULL,
telefoneresponsavel VARCHAR(255),
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO estudantes (nome, idade, notas, telefoneresponsavel) 
VALUES ("Maria Silva", 14, 8.0, "9 9548-7251"),
("Mariana Moura", 12, 9.0, "9 9357-8342"),
("Valentina Camargo", 15, 6.0, "9 8549-7425"),
("José Souza", 17, 7.5, "9 6354-5472"),
("Elisama Pereira", 18, 8.5, "9 5842-5872"),
("Martina Oliveira", 13, 4.5, "9 5623-9354"),
("Luna Rodrigues", 18, 2.7, "9 9547-2485"),
("Guilherme Santoro", 16, 1.5, "9 8057-8500");


-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
SELECT * FROM estudantes WHERE notas > 7.0;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM estudantes WHERE notas < 7.0;

-- Ao término atualize um registro desta tabela através de uma query de atualização. (Irá atualizar a idade de 2 estudantes).
UPDATE estudantes SET idade = 19 WHERE id = 5 OR id = 7;