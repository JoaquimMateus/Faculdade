--MATEUS jOAQUIM OLIVEIRA ROCHA
--1
CREATE TABLE plano(
id int primary key,
nome varchar(50) not null,
descricao TEXT,
preco numeric(10,2) not null,
qualidade varchar(20)
);

DROP TABLE PLANO

CREATE TABLE usuario(
id int primary key,
nome varchar(100) not null,
email varchar(100) NOT NULL,
data_nascimento date,
senha varchar(100) not null,
data_assinatura date,
fk_plano_id integer not null,
foreign key (fk_plano_id) references plano(id)
);

CREATE TABLE perfil(
id int primary key,
nome varchar(50) not null,
avatar varchar(255),
fk_usuario_id integer not null,
foreign key (fk_usuario_id) references usuario(id)
);

create table lista(
id int primary key,
nome varchar(50),
fk_usuario_id integer not null,
foreign key (fk_usuario_id) references usuario(id)
);

create table conteudo(
id int primary key,
titulo varchar(100) not null,
sinopse	text,
ano_lancamento integer,
duracao integer
);

create table avaliacao(
id int primary key,
nota integer,
comentario text,
fk_usuario_id integer not null,
fk_conteudo_id integer not null,
foreign key (fk_usuario_id) references usuario(id),
foreign key (fk_conteudo_id) references conteudo(id)
);

create table lista_conteudo(
primary key (fk_lista_id, fk_conteudo_id),
fk_lista_id integer,
fk_conteudo_id integer,
foreign key (fk_lista_id) references lista(id),
foreign key (fk_conteudo_id) references conteudo(id)
);

create table assiste(
primary key (fk_usuario_id, fk_conteudo_id),
fk_conteudo_id integer,
fk_usuario_id integer,
foreign key (fk_usuario_id) references usuario(id),
foreign key (fk_conteudo_id) references conteudo(id)
);

create table genero(
id int primary key,
nome varchar(50) not null
);

create table conteudo_genero(
fk_conteudo_id integer,
fk_genero_id integer,
primary key(fk_conteudo_id, fk_genero_id),
foreign key (fk_conteudo_id) references conteudo(id),
foreign key (fk_genero_id) references genero(id)
);

create table serie(
id int primary key,
titulo varchar(100) not null,
sinopse text,
ano_lancamento integer,
fk_conteudo_id integer,
foreign key (fk_conteudo_id) references conteudo(id)
);

create table episodio(
id int primary key,
titulo varchar(100) not null,
numero integer not null,
temporada integer not null,
duracao integer,
fk_serie_id integer not null,
foreign key (fk_serie_id) references serie(id)
);

select * from usuario

--2
insert into plano
values(1,'hd', null, 10)
insert into plano
values(2, 'hd', null, 10)
-- (primeiro valor foi por conta de ser o primeiro plano e segundo plano, primary key =1 e primary key =2, segunda inserção foi nomeando o plano, terceira foi nula, e a ultima um numero inteiro)

insert into usuario
values(1, 'mateus', 'mateusjoaquim@gmail.com', '2001-06-21', '1234', '1999-08-21', 1)
insert into usuario
values(2, 'andre', 'carlos@gmail.com', '2001-06-22', 1321, '1982-05-21', 2)
-- (primeiro valor foi por conta de ser o primeiro usuario e assim continuamente, primary key =1, segunda inserção foi o email, terceira foi nula, e a ultima um numero inteiro)


insert into perfil
values(1, 'mateus', 'lebron', 1)
insert into perfil
values(2, 'carlos', 'beethoven', 2)

insert into lista
values(1, 'filmes', 1)
insert into lista
values(2, 'filmes romanticos', 2)

insert into conteudo
values(1, 'eu sou a lenda', 'filme de guerra, com uma dose de drama, protagonizado por will smith', 2001-08-20, 2)
insert into conteudo
values(2, 'wolverine', 'wolverine', 2004-06-08, 3)

insert into avaliacao
values(1, 10, 'maluquice braba', 1, 1)
insert into avaliacao
values(2, 10, 'maluquice doida', 2, 2)

insert into lista_conteudo
values(1,1)
insert into lista_conteudo
values(2,2)

insert into assiste
values(1,1)
insert into assiste
values(2,2)

insert into genero
values(1, 'acao')
insert into genero
values(2, 'acao')

insert into conteudo_genero
values(1,1)
insert into conteudo_genero
values(2,2)

insert into serie
values(1, '13 reasons why', 'prisao', 2009-05-10, 1)
insert into serie
values(2, 'garotos detetives mortos', 'neil gaiman de sandman criou', 2024-03-12, 1)

insert into episodio
values(1, 'cobrança', 5, 1, 20, 2)
insert into episodio
values(1, 'rixa', 3, 2, 20, 1)


drop table 




ingridade referencial identificar o dominio que ela esteja