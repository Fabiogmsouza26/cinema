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


CREATE TABLE usuario_generos (
fkusuario INT,
FOREIGN KEY (fkusuario) REFERENCES usuario(id),
fkgeneros INT,
FOREIGN KEY (fkgeneros) REFERENCES generos(idGenero),
PRIMARY KEY(fkgeneros, fkusuario)
);

create table selecao_generos(
id int primary key auto_increment,
fkGenero int,
foreign key(fkGenero) references generos(idGenero)
);

insert into generos (genero) values
('Romance'),
('Western'),
('Terror'),
('Drama'),
('Ação');

select genero as 'Gêneros', count(fkGenero) as 'Número de seleções' from generos 
join selecao_generos where idGenero = fkGenero group by idGenero;

