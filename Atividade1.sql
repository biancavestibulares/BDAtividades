-- Criando nosso banco de dados
CREATE DATABASE db_rh_empresa;
USE db_rh_empresa; -- Informando o sistema de qual BD estamos usando

-- Criando a tabela de colaboradores da empresa
CREATE TABLE tb_colaboradores(
id bigint auto_increment, 
nome varchar(255) not null,
cargo varchar(255) not null,
data_contratacao date,
salario decimal(8,2) not null,
primary key (id)
);

-- Inserindo valores a tabela de colaboradores
INSERT INTO tb_colaboradores(nome, cargo, data_contratacao, salario)
VALUES ("Bianca", "Gerente", "2024-01-01", 900000.00);
INSERT INTO tb_colaboradores(nome, cargo, data_contratacao, salario)
VALUES ("Jude", "Desenvolvedor", "2020-06-30", 8000.00);
INSERT INTO tb_colaboradores(nome, cargo, data_contratacao, salario)
VALUES ("Nanami", "Analista de TI", "2022-12-01", 15000.00);
INSERT INTO tb_colaboradores(nome, cargo, data_contratacao, salario)
VALUES ("Pam", "Design Gráfico", "2018-06-01", 1800.00);
INSERT INTO tb_colaboradores(nome, cargo, data_contratacao, salario)
VALUES ("Marceline", "Assistente Administrativo", "2023-01-01", 1500.00);

-- SELECT de colaboradores com o salário MAIOR do que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

-- SELECT de colaboradores com o salário MENOR do que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- Selecionando a tabela por completo para análise da mesma
SELECT * FROM tb_colaboradores;

-- Atualizando um item da tabela
UPDATE tb_colaboradores SET salario = 1000.00 where id = 2; -- Modificamos o salário da "Jude" para R$1000,00
