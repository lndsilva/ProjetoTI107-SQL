-- apagando o banco de dados criado
drop database dbLoja;

-- criando banco de dados loja
create database dbLoja;

-- acessando o banco de dados loja
use dbLoja;

-- criando as tabelas no banco de dados
create table tbUsuarios(
codusu int,
nome varchar(50),
senha varchar(50)
);

create table tbfuncionarios(
codfunc int,
nome varchar(100),
email varchar(100),
telefone char(10),
cpf char(14),
logradouro varchar(100),
numero char(10),
bairro varchar(50),
cidade varchar(50),
estado varchar(50),
cep char(9)
);

create table tbProdutos(
codProd int,
descricao varchar(100),
valor decimal(9,2),
dataEntrada date,
horaEntrada time,
quantidade int
);


-- visualizando a estrutura das tabelas
desc tbusuarios;
desc tbfuncionarios;
desc tbProdutos;

-- inserindo registros nas tabelas
insert into tbusuarios(codusu,nome,senha)
values(1,'maria.antunes','123456');

insert into tbusuarios(codusu,nome,senha)
values(2,'jose.amarildo','789456');

insert into tbfuncionarios(codfunc,nome,email,telefone,
cpf,logradouro,numero,bairro,cidade,estado,cep)
values(1,'Jose Amarildo da Cunha','jose.amarildo@hotmail.com',
'99458-4875','258.352.357-88','Rua Dr. Antonio Bento','355',
'Santo Amaro','São Paulo','São Paulo','04436-365');

insert into tbfuncionarios(codfunc,nome,email,telefone,
cpf,logradouro,numero,bairro,cidade,estado,cep)
values(2,'Maria Antunes da Costa','maria.antunes@gmail.com',
'98574-5478','147.248.247-55','Rua da Belezas','155',
'Vila das Belezas','São Paulo','São Paulo','02577-852');

insert into tbProdutos(codprod,descricao,
valor,dataEntrada,horaEntrada,quantidade)
values(100,'Banana',10.50,'2022-10-31',
'11:14:50',12);

insert into tbProdutos(codprod,descricao,
valor,dataEntrada,horaEntrada,quantidade)
values(101,'Morango',35.25,'2022-10-31',
'11:15:00',30);

-- visualizando os registros das tabelas
select * from tbusuarios;
select * from tbfuncionarios;
select * from tbProdutos;

select descricao, valor, valor * 1.10 as 'Aumento 10%' from tbProdutos;


-- Alterando valores das colunas

update tbProdutos set valor = valor * 1.25 
where codprod = 101;

update tbProdutos set valor = valor * 0.75
where codprod = 100;


select * from tbProdutos;


-- Apagando registros das linhas


-- Pesquisa por nome



-- Pesquisa por códido

