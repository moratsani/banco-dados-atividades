-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa.
CREATE DATABASE db_rhempresa;

-- Comando para usar o banco de dados criado.
USE db_rhempresa;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
idade BIGINT,
salario DECIMAL (10,2) NOT NULL,
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO tb_colaboradores (nome, cargo, idade, salario)
VALUES ("José Machado", "Auxiliar", 25, 1700.00),
("Ana Oliveira", "Gerente", 45, 3000.00),
("Paola Santos", "Secretária", 31, 2100.00),
("Marina Souza", "Auxiliar de Escritório", 21, 1500.00),
("Paulina Mendes", "CEO", 42, 5000.00);

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_colaboradores SET salario = 1900.00 WHERE id = 1;

