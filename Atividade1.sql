-- Criando nosso banco de dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online; -- Informando o sistema de qual BD estamos usando

-- Criando a tabela de classes
CREATE TABLE tb_classes(
id_classe int auto_increment primary key ,
nome_classe varchar(255) not null
);

-- Criando a tabela de personagens
CREATE TABLE tb_personagens(
id_personagem bigint auto_increment primary key, 
nome varchar(255) not null,
poder_ataque int not null,
poder_defesa int not null,
id_classe int,
foreign key (id_classe) references tb_classes(id_classe) -- Adicionando a FOREIGN KEY da tabela de classess
);

-- Inserindo os valores da tabela de classes
INSERT INTO tb_classes(nome_classe)
VALUES ("Arqueiro"), ("Paladino"), ("Mago"), ("Guerreiro"), ("Curandeiro");

-- Inserindo os valores da tabela de personagens
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, id_classe)
VALUES ("Bianca", 5000, 5000, 2),
("Vivian", 1500, 5000, 4),
("Kátia", 900, 4500, 5),
("Adriano", 4000, 1300, 1),
("Alice", 5000, 5000, 3),
("Gabi", 1200, 1500, 4),
("Carol", 3000, 3000, 3),
("Chris", 7000, 1250, 2);
       
-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_personagens;

-- SELECT de personagens com poder de ataque MAIOR do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT de personagens com poder de defesa ENTRE 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT de personagens que possuem a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- Unindo as tabelas
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

-- Divulgando somente os paladinos
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = "Paladino";
