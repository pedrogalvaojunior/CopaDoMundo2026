-- Criando o Banco de Dados --
Create Database CopaDoMundo2026
Go

-- Desativando a contagem de Linhas --
Set NoCount On
Go

-- Acessando --
Use CopaDoMundo2026
Go

-- Criando a Tabela HistoricoDeJogos --
Create Table HistoricoJogos
 (CodigoHistoricoJogo Int Identity(1,1) Primary Key Clustered,
  CodigoSimulador Char(1) Not Null,
  CodigoJogo TinyInt Not Null,
  CodigoGrupoSorteio TinyInt Not Null,
  CodigoSelecao1 TinyInt Not Null,
  CodigoSelecao2 TinyInt Not Null,
  CodigoJogoNoGrupo TinyInt Not Null,
  GolsSelecao1 TinyInt Not Null,
  GolsSelecao2 TinyInt Not Null,
  CartoesAmareloSelecao1 TinyInt Not Null,
  CartoesAmareloSelecao2 TinyInt Not Null,
  CartoesVermelhoSelecao1 TinyInt Not Null,
  CartoesVermelhoSelecao2 TinyInt Not Null)
Go

-- Criando a Tabela HistoricoClassificacaoFinal --
Create Table HistoricoClassificacaoGeral
 (CodigoHistoricoClassificacaoGeral Int Identity(1,1) Primary Key Clustered,
  CodigoSimulador Char(1) Not Null,
  CodigoClassificacaoGeral TinyInt Not Null,
  PosicaoClassificacaoGeral TinyInt Default 0,
  CodigoSelecao TinyInt Not Null,
  Jogos TinyInt Default 0,
  Pontos TinyInt Default 0,
  Vitorias TinyInt Default 0,
  Empates TinyInt Default 0,
  Derrotas TinyInt Default 0,
  CartoesAmarelos TinyInt Default 0,
  CartoesVermelhos TinyInt Default 0,
  GolsPro Int Default 0,
  GolsContra Int Default 0,
  SaldoGols Int Default 0)
Go

-- Criando a Tabela HistoricoSimulacao --
Create Table HistoricoSimulacao
 (CodigoHistoricoSimulacao Int Identity(1,1) Primary Key Clustered,
  CodigoSimulador Char(1) Not Null,
  DataHistoricoSimulacao DateTime Default GetDate(),
  Jogo Varchar(100) Not Null,
  Placar Varchar(50) Not Null,
  SelecaoCampea Varchar(30),
  SelecaoVice Varchar(30))
Go

-- Criando a Tabela de Grupos --
Create Table Grupos
 (CodigoGrupo TinyInt Identity(1,1) Primary Key Clustered,
  SiglaGrupo Char(1))
Go

-- Criando a Tabela de Potes --
Create Table Potes
 (CodigoPote TinyInt Identity(1,1) Primary Key Clustered,
  DescricaoPote As (Concat('Pote ',CodigoPote)))
Go

-- Criando a Tabela de Selecoes --
Create Table Selecoes
(CodigoSelecao TinyInt Identity(1,1) Primary Key Clustered,
 CodigoPote TinyInt Not Null,
 NomeSelecao Varchar(30) Not Null,
 SiglaContinente Char(2))
Go

-- Criando a Tabela Sorteios --
Create Table Sorteios
 (CodigoSorteio TinyInt Identity(1,1) Primary Key Clustered,
  CodigoGrupo TinyInt Not Null,
  CodigoSelecao TinyInt Not Null,
  PosicaoGrupo TinyInt Not Null,
  SiglaContinente Char(2) Not Null)
Go

-- Populando as Tabelas --
-- Inserindo os 12 Grupos de Selecões --
Insert Into Grupos (SiglaGrupo) Values ('A'),('B'),('C'),('D'),('E'),('F'),('G'),('H'),('I'),('J'),('K'),('L')
Go

-- Inserindo os 4 Potes --
Insert Into Potes Default Values
Go 4

-- Inserindo as 48 Selecoes --
Insert Into Selecoes (NomeSelecao, CodigoPote, SiglaContinente, PosicaoRankingFifa, PontosRankingFifa)
Values ('México',1,'AC',15,1682.47),('Canadá',1,'AC',28,1554.97), ('Estados Unidos',1,'AC',14,1676.87),('Espanha',1,'EU',1,1877.18), ('França',1,'EU',3,1870), ('Inglaterra',1,'EU',4,1834.12), ('Argentina',1,'AS',2,1873.33), ('Brasil',1,'AS',5,1760.46), ('Portugal',1,'EU',6,1760.38), ('Holanda',1,'EU',7,1756.27), ('Bélgica',1,'EU',8,1730.71), ('Alemanha',1,'EU',9,1724.15),
('Croácia',2,'EU',10,1716.88), ('Marrocos',2,'AF',11,1713.22), ('Colômbia',2,'AS',13,1701.3), ('Uruguai',2,'AS',16,1677.62), ('Suíça',2,'EU',17,1654.69), ('Japão',2,'ASI',18,1650.11), ('Senegal',2,'AF',19,1648.69), ('Irã',2,'ASI',21,1614.75), ('Coreia do Sul',2,'ASI',22,1599.44), ('Equador',2,'AS',23,1589.38), ('Áustria',2,'EU',24,1585.5), ('Austrália',2,'ASI',26,1577.88),
('Panamá',3,'AC',30,1534.45), ('Noruega',3,'EU',29,1553.14), ('Egito',3,'AF',34,1518.19),  ('Argélia',3,'AF',35,1516.37),  ('Escócia',3,'EU',36,1506.77),  ('Paraguai',3,'AS',40,1494.77),  ('Costa do Marfim',3,'AF',42,1489.59), ('Tunísia',3,'AF',41,1494.49), ('Uzbequistão',3,'ASI',50,1462.03), ('Catar',3,'ASI',51,1461.6),('Arábia Saudita',3,'ASI',60,1428.74), ('África do Sul',3,'AF',61,1426.73),
('Jordânia',4,'ASI',66,1377.66), ('Cabo Verde',4,'AF',68,1367.95), ('Gana',4,'AF',72,1351.09), ('Curaçao',4,'AC',82,1302.7), ('Haiti',4,'AC',84,1294.49), ('Nova Zelândia',4,'OC',86,1279.25), ('Repescagem Uefa 1',4,'EU',0,0), ('Repescagem Uefa 2',4,'EU',0,0), ('Repescagem Uefa 3',4,'EU',0,0), ('Repescagem Uefa 4',4,'EU',0,0), ('Repescagem Mundial 1',4,'RM',0,0), ('Repescagem Mundial 2',4,'RM',0,0)
Go

