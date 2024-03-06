-- Criando nosso banco de dados
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida; -- Informando o sistema de qual BD estamos usando

-- Criando a tabela de categorias
CREATE TABLE tb_categorias(
id_categoria int auto_increment primary key ,
nome_categoria varchar(255) not null,
descricao varchar(255) not null
);

-- Criando a tabela de produtos
CREATE TABLE tb_cursos(
id_curso bigint auto_increment primary key, 
nome_curso varchar(255) not null,
descricao varchar(255) not null,
preco decimal(6, 2) not null,
id_categoria int,
foreign key (id_categoria) references tb_categorias(id_categoria) -- Adicionando a FOREIGN KEY da tabela de categorias
);

-- Inserindo os valores da tabela de categorias
INSERT INTO tb_categorias(nome_categoria, descricao) 
VALUES ("Programação", "Cursos de programação"),
("Design Gráfico", "Cursos de design gráfico"),
("Marketing Digital", "Cursos de marketing digital"),
("Gestão de Projetos", "Cursos de gestão de projetos"),
("Inteligência Artificial", "Cursos de inteligência artificial");

-- Inserindo os valores da tabela de produtos
INSERT INTO tb_cursos(nome_curso, descricao, preco, id_categoria) 
VALUES ("Curso de Java para Iniciantes", "Aprenda Java do zero", 600.00, 1),
("Design Gráfico com Adobe Photoshop", "Domine o Photoshop", 550.00, 2),
("Marketing Digital 2023", "Estratégias para o ano 2023", 750.00, 3),
("Gestão de Projetos Ágeis", "Gestão de projetos com metodologias ágeis", 800.00, 4),
("Inteligência Artificial com Python", "Aprenda IA com Python", 900.00, 5),
("Curso de JavaScript para Web", "Desenvolvimento web com JavaScript", 650.00, 1),
("Design de Interfaces com Figma", "Figma para designers", 600.00, 2),
("SEO: Estratégias de Otimização para Google", "Otimização para SEO", 700.00, 3);

-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_cursos;

-- SELECT de cursos com preço MAIOR do que R$500,00
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- SELECT de cursos com preço ENTRE R$600,00 e R$1000,00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

-- SELECT de cursos que possuem a letra J no atributo nome
SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

-- Unindo as tabelas
SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria;

-- Divulgando somente os cursos de programação
SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Programação";
