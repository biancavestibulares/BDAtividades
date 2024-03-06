-- Criando nosso banco de dados
CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes; -- Informando o sistema de qual BD estamos usando

-- Criando a tabela de categorias
CREATE TABLE tb_categorias(
id_categoria int auto_increment primary key ,
nome_categoria varchar(255) not null,
descricao varchar(255) not null
);

-- Criando a tabela de produtos
CREATE TABLE tb_produtos(
id_produto bigint auto_increment primary key, 
nome_produto varchar(255) not null,
descricao varchar(255) not null,
preco decimal(6, 2) not null,
id_categoria int,
foreign key (id_categoria) references tb_categorias(id_categoria) -- Adicionando a FOREIGN KEY da tabela de categorias
);

-- Inserindo os valores da tabela de categorias
INSERT INTO tb_categorias(nome_categoria, descricao) 
VALUES ("Aves", "Produtos de aves"),
("Carne Bovina", "Produtos de carne bovina"),
("Frutas", "Produtos de frutas"),
("Verduras", "Produtos de verduras"),
("Laticínios", "Produtos laticínios");

-- Inserindo os valores da tabela de produtos
INSERT INTO tb_produtos(nome_produto, descricao, preco, id_categoria) 
VALUES ("Pato", "Pato para assar", 100.00, 1),
("Costela de Boi", "Costela de boi", 250.00, 2),
("Maçã", "Maçã Gala", 15.00, 3),
("Batata", "Batata doce", 10.00, 4),
("Leite", "Leite UHT", 5.00, 5),
("Frango", "Frango para assar", 60.00, 1),
("Peito de Carne", "Peito de carne", 40.00, 2),
("Tomate", "Tomate Italiano", 8.00, 4);

-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_produtos;

-- SELECT de produtos com preço MAIOR do que R$50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT de produtos com preço ENTRE R$50,00 e R$150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- SELECT de produtos que possuem a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

-- Unindo as tabelas
SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

-- Divulgando somente os produtos da categoria de frutas
SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Frutas";