-- Limpando a tabela de Sorteios --
If (Select Count(*) From Sorteios) >0
 Truncate Table Sorteios
Go

-- Inserindo as Seleções nos Grupos definidos no Sorteio da Fifa --
Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 1, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('México', 'África do Sul', 'Coreia do Sul','Repescagem Uefa 4')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 2, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Canadá','Repescagem Uefa 2','Catar','Suíça')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 3, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Brasil','Marrocos','Haiti','Escócia')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 4, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Estados Unidos', 'Paraguai', 'Austrália','Repescagem Uefa 3')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 5, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Alemanha', 'Curaçao', 'Costa do Marfim','Equador')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 6, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Holanda', 'Japão','Repescagem Uefa 2','Tunísia')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 7, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Bélgica', 'Egito', 'Irã', 'Nova Zelândia')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 8, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Espanha', 'Cabo Verde', 'Arábia Saudita', 'Uruguai')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 9, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('França', 'Senegal', 'Repescagem Mundial 2', 'Noruega')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 10, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Argentina', 'Argélia', 'Áustria', 'Jordânia')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 11, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Portugal', 'Repescagem Mundial 1', 'Uzbequistão', 'Colômbia')
Go

Insert Into Sorteios (CodigoGrupo, CodigoSelecao, PosicaoGrupo, SiglaContinente)
Select 12, CodigoSelecao, CodigoPote, SiglaContinente From Selecoes
Where NomeSelecao In ('Inglaterra', 'Croácia', 'Gana', 'Panamá')
Go

-- Consultando a formação completa de cada Grupo de Seleções --
;With CTEGrupoA (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
																						   And S.CodigoGrupo = 1),
CTEGrupoB (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
																						   And S.CodigoGrupo = 2),
CTEGrupoC (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
																						   And S.CodigoGrupo = 3),
CTEGrupoD (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 4),
CTEGrupoE (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 5),
CTEGrupoF (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 6),
 CTEGrupoG (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 7),
CTEGrupoH (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 8),
CTEGrupoI (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 9),
CTEGrupoJ (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 10),
CTEGrupoK (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 11),
CTEGrupoL (Posicao, NomeSelecao)
As
(Select PosicaoGrupo, SE.NomeSelecao From Sorteios S Inner Join Selecoes SE
                                                                                           On S.CodigoSelecao = SE.CodigoSelecao
 																						   And S.CodigoGrupo = 12)
Select Row_Number() Over(Order By A.Posicao) As 'Pote',
           A.NomeSelecao As 'Grupo A', B.NomeSelecao As 'Grupo B', 
           C.NomeSelecao As 'Grupo C', D.NomeSelecao As 'Grupo D',
           E.NomeSelecao As 'Grupo E', F.NomeSelecao As 'Grupo F',
		   G.NomeSelecao As 'Grupo G', H.NomeSelecao As 'Grupo H',
		   I.NomeSelecao As 'Grupo I', J.NomeSelecao As 'Grupo J',
		   K.NomeSelecao As 'Grupo K', L.NomeSelecao As 'Grupo L'
From CTEGrupoA A Inner Join CTEGrupoB B
                                On A.Posicao = B.Posicao
							   Inner Join CTEGrupoC C
                                On A.Posicao = C.Posicao
							   Inner Join CTEGrupoD D
                                On A.Posicao = D.Posicao
							   Inner Join CTEGrupoE E
                                On A.Posicao = E.Posicao
							   Inner Join CTEGrupoF F
                                On A.Posicao = F.Posicao
							   Inner Join CTEGrupoG G
                                On A.Posicao = G.Posicao
							   Inner Join CTEGrupoH H
                                On A.Posicao = H.Posicao
							   Inner Join CTEGrupoI I
                                On A.Posicao = I.Posicao
							   Inner Join CTEGrupoJ J
                                On A.Posicao = J.Posicao
							   Inner Join CTEGrupoK K
                                On A.Posicao = K.Posicao
							   Inner Join CTEGrupoL L
                                On A.Posicao = L.Posicao
Go