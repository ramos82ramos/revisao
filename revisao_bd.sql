create database erico_revisao;


use erico_revisao;

create table vendedor(
  id_vendedor int not null primary key,
  nome varchar (60),
  tel varchar (25),
  email varchar(60) 
);

show tables;

create table cliente(
 id_cliente int not null primary key,
 nome varchar(60),
 tel varchar (25),
 cpf varchar (20),
 rua varchar (100),
 cep varchar (10),
 cidade varchar (60),
 uf char (2),
 nr varchar (15),
 dt_cadatro date,
 dt_nascimento date
  );
  
 
 create table forma_pgto(
 id_forma int not null primary key,
 descricao varchar(60),
 qt int );


create table produto(
id_produto int not null primary key,
modelo varchar(60),
marca varchar (60),
imei varchar (60),
cor varchar (60),
qt int,
vl_custo decimal(14,2),
vl_venda decimal(14,2));


create table venda(
id_venda int not null primary key,
dt_venda date,
id_vendedor int,
id_cliente int,
id_forma int,
foreign key(id_vendedor)references vendedor(id_vendedor),
foreign key(id_cliente)references cliente(id_cliente),
foreign key(id_forma)references forma(id_forma)
);

create table itens_ordem(
id_venda int not null,
id_produto int not null,
qt_venda int not null,
vl_venda decimal(14,2),
primary key (id_venda,id_produto),
foreign key(id_produto)references produto(id_produto)
);
 

show tables