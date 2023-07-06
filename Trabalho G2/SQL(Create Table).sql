CREATE TABLE usuario(
	id serial primary key,
	nome varchar(30) not null,
	email varchar(50),
	cpf integer not null,
	nom_cart varchar(30),
	num_cart varchar(16),
	val_cart varchar(4)
);

CREATE TABLE usuario_login(
	id serial primary key,
	usuario varchar(20) not null,
	senha varchar(20) not null,
	id_usuario int
);

CREATE TABLE ajuda(
	id serial primary key,
	nome varchar,
	pergunta varchar(300),
	resposta varchar(300)	
);


CREATE TABLE ingresso(
	id serial primary key,
	nom_ingresso varchar(40) not null,
	data date,
	hora_event date,
	preco integer,
	qtd_disp integer,
	qtd_vend integer,
	qtd_devol integer
);

CREATE TABLE ingresso_inf(
	id serial primary key,
	informacao varchar(400),
	localidade varchar(80),
	programacao varchar(50),
	duracao integer,
	id_ingresso integer
);

CREATE TABLE ing_vendido(
	id serial primary key,
	usuario varchar (30) not null,
	data_vend varchar (10) not null,
	ing_vend varchar (40) not null
);

CREATE TABLE ingresso_vendido(
	id_ingresso Integer not null,
	id_vendido Integer not null
);

CREATE TABLE usuario_ajuda(
	id_usuario int,
	id_ajuda int
);













