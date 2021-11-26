
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
	id INT PRIMARY KEY AUTO_INCREMENT,
	genero VARCHAR(100),
    curtidas INT
); 


CREATE TABLE UsuarioGeneros (
fkusuario INT,
FOREIGN KEY (fkusuario) REFERENCES usuario(id),
fkgeneros INT,
FOREIGN KEY (fkgeneros) REFERENCES generos(id),
PRIMARY KEY(fkgeneros, fkusuario)
);

select * from usuario;

select * from generos;

insert into generos (genero) values
('western'),
('drama');

select * from generos;

select * from usuario;













