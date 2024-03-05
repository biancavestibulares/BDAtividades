-- Criando nosso banco de dados
CREATE DATABASE db_ecommerce;
USE db_ecommerce; -- Informando o sistema de qual BD estamos usando

-- Criando a tabela de produtos do ecommerce
CREATE TABLE tb_produtos(
id bigint auto_increment, 
nome varchar(255) not null,
quantidade_estoque int,
preco decimal(6,2) not null,
descricao varchar(255) not null,
primary key (id)
);

-- Inserindo valores a tabela de produtos
INSERT INTO tb_produtos(nome, quantidade_estoque, preco, descricao)
VALUES ("iPhone 15", 50, 8729.99, "Apple iPhone 15 Pro Max 256GB 48MP iOS 5G");
INSERT INTO tb_produtos(nome, quantidade_estoque, preco, descricao)
VALUES ("Box - O Povo do Ar", 13, 279.99, "Trilogia de livros contendo O Princípe Cruel, O Rei Perverso e A Rainha do Nada");
INSERT INTO tb_produtos(nome, quantidade_estoque, preco, descricao)
VALUES ("Bolsa Diesel", 100, 399.00, "Bolsa de ombro preta '1DR' da Diesel");
INSERT INTO tb_produtos(nome, quantidade_estoque, preco, descricao)
VALUES ("Teclado Mecânico", 8, 150.00, "Teclado mecânico com layout em português");
INSERT INTO tb_produtos(nome, quantidade_estoque, preco, descricao)
VALUES ("Mouse Gamer", 14, 69.99, "Mouse com DPI personalizável");
INSERT INTO tb_produtos(nome, quantidade_estoque, preco, descricao)
VALUES ("Computador Gamer", 65, 7999.99, "Computador para jogos com 16GB de RAM");
INSERT INTO tb_produtos(nome, quantidade_estoque, preco, descricao)
VALUES ("Livro de Física", 50, 35.50, "Livro didático de física para o ensino médio");
INSERT INTO tb_produtos(nome, quantidade_estoque, preco, descricao)
VALUES ("Livro de Matemática", 50, 650.50, "Livro didático de matemática para faculdade");

-- SELECT de produtos com o valor MAIOR do que 500
SELECT * FROM tb_produtos WHERE preco > 500.00;

-- SELECT de produtos com o valor MENOR do que 500
SELECT * FROM tb_produtos WHERE preco < 500.00;

-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_produtos;

-- Atualizando um item da tabela
UPDATE tb_produtos SET preco = 599.99 where id = 3; -- Modificamos o preço da Bolsa Diesel para R$599,99
