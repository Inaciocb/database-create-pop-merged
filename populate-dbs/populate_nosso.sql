USE banco_nosso;

INSERT INTO Atleta (Id, Nome, Sexo, Idade, Altura, Peso) VALUES
(111, 'Aqarab Abbas', 'M', 22, 190, 88),
(115, 'Ghulam Abbas', 'M', 24, 181, 74),
(121, 'Muhammad Abbas', 'M', 23, 168, 55),
(123, 'Sohail Abbas', 'M', 25, 178, 80),
(127, 'Shakeel Abbasi', 'M', 20, 165, 60),
(297, 'Lala Abdul Rashid', 'M', 38, 169, 91),
(298, 'Muhammad Abdul Rashid', 'M', 23, 181, 72),
(309, 'Qazi Abdul Waheed', 'M', 30, 168, 56),
(1102, 'Muhammad Afzal', 'M', 25, 169, 78),
(1104, 'Muhammad Afzal Manna', 'M', 25, 173, 76),
(1368, 'Bashir Ahmad', 'M', 21, 175, 65),
(1371, 'Maqsood Ahmad', 'M', 23, 178, 60),
(1375, 'Waseem Ahmad', 'M', 23, 165, 64),
(1386, 'Muhammad Akhlaq Ahmed', 'M', 20, 178, 69),
(1391, 'Bashir Ahmed', 'M', 25, 171, 67),
(1393, 'Fareed Ahmed', 'M', 23, 175, 61),
(1400, 'Ishtiaq Ahmed', 'M', 21, 170, 62),
(1402, 'Manzoor Ahmed', 'M', 24, 169, 75),
(1403, 'Masood Mirza Ahmed', 'M', 23, 180, 80),
(1406, 'Muhammad Anis Ahmed', 'M', 26, 177, 74),
(1407, 'Mumtaz Ahmed', 'M', 34, 178, 79),
(1408, 'Mushtaq Ahmed', 'M', 28, 170, 70),
(1410, 'Nasir Ahmed', 'M', 23, 165, 65),
(1412, 'Riaz Ahmed', 'M', 27, 150, 70),
(1414, 'Shahbaz Ahmed', 'M', 20, 175, 61),
(8429, 'Khalid Bashir', 'M', 20, 177, 65),
(8426, 'Atif Bashir', 'M', 29, 167, 62),
(8428, 'Ghulam Mustafa Bashir', 'M', 29, 180, 74),
(8431, 'Muhammad Bashir', 'M', 25, 168, 73),
(8432, 'Imtiaz Ahmed Bhatti', 'M', 19, 177, 87),
(8433, 'Mukhtar Bhatti', 'M', 21, 176, 73),
(8434, 'Muhammad Bashir Bhola Bhala', 'M', 25, 175, 90),
(8435, 'Muhammad Umar Bhutta', 'M', 19, 191, 66),
(8436, 'Syed Abbas Haider Bilgrami', 'M', 18, 167, 56),
(8437, 'Ahmed Naseer Bunda', 'M', 28, 165, 57);

INSERT INTO Temporada (Id, descricao) VALUES
(1, 'Summer'),
(2, 'Winter');

INSERT INTO Ano (Id, ano) VALUES
(1, 1996),
(2, 1992),
(3, 2010),
(4, 2000),
(5, 2004),
(6, 1960),
(7, 1964),
(8, 1952),
(9, 1988),
(10, 2012),
(11, 1984),
(12, 2008),
(13, 1968),
(14, 1948),
(15, 2016),
(16, 1956),
(17, 1972);

INSERT INTO Jogos (Id, TemporadaId, AnoId) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 9),
(16, 1, 2),
(17, 1, 4),
(18, 1, 15),
(19, 1, 6),
(20, 1, 7),
(21, 1, 16),
(22, 1, 8),
(23, 1, 17),
(24, 1, 1),
(25, 1, 10),
(26, 1, 12);

INSERT INTO Esporte (Id, nome) VALUES
(1, 'Athletics'),
(2, 'Alpine Skiing'),
(3, 'Hockey'),
(4, 'Wrestling'),
(5, 'Swimming');

INSERT INTO Evento (Id, EsporteId) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 3),
(7, 4),
(8, 5),
(9, 1),
(10, 4);

INSERT INTO TipoMedalha (id, nome) VALUES
(1, 'Ouro'),
(2, 'Prata'),
(3, 'Bronze'),
(4, 'Nenhuma');

INSERT INTO Medalha (Id, medalhatipo) VALUES
(1, 1),
(2, 2), 
(3, 3),
(4, 4);

INSERT INTO NOC (Id, Regiao, Anotacao) VALUES
(1, 'Pakistan', 'PAK');

INSERT INTO Time (Id, NOCId) VALUES
(1, 1),
(2, 1);

INSERT INTO Participacao (Id, AtletaId, JogosId, EsporteId, EventoId, MedalhaId, TimeId) VALUES
(1, 111, 1, 1, 1, 1, 1),
(2, 115, 2, 1, 1, 1, 1),
(3, 121, 3, 2, 2, 1, 1),
(4, 123, 4, 3, 3, 1, 1),
(5, 127, 5, 3, 3, 1, 1),
(6, 297, 6, 3, 3, 2, 1),
(7, 298, 7, 3, 3, 3, 1),
(8, 309, 8, 3, 3, 1, 1),
(9, 1102, 7, 4, 4, 1, 1),
(10, 1104, 7, 3, 3, 3, 1),
(11, 1368, 9, 1, 1, 1, 1),
(12, 1371, 4, 1, 1, 1, 1),
(13, 1375, 4, 3, 3, 1, 1),
(14, 1386, 2, 3, 3, 4, 1),
(15, 1391, 6, 3, 3, 2, 1),
(16, 1393, 10, 3, 3, 1, 1),
(17, 1400, 11, 3, 3, 2, 1),
(18, 1402, 2, 3, 3, 4, 1),
(19, 1403, 14, 3, 3, 1, 1),
(20, 1406, 4, 3, 3, 1, 1),
(21, 1407, 5, 5, 5, 1, 1),
(22, 1408, 11, 3, 3, 2, 1),
(23, 1410, 12, 3, 3, 1, 1),
(24, 1412, 13, 3, 3, 2, 1),
(25, 1414, 9, 3, 3, 1, 1),
(26, 8429, 15, 3, 6, 1, 2),
(27, 8429, 16, 3, 6, 4, 2),
(28, 8426, 17, 3, 6, 1, 2),
(29, 8428, 18, 4, 7, 1, 2),
(30, 8431, 19, 1, 9, 4, 2),
(31, 8431, 20, 1, 9, 1, 2),
(32, 8432, 21, 5, 10, 1, 2),
(33, 8433, 22, 5, 8, 1, 2),
(34, 8434, 23, 1, 9, 1, 2);
