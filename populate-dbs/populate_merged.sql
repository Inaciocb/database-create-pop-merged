
-- coloca os anos no banco mergeado
INSERT INTO banco_merged.Ano (ano) SELECT ano 
FROM banco_deles.Olimpiadas UNION
SELECT ano FROM banco_nosso.Ano ORDER BY ano ASC;

-- coloca os atletas no banco mergeado com nome e sexo
INSERT INTO banco_merged.Atleta (nome, sexo) SELECT nome, sexo FROM banco_deles.Atletas UNION
SELECT nome, sexo FROM banco_nosso.Atleta WHERE id IS NOT NULL;

-- coloca as temporadas no banco mergeado
INSERT INTO banco_merged.Temporada (nome) SELECT descricao FROM banco_nosso.Temporada UNION SELECT estacao FROM banco_deles.Olimpiadas;

-- coloca os esportes jogados no banco mergeado

INSERT INTO banco_merged.Esporte (nome) SELECT nome FROM banco_nosso.Esporte UNION SELECT nome FROM banco_deles.Esportes


-- coloca as cidades sedes no banco mergeado

INSERT INTO banco_merged.CidadeSede (nome) SELECT cidade FROM banco_deles.Olimpiadas;
-- arrumar isso aqui
-- coloca as participações de atletas no banco mergeado 

INSERT INTO banco_merged.InscriçãoAtleta (idade, peso, altura, AtletaId)
SELECT idade, peso, altura, id FROM banco_nosso.Atleta;

-- INSERT INTO banco_merged.InscriçãoAtleta (idade, peso, altura, AtletaId)
-- SELECT idade, peso, altura, a.id AS AtletaId
-- FROM banco_deles.Participacao
-- JOIN banco_deles.Atletas a ON a.id = atleta_id;

SELECT COUNT(*) FROM banco_merged.InscriçãoAtleta;
