-- Criando nosso banco de dados
CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas; -- Informando o sistema de qual BD estamos usando

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
VALUES ("Hidráulica", "Produtos hidráulicos"),
("Eletricidade", "Produtos para sistemas elétricos"),
("Pintura", "Produtos para pintura e acabamento"),
("Cerâmica", "Produtos para cerâmica e laminas"),
("Alvenaria", "Produtos para alvenaria e acabamento");

-- Inserindo os valores da tabela de produtos
INSERT INTO tb_produtos(nome_produto, descricao, preco, id_categoria) 
VALUES ("Bomba de Água", "Bomba de água para hidráulica", 300.00, 1),
("Flexímetro", "Flexímetro para medição de tubos", 150.00, 1),
("Pintura Azul", "Pintura azul para alvenaria", 80.00, 3),
("Porcelana", "Porcelana para banheiros", 120.00, 4),
("Tinta de Bitumo", "Tinta de bitumo para impermeabilização", 130.00, 2),
("Cerâmica Branca", "Cerâmica branca para revestimento", 200.00, 5),
("Fiação Elétrica", "Fiação elétrica de 220V", 100.00, 2),
("Chave de Fenda", "Chave de fenda para cerâmica", 25.00, 4);

-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_produtos;

-- SELECT de produtos com preço MAIOR do que R$100,00
SELECT * FROM tb_produtos WHERE preco > 100.00;

-- SELECT de produtos com preço ENTRE R$70,00 e R$150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

-- SELECT de produtos que possuem a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

-- Unindo as tabelas
SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

-- Divulgando somente os produtos da categoria hidráulica
SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Hidráulica";
