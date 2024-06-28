### Consultas SQL para o banco de dados "banco_merged"

# Listar todos os atletas:
`sql
SELECT * FROM Atleta;
`

# Listar atletas de um determinado sexo:
`sql
SELECT * FROM Atleta WHERE sexo = 'M'; -- ou 'F' para feminino

# Obter informações detalhadas de um atleta específico:
`sql
SELECT a.*, ia.idade, ia.peso, ia.altura 
FROM Atleta a
JOIN InscriçãoAtleta ia ON a.id = ia.AtletaId
WHERE a.id = 1; -- Substituir pelo id do atleta desejado
`

# Listar todas as inscrições de atletas:
`sql
SELECT * FROM InscriçãoAtleta;
`

# Listar todas as cidades sede:
`sql
SELECT * FROM CidadeSede;
`

# Listar todas as temporadas:
`sql
SELECT * FROM Temporada;
`

# Listar todos os anos:
`sql
SELECT * FROM Ano;
`

# Listar todas as olimpíadas:
`sql
SELECT * FROM Olímpiada;
`

# Listar todos os tipos de medalhas:
`sql
SELECT * FROM Medalha;
`

# Listar todos os esportes:
`sql
SELECT * FROM Esporte;
`

# Listar todas as modalidades:
`sql
SELECT * FROM Modalidade;
`

# Listar todos os times:
`sql
SELECT * FROM Time;
`

# Listar todas as participações:
`sql
SELECT * FROM Participação;
`

# Obter detalhes de uma participação específica:
`sql
SELECT p.*, ia.idade, ia.peso, ia.altura, o.id AS olimpíada, m.tipo AS medalha, t.nome AS time, mod.nome AS modalidade
FROM Participação p
JOIN InscriçãoAtleta ia ON p.InscriçãoAtletaId = ia.id
JOIN Olímpiada o ON p.OlimpíadaId = o.id
JOIN Medalha m ON p.MedalhaId = m.id
JOIN Time t ON p.TimeId = t.id
JOIN Modalidade mod ON p.ModalidadeId = mod.id
WHERE p.id = 1; -- Substituir pelo id da participação desejada
`

# Listar todas as participações de um atleta específico:
`
SELECT p.*, o.id AS olimpíada, m.tipo AS medalha, t.nome AS time, mod.nome AS modalidade
FROM Participação p
JOIN InscriçãoAtleta ia ON p.InscriçãoAtletaId = ia.id
JOIN Atleta a ON ia.AtletaId = a.id
JOIN Olímpiada o ON p.OlimpíadaId = o.id
JOIN Medalha m ON p.MedalhaId = m.id
JOIN Time t ON p.TimeId = t.id
JOIN Modalidade mod ON p.ModalidadeId = mod.id
WHERE a.id = 1; -- Substituir pelo id do atleta desejado
`
