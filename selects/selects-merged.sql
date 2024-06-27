USE banco_deles;

SELECT COUNT(*) FROM Atletas;

SELECT COUNT(*) FROM Participacao;

USE banco_nosso;

SELECT COUNT(*) FROM Atleta;

SELECT COUNT(*) FROM Participacao;

USE banco_merged;

SELECT COUNT(*) FROM Atleta;

SELECT COUNT(*) FROM Participacao;

SELECT * FROM banco_nosso.Temporada;

SELECT estacao FROM banco_deles.Olimpiadas;

SELECT COUNT(*) FROM banco_deles.Esportes;
SELECT COUNT(*) FROM banco_nosso.Esporte;

SELECT COUNT(*) FROM banco_merged.Esporte;

SELECT COUNT(cidade) FROM banco_deles.Olimpiadas;