drop database dbCasaApostas;

create database dbCasaApostas;

use dbCasaApostas;

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codusu));


create table tbJogadores(
codJog int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codJog));

create table tbTimes(
codTime int not null auto_increment,
nome varchar(100),
localidade varchar(100),
serie char(1),
codJog int not null,
primary key(codTime),
foreign key(codJog)references tbJogadores(codJog));

create table tbApostas(
codApt int not null auto_increment,
codTime int not null,
data date,
hora time,
valor decimal(9,2) default 0 check(valor > 0),
codusu int not null,
primary key(codApt),
foreign key(codTime)references tbTimes(codTime),
foreign key(codUsu)references tbUsuarios(codusu));

-- visualizar a estrutura das tabelas

desc tbusuarios;
desc tbJogadores;
desc tbTimes;
desc tbApostas;


-- inserindo registros nas tabelas

insert into tbusuarios(nome,email,cpf)
	values('Armando Felix','armando.felix@gmail.com',
		'258.125.247-77');
insert into tbusuarios(nome,email,cpf)
	values('Natalia Amoredo','natalia.amoredo@hotmail.com',
		'157.258.247-99');
insert into tbusuarios(nome,email,cpf)
	values('Leticia Romero','leticia.romero@gmail.com',
		'147.952.368.22');

insert into tbJogadores(nome,email,cpf)
	values('Edson Arantes do Nascimento',
		'edson.anascimento@hotmail.com',
		'124.145.257-85');
insert into tbJogadores(nome,email,cpf)
	values('Richarlison de Andrade',
		'richarlison.andrade@hotmail.com',
		'147.852.987-87');
insert into tbJogadores(nome,email,cpf)
	values('Vinícius José Paixão de Oliveira Júnior',
		'vinicius.jpojunior@gmail.com',
		'478.456.257-85');

insert into tbTimes(nome,localidade,serie,codJog)
	values('Santos FC','Santos-SP','A',1);
insert into tbTimes(nome,localidade,serie,codJog)
	values('Fluminense','Rio de Janeiro','A',2);
insert into tbTimes(nome,localidade,serie,codJog)
	values('Flamengo','Rio de Janeiro','A',3);

insert into tbApostas(codTime,data,hora,valor,codusu)
	values(1,'2022-11-28','11:14:00',5.00,1);
insert into tbApostas(codTime,data,hora,valor,codusu)
	values(2,'2022-11-28','11:26:55',2.00,2);
insert into tbApostas(codTime,data,hora,valor,codusu)
	values(3,'2022-11-28','11:27:00',3.00,3);

-- visualizando registros das tabelas

select * from tbusuarios;
select * from tbJogadores;
select * from tbTimes;
select * from tbApostas;
