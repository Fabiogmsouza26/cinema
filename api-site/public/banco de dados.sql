CREATE DATABASE cinehall;

USE cinehall;

CREATE TABLE usuario (

idUsuario INT PRIMARY KEY,
Nome VARCHAR(150),
dataNasc DATE,
email VARCHAR(100),
whatsapp VARCHAR(14)
);

CREATE TABLE filmes (
Filme1 VARCHAR(100),
Filme2 VARCHAR(100),
Filme3 VARCHAR(100),
fk_usuarios INT,
FOREIGN KEY (fk_usuarios) REFERENCES usuario(idUsuario)
);

