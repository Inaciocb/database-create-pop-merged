# Consultas  para o banco de dados "banco_merged"

### Listar todos os atletas:
`
SELECT * FROM Atleta;
`

### Listar atletas de um determinado sexo:
`
SELECT * FROM Atleta WHERE sexo = 'M'; -- ou 'F' para feminino

### Obter informações detalhadas de um atleta específico:
`
SELECT a.*, ia.idade, ia.peso, ia.altura 
FROM Atleta a
JOIN InscriçãoAtleta ia ON a.id = ia.AtletaId
WHERE a.id = 1; -- Substituir pelo id do atleta desejado
`

### Listar todas as inscrições de atletas:
`
SELECT * FROM InscriçãoAtleta;
`

### Listar todas as cidades sede:
`
SELECT * FROM CidadeSede;
`

### Listar todas as temporadas:
`
SELECT * FROM Temporada;
`

### Listar todos os anos:
`
SELECT * FROM Ano;
`

### Listar todas as olimpíadas:
`
SELECT * FROM Olímpiada;
`

### Listar todos os tipos de medalhas:
`
SELECT * FROM Medalha;
`

### Listar todos os esportes:
`
SELECT * FROM Esporte;
`

### Listar todas as modalidades:
`
SELECT * FROM Modalidade;
`

### Listar todos os times:
`
SELECT * FROM Time;
`

### Listar todas as participações:
`
SELECT * FROM Participação;
`

### Obter detalhes de uma participação específica:
`
SELECT p.*, ia.idade, ia.peso, ia.altura, o.id AS olimpíada, m.tipo AS medalha, t.nome AS time, mod.nome AS modalidade
FROM Participação p
JOIN InscriçãoAtleta ia ON p.InscriçãoAtletaId = ia.id
JOIN Olímpiada o ON p.OlimpíadaId = o.id
JOIN Medalha m ON p.MedalhaId = m.id
JOIN Time t ON p.TimeId = t.id
JOIN Modalidade mod ON p.ModalidadeId = mod.id
WHERE p.id = 1; -- Substituir pelo id da participação desejada
`

### Listar todas as participações de um atleta específico:
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
