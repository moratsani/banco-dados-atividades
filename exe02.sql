-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
CREATE DATABASE db_servicoecommerce;

-- Comando para usar o banco de dados criado.
USE db_servicoecommerce;

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade BIGINT,
preco DECIMAL (7,2) NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO produtos (nome, quantidade, preco, descricao) 
VALUES ("Headset Gamer Thunder", 75, 700.00, "Fone de Ouvido"),
("Hub USB 4-Portas", 41, 80.00, "Hub para compartilhamento de portas USB"),
("Tablet Valeu", 78, 510.00, "Tablet Infantil Escolar"),
("Celular Positivo", 80, 790.00, "Celular 8GB Dual Sim"),
("Notebook Multi", 94, 1000.00, "Notebook Intel Core i3"),
("Smartphone S20", 100, 1840.00, "Smartphone Ultima Geração"),
("HD SSD UltraVelozz", 547, 395.99, "HD 500GB"),
("Fone Bluetooth", 46, 547.71, "Fone Ultima Geração Bluetooth");

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM produtos WHERE preco > 500;

-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM produtos WHERE preco < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE produtos SET descricao = "Fone atualizado da melhor marca" WHERE id = 8;

