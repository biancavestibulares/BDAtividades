-- Criando nosso banco de dados
CREATE DATABASE db_escola;
USE db_escola; -- Informando o sistema de qual BD estamos usando

-- Criando a tabela de estudantes da escola
CREATE TABLE tb_estudantes(
id bigint auto_increment, 
nome varchar(255) not null,
data_nascimento date,
serie varchar(20) not null,
turma varchar(10) not null,
nota decimal(4, 2) not null,
primary key (id)
);

-- Inserindo valores a tabela de estudantes 
-- OBS: Notas não são pessoais! Todas merecem 10 <3
INSERT INTO tb_estudantes(nome, data_nascimento, serie, turma, nota)
VALUES ("Bianca", "2005-10-25", "3° série EM", "F", 10.00);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, turma, nota)
VALUES ("Ellen", "2007-05-27", "1° série EM", "A", 6.00);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, turma, nota)
VALUES ("Dafne", "2006-03-24", "3° série EM", "B", 8.50);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, turma, nota)
VALUES ("Sabrina", "2005-02-04", "9° ano EF", "A", 9.75);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, turma, nota)
VALUES ("Tainá", "2012-03-05", "5° ano EF", "C", 8.25);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, turma, nota)
VALUES ("Camila", "2015-07-08", "7° ano EF", "E", 10.00);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, turma, nota)
VALUES ("Larissa", "2018-10-25", "1° ano EF", "B", 4.25);
INSERT INTO tb_estudantes(nome, data_nascimento, serie, turma, nota)
VALUES ("Patricia", "2020-10-24", "1° série EF", "B", 6.75);

-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_estudantes;

-- SELECT de estudantes com a nota MAIOR do que 7
SELECT * FROM tb_estudantes WHERE nota > 7;

-- SELECT de estudantes com a nota MENOR do que 7
SELECT * FROM tb_estudantes WHERE nota < 7;

-- Atualizando um item da tabela
UPDATE tb_estudantes SET nota = 5.50 where id = 4; -- Modificamos a nota da Sabrina para 5,5
