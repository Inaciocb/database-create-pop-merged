CREATE DATABASE banco_merged;

USE banco_merged;

CREATE TABLE Atleta (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    sexo CHAR(1),
    PRIMARY KEY(id)
);

CREATE TABLE InscriçãoAtleta (
    id INT AUTO_INCREMENT,
    idade INT,
    peso FLOAT,
    altura FLOAT,
    AtletaId INT,
    PRIMARY KEY(id),
    FOREIGN KEY (AtletaId) REFERENCES Atleta(id)
);

CREATE TABLE CidadeSede (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE Temporada (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    PRIMARY KEY(id) 
);

CREATE TABLE Ano (
    id INT AUTO_INCREMENT,
    ano INT,
    PRIMARY KEY(id)
);

CREATE TABLE Olímpiada (
    id INT AUTO_INCREMENT,
    AnoId INT,
    TemporadaId INT,
    CidadeSedeId INT,
    FOREIGN KEY (AnoId) REFERENCES Ano(id),
    FOREIGN KEY (TemporadaId) REFERENCES Temporada(id),
    FOREIGN KEY (CidadeSedeId) REFERENCES CidadeSede(id),
    PRIMARY KEY(id) 
);

CREATE TABLE Medalha (
    id INT AUTO_INCREMENT,
    tipo VARCHAR(50),
    PRIMARY KEY(id) 
);

CREATE TABLE Esporte (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE Modalidade (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    EsporteId INT,
    FOREIGN KEY (EsporteId) REFERENCES Esporte(id),
    PRIMARY KEY(id)
);

CREATE TABLE Time (
    id INT,
    nome VARCHAR(255),
    sigla VARCHAR(10),
    PRIMARY KEY(id)
);


CREATE TABLE Participação (
    id INT AUTO_INCREMENT,
    InscriçãoAtletaId INT,
    OlimpíadaId INT,
    MedalhaId INT,
    TimeId INT,
    ModalidadeId INT,
    FOREIGN KEY (InscriçãoAtletaId) REFERENCES InscriçãoAtleta(id),
    FOREIGN KEY (OlimpíadaId) REFERENCES Olímpiada(id),
    FOREIGN KEY (MedalhaId) REFERENCES Medalha(id),
    FOREIGN KEY (TimeId) REFERENCES Time(id),
    FOREIGN KEY (ModalidadeId) REFERENCES Modalidade(id),
    PRIMARY KEY(id)
);