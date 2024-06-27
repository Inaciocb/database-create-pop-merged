CREATE DATABASE banco_deles;

USE banco_deles;

CREATE TABLE Atletas (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    sexo VARCHAR(10)
);

CREATE TABLE Times (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    noc VARCHAR(10)
);
CREATE TABLE Olimpiadas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jogos VARCHAR(255),
    ano INT,
    estacao VARCHAR(10),
    cidade VARCHAR(255)
);
CREATE TABLE Esportes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
);
CREATE TABLE Modalidades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    esporte_id INT,
    FOREIGN KEY (esporte_id) REFERENCES Esportes(id)
);
CREATE TABLE Participacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    atleta_id INT,
    time_id INT,
    olimpiada_id INT,
    modalidade_id INT,
    idade INT,
    altura FLOAT,
    peso FLOAT,
    medalha VARCHAR(255),
    FOREIGN KEY (atleta_id) REFERENCES Atletas(id),
    FOREIGN KEY (time_id) REFERENCES Times(id),
    FOREIGN KEY (olimpiada_id) REFERENCES Olimpiadas(id),
    FOREIGN KEY (modalidade_id) REFERENCES Modalidades(id)
);