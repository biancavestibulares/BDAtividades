-- Criando nosso banco de dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal; -- Informando o sistema de qual BD estamos usando

-- Criando a tabela de categorias
CREATE TABLE tb_categorias(
id_categoria int auto_increment primary key ,
nome_categoria varchar(255) not null,
descricao varchar(255) not null
);

-- Criando a tabela de pizzas
CREATE TABLE tb_pizzas(
id_pizza int auto_increment primary key,
nome_pizza varchar(255) not null,
descricao varchar(255) not null,
preco decimal(6, 2) not null,
id_categoria int,
foreign key (id_categoria) references tb_categorias(id_categoria)
);

-- Inserindo os valores da tabela de categorias
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Salgada", "Pizzas com ingredientes salgados"),
("Doce", "Pizzas com ingredientes doces"),
("Especial", "Pizzas com ingredientes especiais"),
("Vegetariana", "Pizzas sem carne"),
("Carnes", "Pizzas com carnes");

-- Inserindo os valores da tabela de pizza
INSERT INTO tb_pizzas (nome_pizza, descricao, preco, id_categoria) 
VALUES ("Margherita", "Pizza clássica com tomate, mozzarella e manjericão", 80.00, 1),
("4 Queijos", "Pizza com 4 tipos de queijo", 55.00, 2),
("Portuguesa", "Pizza com presunto, ovo, cebola e queijo muçarela", 65.00, 1),
("Camarão", "Pizza com camarão e queijo muçarela", 90.00, 3),
("Calabresa", "Pizza com calabresa e queijo muçarela", 45.00, 1),
("Frango com Catupiry", "Pizza com frango desfiado e catupiry", 45.00, 2),
("Mussarela", "Pizza com queijo mussarela", 35.00, 1),
("Napolitana", "Pizza com molho de tomate, mozzarella, cebola e azeitonas", 38.00, 1);

-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_pizzas;

-- SELECT de pizzas com preço MAIOR do que R$45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT de pizzas com preço ENTRE R$50,00 e R$100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT de pizzas que possuem a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

-- Unindo as tabelas
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

-- Divulgando somente as pizzas doces
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Doce";
