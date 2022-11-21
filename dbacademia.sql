-- apagando o banco de dados se existir
drop database dbacademia;

-- criar o banco de dados
create database dbacademia;

-- acessando o banco de dados
use dbacademia;

-- criando as tabelas do banco de dados
create table tbfuncionarios(
codfunc int,
nome varchar(100),
email varchar(100),
idade int,
rg char(12),
cpf char(14),
logradouro varchar(100),
numero char(10),
bairro varchar(100),
cidade varchar(50),
estado varchar(100));

create table tbusuarios(
codusu int,
nome varchar(20),
senha varchar(10));

create table tbProdutos(
codprod int,
descricao varchar(150),
valor decimal(9,2),
dataEntrada date,
horaEntrada time,
quantidade decimal(9,2));

-- visualizando as tabelas criadas
show tables;

-- visualizando a estrutura das tabelas
desc tbfuncionarios;
desc tbusuarios;
desc tbProdutos;

-- cadastrando/inserindo registros nas tabelas

insert into tbfuncionarios (codfunc,nome,email,idade,rg,cpf,
	logradouro,numero,bairro,cidade,estado) values (1,'Pedro Antunes',
	'pedro.antunes@hotmail.com',25,'25.247.258-7',
	'235.258.847-88','Av. Dr. Antonio Bento','355',
	'Santo Amaro','São Paulo','São Paulo');

insert into tbusuarios(codusu,nome,senha)
	values(1,'pedro.antunes','123456');

insert into tbProdutos(codprod,descricao,valor,dataEntrada,horaEntrada,
	quantidade) 
	values(1,'Banana Prata',10.50,'2022-10-07','08:40:55',12.5);

insert into tbProdutos(codprod,descricao,valor,dataEntrada,horaEntrada,
	quantidade) 
	values(2,'Laranja',25.50,'2022-10-07','08:40:55',50.5);

insert into tbProdutos(codprod,descricao,valor,dataEntrada,horaEntrada,
	quantidade) 
	values(3,'Laranja',25.50,'2022-10-07','08:40:55',50.5);

insert into tbProdutos(codprod,descricao,valor,dataEntrada,horaEntrada,
	quantidade) 
	values(4,'Laranja',25.50,'2022-10-07','08:40:55',50.5);


-- visualizando os registros cadastrados/inseridos

select * from tbfuncionarios; 

select * from tbusuarios;

select * from tbProdutos;

-- alterar valores nos campos das tabelas


update tbProdutos set valor = valor * 1.10
	where codprod = 1;

update tbProdutos set descricao = 'Morango', valor = 5.25
	where codprod = 1;


select * from tbProdutos;

-- Apagando registros das tabelas

-- delete from tbProdutos where codprod = 1;

select * from tbProdutos;

