-- Criando nosso banco de dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar; -- Informando o sistema de qual BD estamos usando

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
VALUES ("Cosméticos", "Produtos para cuidados com a pele"),
("Higiene Pessoal", "Produtos para higiene pessoal"),
("Remédios", "Remédios e medicamentos"),
("Perfumaria", "Perfumes e aromas"),
("Produtos Naturais", "Produtos naturais para saúde");

-- Inserindo os valores da tabela de produtos
INSERT INTO tb_produtos(nome_produto, descricao, preco, id_categoria) 
VALUES ("Cream Cream", "Creme para pele", 60.00, 1),
("Dental", "Pasta de dente", 5.00, 2),
("Dipirona", "Remédio para dor", 15.00, 3),
("Lavanda", "Óleo de lavanda", 30.00, 4),
("Mel", "Mel natural", 25.00, 5),
("Perfume Floral", "Perfume floral", 70.00, 4),
("Sabonete Natural", "Sabonete natural", 10.00, 1),
("Shampoo", "Shampoo para cabelos", 15.00, 1);

-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_produtos;

-- SELECT de produtos com preço MAIOR do que R$50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT de produtos com preço ENTRE R$5,00 e R$60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT de produtos que possuem a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

-- Unindo as tabelas
SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

-- Divulgando somente os produtos da categoria de cosméticos
SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Cosméticos";
