CREATE DATABASE frameans;

USE frameans;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(150),
	email VARCHAR(100),
	senha VARCHAR(50),
	filme VARCHAR(150)
);

CREATE TABLE generos (
	idGenero INT PRIMARY KEY AUTO_INCREMENT,
	genero VARCHAR(100)
); 


CREATE TABLE UsuarioGeneros (
fkusuario INT,
FOREIGN KEY (fkusuario) REFERENCES usuario(id),
fkgeneros INT,
FOREIGN KEY (fkgeneros) REFERENCES generos(id),
PRIMARY KEY(fkgeneros, fkusuario)
);

create table curtida(
id int primary key auto_increment,
fkGenero int,
foreign key(fkGenero) references generos(id)
);

insert into generos (genero) values
('Romance'),
('Western'),
('Terror'),
('Drama'),
('Ação');


select g.genero, count(c.fkGenero) as curtidas from generos as g inner join curtida as c where g.id = c.fkGenero group by g.id;

select * from curtida;
select count(fkGenero) as curtidas, fkGenero from curtida where fkGenero = 1;

select * from generos;

insert into generos (genero) values
('western'),
('drama');


