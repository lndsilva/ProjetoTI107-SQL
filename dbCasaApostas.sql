drop database dbCasaApostas;

create database dbCasaApostas;

use dbCasaApostas;

create table tbTimes(
codTime int not null auto_increment,
nome varchar(100),
localidade varchar(100),
serie char(1),
primary key(codTime));

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
