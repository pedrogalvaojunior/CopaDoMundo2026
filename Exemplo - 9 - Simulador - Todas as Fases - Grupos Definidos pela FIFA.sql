-- Acessando --
Use CopaDoMundo2026
Go

-- Desativando a Contagem de Linhas --
Set NoCount On
Go

Select Replicate('>>>',2) As 'Em execução - Preparando as tabelas internas'
Go

-- Limpando todas as tabelas, para garantir o armazenamento correto dos dados da nova simulação --
Truncate Table Grupos
Truncate Table Potes
Truncate Table Selecoes
Truncate Table Sorteios
Truncate Table Jogos
Truncate Table GrupoA
Truncate Table GrupoB
Truncate Table GrupoC
Truncate Table GrupoD
Truncate Table GrupoE
Truncate Table GrupoF
Truncate Table GrupoG
Truncate Table GrupoH
Truncate Table GrupoI
Truncate Table GrupoJ
Truncate Table GrupoK
Truncate Table GrupoL
Truncate Table ClassificadosDezesseisAvosDeFinal
Truncate Table ClassificadosOitavasDeFinal
Truncate Table ClassificadosQuartasDeFinal
Truncate Table ClassificadosSemiFinais
Truncate Table ClassificadosTerceiroLugar
Truncate Table ClassificadosFinal
Truncate Table ClassificacaoGeral
Go

Select Replicate('>>>',3) As 'Em execução - Populando as tabelas internas com os dados padrões'
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
Values ('Canadá',1,'AC',28,1554.97), ('Estados Unidos',1,'AC',14,1676.87), ('México',1,'AC',15,1682.47), ('Espanha',1,'EU',1,1877.18), ('França',1,'EU',3,1870), ('Inglaterra',1,'EU',4,1834.12), ('Argentina',1,'AS',2,1873.33), ('Brasil',1,'AS',5,1760.46), ('Portugal',1,'EU',6,1760.38), ('Holanda',1,'EU',7,1756.27), ('Bélgica',1,'EU',8,1730.71), ('Alemanha',1,'EU',9,1724.15),
('Croácia',2,'EU',10,1716.88), ('Marrocos',2,'AF',11,1713.22), ('Colômbia',2,'AS',13,1701.3), ('Uruguai',2,'AS',16,1677.62), ('Suíça',2,'EU',17,1654.69), ('Japão',2,'ASI',18,1650.11), ('Senegal',2,'AF',19,1648.69), ('Irã',2,'ASI',21,1614.75), ('Coreia do Sul',2,'ASI',22,1599.44), ('Equador',2,'AS',23,1589.38), ('Áustria',2,'EU',24,1585.5), ('Austrália',2,'ASI',26,1577.88),
('Panamá',3,'AC',30,1534.45), ('Noruega',3,'EU',29,1553.14), ('Egito',3,'AF',34,1518.19),  ('Argélia',3,'AF',35,1516.37),  ('Escócia',3,'EU',36,1506.77),  ('Paraguai',3,'AS',40,1494.77),  ('Costa do Marfim',3,'AF',42,1489.59), ('Tunísia',3,'AF',41,1494.49), ('Uzbequistão',3,'ASI',50,1462.03), ('Catar',3,'ASI',51,1461.6),('Arábia Saudita',3,'ASI',60,1428.74), ('África do Sul',3,'AF',61,1426.73),
('Jordânia',4,'ASI',66,1377.66), ('Cabo Verde',4,'AF',68,1367.95), ('Gana',4,'AF',72,1351.09), ('Curaçao',4,'AC',82,1302.7), ('Haiti',4,'AC',84,1294.49), ('Nova Zelândia',4,'OC',86,1279.25), ('Repescagem Uefa 1',4,'EU',0,0), ('Repescagem Uefa 2',4,'EU',0,0), ('Repescagem Uefa 3',4,'EU',0,0), ('Repescagem Uefa 4',4,'EU',0,0), ('Repescagem Mundial 1',4,'RM',0,0), ('Repescagem Mundial 2',4,'RM',0,0)
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

Select Replicate('>>>',4) As 'Em execução - Definição dos Grupos - Sorteio da Fifa'
Go

-- Populandos os respectivos Grupos de acordo com as Seleções Sorteios --
Insert Into GrupoA (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 1
Go

Insert Into GrupoB(CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 2
Go

Insert Into GrupoC (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 3
Go

Insert Into GrupoD (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 4
Go

Insert Into GrupoE (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 5
Go

Insert Into GrupoF (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 6
Go

Insert Into GrupoG (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 7
Go

Insert Into GrupoH (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 8
Go

Insert Into GrupoI (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 9
Go

Insert Into GrupoJ (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 10
Go

Insert Into GrupoK(CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 11
Go

Insert Into GrupoL (CodigoGrupoSorteio, PosicaoGrupoSorteio, CodigoSelecaoSorteio)
Select CodigoGrupo, PosicaoGrupo, CodigoSelecao From Sorteios
Where CodigoGrupo = 12
Go


Select Replicate('>>>',5) As 'Em execução - Grupos Definidos'
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

Select Replicate('>>>',6) As 'Em execução - Fase de Grupos - Simulação dos Jogos'
Go

-- Criando os 72 Jogos da Fase de Grupos --
Declare @CodigoGrupoSorteio TinyInt, @CodigoJogoNoGrupo TinyInt, @CodigoSelecao1 TinyInt, @CodigoSelecao2 TinyInt, @CodigoSelecao3 TinyInt, @CodigoSelecao4 TinyInt

Set @CodigoGrupoSorteio=1

While (Select Count(CodigoJogo) From Jogos) <=72
 Begin

   Set @CodigoSelecao1 = (Select CodigoSelecao From Sorteios Where CodigoGrupo = @CodigoGrupoSorteio And PosicaoGrupo=1)
   Set @CodigoSelecao2 = (Select CodigoSelecao From Sorteios Where CodigoGrupo = @CodigoGrupoSorteio And  PosicaoGrupo=2)
   Set @CodigoSelecao3 = (Select CodigoSelecao From Sorteios Where CodigoGrupo = @CodigoGrupoSorteio And  PosicaoGrupo=3)
   Set @CodigoSelecao4 = (Select CodigoSelecao From Sorteios Where CodigoGrupo = @CodigoGrupoSorteio And  PosicaoGrupo=4)
   
   Set @CodigoJogoNoGrupo = 1   
   Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
   Values (@CodigoGrupoSorteio,@CodigoSelecao1,@CodigoSelecao2, @CodigoJogoNoGrupo, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

   Set @CodigoJogoNoGrupo = 2
   Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
   Values (@CodigoGrupoSorteio,@CodigoSelecao3,@CodigoSelecao4, @CodigoJogoNoGrupo, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

   Set @CodigoJogoNoGrupo = 3
   Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
   Values (@CodigoGrupoSorteio,@CodigoSelecao1,@CodigoSelecao3, @CodigoJogoNoGrupo, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

   Set @CodigoJogoNoGrupo = 4
   Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
   Values (@CodigoGrupoSorteio,@CodigoSelecao2,@CodigoSelecao4, @CodigoJogoNoGrupo, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

   Set @CodigoJogoNoGrupo = 5
   Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
   Values (@CodigoGrupoSorteio,@CodigoSelecao1,@CodigoSelecao4, @CodigoJogoNoGrupo, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

   Set @CodigoJogoNoGrupo = 6
   Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
   Values (@CodigoGrupoSorteio,@CodigoSelecao2,@CodigoSelecao3, @CodigoJogoNoGrupo, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

  If (Select Count(CodigoJogo) From Jogos) In (6,12,18,24,30,36,42,48,54,60,66)
   Set @CodigoGrupoSorteio = @CodigoGrupoSorteio+1

 If (Select Count(CodigoJogo) From Jogos) = 72
  Break
  
End
Go

Select Replicate('>>>',7) As 'Em execução - Fase de Grupos - Resultados'
Go

-- Consultando os 72 Jogos da Fase de Grupo - Resultados e Vencedores --
Select Concat('Jogo nº ',J.CodigoJogo,' - ', 'Grupo ',G.SiglaGrupo, ' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Fase de Grupos',
           Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar,
		   Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S1.NomeSelecao,' Venceu')
		    When J.GolsSelecao1 = J.GolsSelecao2 Then 'Empate'
		   Else
		    Concat(S2.NomeSelecao,' Venceu')
           End As ' '
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Order By G.CodigoGrupo
Go

Select Replicate('>>>',8) As 'Em execução - Fase de Grupos - Atualizando a Tabela de Classificação'
Go

-- Atualizando as Classificações
Exec P_ClassificacaoGrupoA
Go

Exec P_ClassificacaoGrupoB
Go

Exec P_ClassificacaoGrupoC
Go

Exec P_ClassificacaoGrupoD
Go

Exec P_ClassificacaoGrupoE
Go

Exec P_ClassificacaoGrupoF
Go

Exec P_ClassificacaoGrupoG
Go

Exec P_ClassificacaoGrupoH
Go

Exec P_ClassificacaoGrupoI
Go

Exec P_ClassificacaoGrupoJ
Go

Exec P_ClassificacaoGrupoK
Go

Exec P_ClassificacaoGrupoL
Go

Select Replicate('>>>',9) As 'Em execução - Definindo as Seleções - Fase - Dezesseis Avos de Finais'
Go

-- Inserindo as Seleções Classificados de cada Grupo na Tabela ClassificadosDezesseisAvosDeFinal com as posições 1º e 2º --
Insert Into ClassificadosDezesseisAvosDeFinal (CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalNoGrupo)
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoA
Where ClassificacaoFinalGrupo In (1,2)
Union 
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoB
Where ClassificacaoFinalGrupo In (1,2)
Union 
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoC
Where ClassificacaoFinalGrupo In (1,2)
Union 
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoD
Where ClassificacaoFinalGrupo In (1,2)
Union 
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoE
Where ClassificacaoFinalGrupo In (1,2)
Union 
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoF
Where ClassificacaoFinalGrupo In (1,2)
Union 
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoG
Where ClassificacaoFinalGrupo In (1,2)
Union 
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoH
Where ClassificacaoFinalGrupo In (1,2)
Union
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoI
Where ClassificacaoFinalGrupo In (1,2)
Union
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoJ
Where ClassificacaoFinalGrupo In (1,2)
Union
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoK
Where ClassificacaoFinalGrupo In (1,2)
Union
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From GrupoL
Where ClassificacaoFinalGrupo In (1,2)
Order By CodigoGrupoSorteio, ClassificacaoFinalGrupo
Go

-- Identificando as 8 melhores seleções terceiras colocadas no geral, respeitando as condições Pontos, SaldoGols
;With CTE_OitoMelhoresTerceirasColocadas
As
(
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoA G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoB G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoC G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoD G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoE G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoF G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoG G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoH G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoI G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoJ G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoK G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
 Union
 Select G.CodigoGrupoSorteio,G.CodigoSelecaoSorteio, G.ClassificacaoFinalGrupo, G.Pontos, G.GolsPro, G.SaldoGols, S.PosicaoRankingFifa
 From GrupoL G Inner Join Selecoes S 
                        On G.CodigoSelecaoSorteio = S.CodigoSelecao
 Where ClassificacaoFinalGrupo = 3
)
-- Inserindo as 8 melhores seleções terceiras colocadas de cada Grupo na Tabela ClassificadosDezesseisAvosDeFinal, juntando-se com as 24 melhores --
Insert Into ClassificadosDezesseisAvosDeFinal (CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalNoGrupo)
Select CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalGrupo From CTE_OitoMelhoresTerceirasColocadas
Order By Pontos Desc, GolsPro Desc, SaldoGols Desc, PosicaoRankingFifa Desc
OffSet 0 Rows
Fetch Next 8 Rows Only
Go

-- Consultando as Seleções Classificadas para as Dezesseis Avos de Finais --
Select 'Classificada(o)' As 'Dezesseis Avos de Finais', G.SiglaGrupo As Grupo, S.NomeSelecao As 'Seleções', Concat(C.ClassificacaoFinalNoGrupo,'º') As 'Classificação'
From ClassificadosDezesseisAvosDeFinal C Inner Join Grupos G
															                 On C.CodigoGrupoSorteio = G.CodigoGrupo
                                                                            Inner Join Selecoes S
                                                                             On C.CodigoSelecaoSorteio = S.CodigoSelecao
Go

-- Criando Variável do Tipo Table para auxiliar criação dos Jogos da Fase Dezesseis Avos de Finais --
Declare @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Table
(CodigoSelecaoClassificadosDezesseisAvosDeFinal TinyInt Not Null)

Insert Into @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal
Select CodigoSelecaoSorteio From ClassificadosDezesseisAvosDeFinal

-- Criando os 16 Jogos da Fase de Dezesseis Avos de Finais --
-- Definindo os 8 jogos com definição direta entre 1º colocado versus 2º colocado --
Declare @CodigoSelecao1 TinyInt, @CodigoSelecao2 TinyInt

-- 1º do Grupo C X 2º do Grupo F --
Set @CodigoSelecao1=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And C.CodigoGrupoSorteio = 3 And C.ClassificacaoFinalNoGrupo = 1)

Set @CodigoSelecao2=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio 
                                                                                                         And C.CodigoGrupoSorteio = 6 And C.ClassificacaoFinalNoGrupo = 2)

Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

-- 1º do Grupo H X 2º do Grupo J --
Set @CodigoSelecao1=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And C.CodigoGrupoSorteio = 8 And C.ClassificacaoFinalNoGrupo = 1)

Set @CodigoSelecao2=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 10 And ClassificacaoFinalNoGrupo = 2)

Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

-- 2º do Grupo A X 2º do Grupo B --
Set @CodigoSelecao1=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 1 And ClassificacaoFinalNoGrupo = 2)

Set @CodigoSelecao2=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 2 And ClassificacaoFinalNoGrupo = 2)

Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

-- 2º do Grupo C X 1º do Grupo F --
Set @CodigoSelecao1=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And C.CodigoGrupoSorteio =  3 And C.ClassificacaoFinalNoGrupo = 2)

Set @CodigoSelecao2=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 6 And ClassificacaoFinalNoGrupo = 1)

Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

-- 2º do Grupo D X 2º do Grupo G --
Set @CodigoSelecao1=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio 
                                                                                                         And CodigoGrupoSorteio = 4 And ClassificacaoFinalNoGrupo = 2)

Set @CodigoSelecao2=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio 
                                                                                                         And CodigoGrupoSorteio = 7 And ClassificacaoFinalNoGrupo = 2)

Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

-- 2º do Grupo E X 2º do Grupo I --
Set @CodigoSelecao1=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 5 And ClassificacaoFinalNoGrupo = 2)

Set @CodigoSelecao2=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 9 And ClassificacaoFinalNoGrupo = 2)

Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

-- 2º do Grupo H X 1º do Grupo J --
Set @CodigoSelecao1=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 8 And ClassificacaoFinalNoGrupo = 2)

Set @CodigoSelecao2=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio 
                                                                                                         And CodigoGrupoSorteio = 10 And ClassificacaoFinalNoGrupo = 1)

Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

-- 2º do Grupo K X 2º do Grupo L --
Set @CodigoSelecao1=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 11 And ClassificacaoFinalNoGrupo = 2)

Set @CodigoSelecao2=(Select S.CodigoSelecao From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                                                         On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                                                                                         And CodigoGrupoSorteio = 12 And ClassificacaoFinalNoGrupo = 2)

Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

-- Definindo os demais 8 jogos de acordo com os critérios de cruzamento e regras definidos pelo Fifa --
    -- 1º do Grupo A X melhor 3º do Grupo C, E, F, H ou I -- 
    Set @CodigoSelecao1=(Select S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                      On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                            Where C.CodigoGrupoSorteio = 1 
                                            And C.ClassificacaoFinalNoGrupo = 1
                                            And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                            And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88))

    Set @CodigoSelecao2=(Select Top 1 S.CodigoSelecao 
                                           From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                      On S.CodigoSelecao = C.CodigoSelecaoSorteio
								           Where C.CodigoGrupoSorteio In (3,5,6,8,9) 
                                           And C.ClassificacaoFinalNoGrupo = 3
                                           And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                           And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88)
                                           Order By NewId())

If (@CodigoSelecao1 > 0 And @CodigoSelecao2 > 0) And Not Exists (Select CodigoJogo From Jogos Where CodigoSelecao1=@CodigoSelecao1 And CodigoSelecao2=@CodigoSelecao2 And CodigoJogo Between 80 And 88)
    Begin
        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
    End
      
    -- 1º do Grupo B X melhor 3º do Grupo E, F, G, I ou J --
    Set @CodigoSelecao1=(Select S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                          Where C.CodigoGrupoSorteio = 2 
                                          And C.ClassificacaoFinalNoGrupo = 1
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88))

    Set @CodigoSelecao2=(Select Top 1 S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
							              Where C.CodigoGrupoSorteio In (5,6,7,9,10) 
                                          And C.ClassificacaoFinalNoGrupo = 3
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88)
                                          Order By NewId())

If (@CodigoSelecao1 > 0 And @CodigoSelecao2 > 0) And Not Exists (Select CodigoJogo From Jogos Where CodigoSelecao1=@CodigoSelecao1 And CodigoSelecao2=@CodigoSelecao2 And CodigoJogo Between 80 And 88)
    Begin
        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
    End

    -- 1º do Grupo D X melhor 3º do Grupo B, E, F, I ou J --
    Set @CodigoSelecao1=(Select S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                          Where C.CodigoGrupoSorteio = 4 
                                          And C.ClassificacaoFinalNoGrupo = 1
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88))

    Set @CodigoSelecao2=(Select Top 1 S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
  								          Where C.CodigoGrupoSorteio In (2,5,6,9,10) 
                                          And C.ClassificacaoFinalNoGrupo = 3
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88)
                                          Order By NewId())

If (@CodigoSelecao1 > 0 And @CodigoSelecao2 > 0) And Not Exists (Select CodigoJogo From Jogos Where CodigoSelecao1=@CodigoSelecao1 And CodigoSelecao2=@CodigoSelecao2 And CodigoJogo Between 80 And 88)
    Begin
        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
    End

    -- 1º do Grupo E X melhor 3º do Grupo A, B, C, D ou F --
    Set @CodigoSelecao1=(Select S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                          Where C.CodigoGrupoSorteio = 5 
                                          And C.ClassificacaoFinalNoGrupo = 1
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88))

    Set @CodigoSelecao2=(Select Top 1 S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
  								          Where C.CodigoGrupoSorteio In (1,2,3,4,6) 
                                          And C.ClassificacaoFinalNoGrupo = 3
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88)
                                          Order By NewId())

If (@CodigoSelecao1 > 0 And @CodigoSelecao2 > 0) And Not Exists (Select CodigoJogo From Jogos Where CodigoSelecao1=@CodigoSelecao1 And CodigoSelecao2=@CodigoSelecao2 And CodigoJogo Between 80 And 88)
    Begin
        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
    End

    -- 1º do Grupo G X melhor 3º do Grupo A, E, H, I ou J --
    Set @CodigoSelecao1=(Select S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
                                          Where C.CodigoGrupoSorteio = 7 
                                          And C.ClassificacaoFinalNoGrupo = 1
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88))

    Set @CodigoSelecao2=(Select Top 1 S.CodigoSelecao
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
							              Where C.CodigoGrupoSorteio In (1,5,8,9,10) 
                                          And C.ClassificacaoFinalNoGrupo = 3
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88)
                                          Order By NewId())

If (@CodigoSelecao1 > 0 And @CodigoSelecao2 > 0) And Not Exists (Select CodigoJogo From Jogos Where CodigoSelecao1=@CodigoSelecao1 And CodigoSelecao2=@CodigoSelecao2 And CodigoJogo Between 80 And 88)
    Begin
        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
    End

    -- 1º do Grupo I X melhor 3º do Grupo C, D, F, G ou H --
    Set @CodigoSelecao1=(Select S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
								          Where C.CodigoGrupoSorteio = 9 
                                          And C.ClassificacaoFinalNoGrupo = 1
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88))

    Set @CodigoSelecao2=(Select Top 1 S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
  								          Where C.CodigoGrupoSorteio In (3,4,6,7,8) 
                                          And C.ClassificacaoFinalNoGrupo = 3
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88)
                                          Order By NewId())

If (@CodigoSelecao1 > 0 And @CodigoSelecao2 > 0) And Not Exists (Select CodigoJogo From Jogos Where CodigoSelecao1=@CodigoSelecao1 And CodigoSelecao2=@CodigoSelecao2 And CodigoJogo Between 80 And 88)
    Begin
        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
    End

    -- 1º do Grupo K X melhor 3º do Grupo D, E, I, J ou L --
    Set @CodigoSelecao1=(Select S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
								          Where C.CodigoGrupoSorteio = 11 
                                          And C.ClassificacaoFinalNoGrupo = 1
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88))

    Set @CodigoSelecao2=(Select Top 1 S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
  								          Where C.CodigoGrupoSorteio In (4,5,9,10,12) 
                                          And C.ClassificacaoFinalNoGrupo = 3
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88)
                                          Order By NewId())

If (@CodigoSelecao1 > 0 And @CodigoSelecao2 > 0) And Not Exists (Select CodigoJogo From Jogos Where CodigoSelecao1=@CodigoSelecao1 And CodigoSelecao2=@CodigoSelecao2 And CodigoJogo Between 80 And 88)
    Begin
        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
    End

    -- 1º do Grupo L X melhor 3º do Grupo E, H, I, J ou K --
    Set @CodigoSelecao1=(Select S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
								          Where C.CodigoGrupoSorteio = 12 
                                          And C.ClassificacaoFinalNoGrupo = 1
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88))

    Set @CodigoSelecao2=(Select Top 1 S.CodigoSelecao 
                                          From Selecoes S Inner Join ClassificadosDezesseisAvosDeFinal C 
                                                                     On S.CodigoSelecao = C.CodigoSelecaoSorteio
  								          Where C.CodigoGrupoSorteio In (5,8,9,10,11) 
                                          And C.ClassificacaoFinalNoGrupo = 3
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 80 And 88)
                                          And C.CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 80 And 88)
							              Order By NewID())

    If (@CodigoSelecao1 > 0 And @CodigoSelecao2 > 0) And Not Exists (Select CodigoJogo From Jogos Where CodigoSelecao1=@CodigoSelecao1 And CodigoSelecao2=@CodigoSelecao2 And CodigoJogo Between 80 And 88)
    Begin
        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)
        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
    End

    If (Select Count(CodigoSelecaoClassificadosDezesseisAvosDeFinal) From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal) >=1
    Begin
     While (Select Count(CodigoSelecaoClassificadosDezesseisAvosDeFinal) From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal) >=1
      Begin

        Set @CodigoSelecao1 = (Select Top 1 CodigoSelecaoClassificadosDezesseisAvosDeFinal From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal)
        Set @CodigoSelecao2 = (Select Top 1 CodigoSelecaoClassificadosDezesseisAvosDeFinal From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal Order By CodigoSelecaoClassificadosDezesseisAvosDeFinal Desc)

        Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
        Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)

        Delete From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal
        Where CodigoSelecaoClassificadosDezesseisAvosDeFinal In (@CodigoSelecao1, @CodigoSelecao2)  

        If (Select Count(CodigoSelecaoClassificadosDezesseisAvosDeFinal) From @TabelaAuxiliarJogosClassificadosDezesseisAvosDeFinal) = 0
         Break
       End 
     End
Go

-- Eliminando a ocorrência de possíveis empates nos Jogos de Dezesseis Avos de Finais --
If (Select Count(CodigoJogo) From Jogos Where CodigoJogo Between 73 And 88 And GolsSelecao1 = GolsSelecao2) >=1
Begin

 Select 'Ocorreu empate(s) no(s) seguinte(s) jogos' As 'Dezesseis Avos de Finais',' ' As 'Placar'
 Union All
 Select Concat('Jogo nº ',J.CodigoJogo,' - ', 'Grupo ',G.SiglaGrupo, ' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Dezesseis Avos de Finais',
            Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar
 From Jogos J Inner Join Grupos G
                       On J.CodigoGrupoSorteio = G.CodigoGrupo
                      Inner Join Selecoes S1
                       On J.CodigoSelecao1 = S1.CodigoSelecao
                      Inner Join Selecoes S2
                       On J.CodigoSelecao2 = S2.CodigoSelecao
 Where J.CodigoJogo In (Select CodigoJogo From Jogos Where CodigoJogo Between 73 And 88 And GolsSelecao1 = GolsSelecao2)

 -- Declarando a Variável do Tipo Tabela @JogosComEmpates para armazenar o código dos jogos empatados --
 Declare @JogosComEmpates Table
 (CodigoJogo TinyInt Primary Key,
  PontosRankingFifaSelecao1 Int,
  PontosRankingFifaSelecao2 Int)

  Insert Into @JogosComEmpates (CodigoJogo, PontosRankingFifaSelecao1, PontosRankingFifaSelecao2)
  Select CodigoJogo, S1.PontosRankingFifa, S2.PontosRankingFifa
  From Jogos J Inner Join Selecoes S1
                          On J.CodigoSelecao1 = S1.CodigoSelecao
                         Inner Join Selecoes S2
                          On J.CodigoSelecao2 = S2.CodigoSelecao
  Where J.CodigoJogo Between 73 And 88 And J.GolsSelecao1 = J.GolsSelecao2

  Select 'Prorrogação ou Penaltys serão realizados.' As 'Dezesseis Avos de Finais'
 
  Declare @PontosRankingFifaSelecao1 Int, @PontosRankingFifaSelecao2 Int, @GolsSelecao1 TinyInt, @GolsSelecao2 TinyInt

  While (Select Count(CodigoJogo) From @JogosComEmpates) >=1
   Begin
   
    Set @PontosRankingFifaSelecao1 = (Select Top 1 PontosRankingFifaSelecao1 From @JogosComEmpates)
    Set @PontosRankingFifaSelecao2 = (Select Top 1 PontosRankingFifaSelecao2 From @JogosComEmpates)

    Set @GolsSelecao1 = Rand()*Rand()*8
    Set @GolsSelecao2 = Rand()*Rand()*8

    If ((Select Round(Convert(Float,Rand()),2)) > 0.5 And (@PontosRankingFifaSelecao1 <> @PontosRankingFifaSelecao2))
     Begin
     
     If @GolsSelecao1 <> @GolsSelecao2     
     Begin
      Select 'A prorrogação está sendo realizada.' As 'Dezesseis Avos de Finais - Prorrogação'
       
       Update Jogos
       Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
              GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
              ProrrogacaoOuPenaltys = 'PE'
       From Jogos J
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)

       Delete From @JogosComEmpates
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)
      End
     End
    
    If ((Select Round(Convert(Float,Rand()),2)) Between 0.3 And 0.5 And (@PontosRankingFifaSelecao1 = @PontosRankingFifaSelecao2))
     Begin
     
      If @GolsSelecao1 <> @GolsSelecao2
      Begin
       Select 'Os penaltys estão sendo realizados.' As 'Dezesseis Avos de Finais - Penaltys'
       
       Update Jogos
       Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
              GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
              ProrrogacaoOuPenaltys = 'PE'
       From Jogos J
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)

       Delete From @JogosComEmpates
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)
      End
     End
    End
  End
Go

-- Consultando os Jogos da Fase Dezesseis Avos de Finais - Resultados e Vencedores --
Select Concat('Jogo nº ',J.CodigoJogo,' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Fase Dezesseis Avos de Finais',
           Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar,
		   Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
		    When J.GolsSelecao2 > J.GolsSelecao1 Then Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
           End As 'Vencedor'
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo Between 73 And 88
Order By J.CodigoJogo
Go

Select Replicate('>>>',10) As 'Em execução - Definindo as Seleções - Fase - Oitavas de Final'
Go

-- Inserindo as Seleções Classificadas para as Oitavas de Finais --
Insert Into ClassificadosOitavasDeFinal(CodigoGrupoSorteio, CodigoSelecaoSorteio, ClassificacaoFinalNoGrupo)
Select G.CodigoGrupo, 
           Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then S1.CodigoSelecao
		    When J.GolsSelecao2 > J.GolsSelecao1 Then S2.CodigoSelecao
           End As CodigoSelecaoSorteio,
           C.ClassificacaoFinalNoGrupo
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
                    Inner Join ClassificadosDezesseisAvosDeFinal C
                     On C.CodigoSelecaoSorteio = J.CodigoSelecao1
                     Or C.CodigoSelecaoSorteio = J.CodigoSelecao2
Where J.CodigoJogo Between 73 And 88
Order By J.CodigoJogo
Go

-- Consultando as Seleções Classificadas para as Oitavas de Finais --
Select 'Classificada(o)' As 'Oitavas de Final', G.SiglaGrupo As Grupo, S.NomeSelecao As 'Seleções', Concat(C.ClassificacaoFinalNoGrupo,'º') As 'Classificação'
From ClassificadosOitavasDeFinal C Inner Join Grupos G
															On C.CodigoGrupoSorteio = G.CodigoGrupo
                                                            Inner Join Selecoes S
                                                             On C.CodigoSelecaoSorteio = S.CodigoSelecao
Go

Select Replicate('>>>',11) As 'Em execução - Fase - Oitavas de Final - Simulando os Jogos'
Go

-- Criando os 8 Jogos da Fase de Oitavas de Final --
Declare @CodigoSelecao1 TinyInt, @CodigoSelecao2 TinyInt

Set @CodigoSelecao1 = 1
Set @CodigoSelecao2 = 1

While (Select Count(CodigoJogo) From Jogos) <= 96
 Begin
 
  Set @CodigoSelecao1 = (Select Top 1 CodigoSelecaoSorteio From ClassificadosDezesseisAvosDeFinal 
                                           Where CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 89 And 96)
                                           And CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 89 And 96)
                                           Order By NewId())                                               

  Set @CodigoSelecao2 = (Select Top 1 CodigoSelecaoSorteio From ClassificadosDezesseisAvosDeFinal 
                                           Where CodigoSelecaoSorteio Not In (Select CodigoSelecao2 From Jogos Where CodigoJogo Between 89 And 96)
                                           And CodigoSelecaoSorteio Not In (Select CodigoSelecao1 From Jogos Where CodigoJogo Between 89 And 96)
                                           Order By NewId())
 
  If @CodigoSelecao1 <> @CodigoSelecao2
   Begin
    Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
    Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
  End

  If (Select Count(CodigoJogo) From Jogos) = 96
   Break
End
Go

Select Replicate('>>>',12) As 'Em execução - Fase - Oitavas de Final - Análise de Empates'
Go

-- Eliminando a ocorrência de possíveis empates nos Jogos de Oitavas de Final --
If (Select Count(CodigoJogo) From Jogos Where CodigoJogo Between 89 And 96 And GolsSelecao1 = GolsSelecao2) >=1
Begin

 Select 'Ocorreu empate(s) no(s) seguinte(s) jogos' As 'Oitavas de Final',' ' As 'Placar'
 Union All
 Select Concat('Jogo nº ',J.CodigoJogo,' - ', 'Grupo ',G.SiglaGrupo, ' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Oitavas de Final',
            Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar
 From Jogos J Inner Join Grupos G
                       On J.CodigoGrupoSorteio = G.CodigoGrupo
                      Inner Join Selecoes S1
                       On J.CodigoSelecao1 = S1.CodigoSelecao
                      Inner Join Selecoes S2
                       On J.CodigoSelecao2 = S2.CodigoSelecao
 Where J.CodigoJogo In (Select CodigoJogo From Jogos Where CodigoJogo Between 89 And 96 And GolsSelecao1 = GolsSelecao2)

 -- Declarando a Variável do Tipo Tabela @JogosComEmpates para armazenar o código dos jogos empatados --
 Declare @JogosComEmpates Table
 (CodigoJogo TinyInt Primary Key,
  PontosRankingFifaSelecao1 Int,
  PontosRankingFifaSelecao2 Int)

  Insert Into @JogosComEmpates (CodigoJogo, PontosRankingFifaSelecao1, PontosRankingFifaSelecao2)
  Select CodigoJogo, S1.PontosRankingFifa, S2.PontosRankingFifa
  From Jogos J Inner Join Selecoes S1
                          On J.CodigoSelecao1 = S1.CodigoSelecao
                         Inner Join Selecoes S2
                          On J.CodigoSelecao2 = S2.CodigoSelecao
  Where J.CodigoJogo Between 89 And 96 And J.GolsSelecao1 = J.GolsSelecao2

  Select 'Prorrogação ou Penaltys serão realizados.' As 'Dezesseis Avos de Finais'
 
  Declare @PontosRankingFifaSelecao1 Int, @PontosRankingFifaSelecao2 Int, @GolsSelecao1 TinyInt, @GolsSelecao2 TinyInt

  While (Select Count(CodigoJogo) From @JogosComEmpates) >=1
   Begin
   
    Set @PontosRankingFifaSelecao1 = (Select Top 1 PontosRankingFifaSelecao1 From @JogosComEmpates)
    Set @PontosRankingFifaSelecao2 = (Select Top 1 PontosRankingFifaSelecao2 From @JogosComEmpates)

    Set @GolsSelecao1 = Rand()*Rand()*8
    Set @GolsSelecao2 = Rand()*Rand()*8

    If ((Select Round(Convert(Float,Rand()),2)) > 0.5 And (@PontosRankingFifaSelecao1 <> @PontosRankingFifaSelecao2))
     Begin
     
     If @GolsSelecao1 <> @GolsSelecao2     
     Begin
      Select 'A prorrogação está sendo realizada.' As 'Dezesseis Avos de Finais - Prorrogação'
       
       Update Jogos
       Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
              GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
              ProrrogacaoOuPenaltys = 'PE'
       From Jogos J
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)

       Delete From @JogosComEmpates
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)
      End
     End
    
    If ((Select Round(Convert(Float,Rand()),2)) Between 0.3 And 0.5 And (@PontosRankingFifaSelecao1 = @PontosRankingFifaSelecao2))
     Begin
     
      If @GolsSelecao1 <> @GolsSelecao2
      Begin
       Select 'Os penaltys estão sendo realizados.' As 'Dezesseis Avos de Finais - Penaltys'
       
       Update Jogos
       Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
              GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
              ProrrogacaoOuPenaltys = 'PE'
       From Jogos J
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)

       Delete From @JogosComEmpates
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)
      End
     End
    End
  End
Go

Select Replicate('>>>',13) As 'Em execução - Fase - Oitavas de Final - Resultados'
Go

-- Consultando os Jogos da Fase Oitavas de Final - Resultados e Vencedores --
Select Concat('Jogo nº ',J.CodigoJogo,' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Oitavas de Final',
           Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar,
		   Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
		    When J.GolsSelecao2 > J.GolsSelecao1 Then Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
           End As 'Vencedor'
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo Between 89 And 96
Order By J.CodigoJogo
Go

Select Replicate('>>>',14) As 'Em execução - Fase - Quartas de Final - Definindo as Seleções Classificadas'
Go

Select Replicate('>>>',15) As 'Em execução - Fase - Quartas de Final - Seleções Classificadas'
Go

-- Inserindo as Seleções Classificadas para as Quartas de Final --
Insert Into ClassificadosQuartasDeFinal
Select G.CodigoGrupo, 
           Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then S1.CodigoSelecao
		    When J.GolsSelecao2 > J.GolsSelecao1 Then S2.CodigoSelecao
           End As CodigoSelecaoSorteio
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo Between 89 And 96
Order By J.CodigoJogo
Go

-- Consultando --
Select 'Classificada(o)' As 'Quartas de Final', S.NomeSelecao As 'Seleções' 
From ClassificadosQuartasDeFinal Q Inner Join Selecoes S
															 On Q.CodigoSelecaoSorteio = S.CodigoSelecao
Go

Select Replicate('>>>',16) As 'Em execução - Fase - Quartas de Final - Simulando os Jogos'
Go

-- Criando os 4 Jogos da Fase de Quartas de Final --
Declare @CodigoQuartasDeFinal1 TinyInt, @CodigoQuartasDeFinal2 TinyInt, @CodigoSelecao1 TinyInt, @CodigoSelecao2 TinyInt

Set @CodigoQuartasDeFinal1 = 1
Set @CodigoQuartasDeFinal2 = 2

Set @CodigoSelecao1=1
Set @CodigoSelecao2=1

While @CodigoQuartasDeFinal1 <=7
 Begin
 
  Set @CodigoSelecao1 = (Select CodigoSelecaoSorteio From ClassificadosQuartasDeFinal Where CodigoQuartasDeFinal = @CodigoQuartasDeFinal1)
  Set @CodigoSelecao2 = (Select CodigoSelecaoSorteio From ClassificadosQuartasDeFinal Where CodigoQuartasDeFinal = @CodigoQuartasDeFinal2)
  
  Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
  Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
  
  Set @CodigoQuartasDeFinal1 = @CodigoQuartasDeFinal1 + 2
  Set @CodigoQuartasDeFinal2 = @CodigoQuartasDeFinal2 + 2

End
Go

Select Replicate('>>>',17) As 'Em execução - Fase - Quartas de Final - Análise de Empates'
Go

-- Eliminando a ocorrência de possíveis empates nos Jogos de Quartas de Final --
If (Select Count(CodigoJogo) From Jogos Where CodigoJogo Between 97 And 100 And GolsSelecao1 = GolsSelecao2) >=1
Begin

 Select 'Ocorreu empate(s) no(s) seguinte(s) jogos' As 'Quartas de Final',' ' As 'Placar'
 Union All
 Select Concat('Jogo nº ',J.CodigoJogo,' - ', 'Grupo ',G.SiglaGrupo, ' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Quartas de Final',
            Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar
 From Jogos J Inner Join Grupos G
                       On J.CodigoGrupoSorteio = G.CodigoGrupo
                      Inner Join Selecoes S1
                       On J.CodigoSelecao1 = S1.CodigoSelecao
                      Inner Join Selecoes S2
                       On J.CodigoSelecao2 = S2.CodigoSelecao
 Where J.CodigoJogo In (Select CodigoJogo From Jogos Where CodigoJogo Between 97 And 100 And GolsSelecao1 = GolsSelecao2)

 -- Declarando a Variável do Tipo Tabela @JogosComEmpates para armazenar o código dos jogos empatados --
 Declare @JogosComEmpates Table
 (CodigoJogo TinyInt Primary Key,
  PontosRankingFifaSelecao1 Int,
  PontosRankingFifaSelecao2 Int)

  Insert Into @JogosComEmpates (CodigoJogo, PontosRankingFifaSelecao1, PontosRankingFifaSelecao2)
  Select CodigoJogo, S1.PontosRankingFifa, S2.PontosRankingFifa
  From Jogos J Inner Join Selecoes S1
                          On J.CodigoSelecao1 = S1.CodigoSelecao
                         Inner Join Selecoes S2
                          On J.CodigoSelecao2 = S2.CodigoSelecao
  Where J.CodigoJogo Between 97 And 100 And J.GolsSelecao1 = J.GolsSelecao2

  Select 'Prorrogação ou Penaltys serão realizados.' As 'Dezesseis Avos de Finais'
 
  Declare @PontosRankingFifaSelecao1 Int, @PontosRankingFifaSelecao2 Int, @GolsSelecao1 TinyInt, @GolsSelecao2 TinyInt

  While (Select Count(CodigoJogo) From @JogosComEmpates) >=1
   Begin
   
    Set @PontosRankingFifaSelecao1 = (Select Top 1 PontosRankingFifaSelecao1 From @JogosComEmpates)
    Set @PontosRankingFifaSelecao2 = (Select Top 1 PontosRankingFifaSelecao2 From @JogosComEmpates)

    Set @GolsSelecao1 = Rand()*Rand()*8
    Set @GolsSelecao2 = Rand()*Rand()*8

    If ((Select Round(Convert(Float,Rand()),2)) > 0.5 And (@PontosRankingFifaSelecao1 <> @PontosRankingFifaSelecao2))
     Begin
     
     If @GolsSelecao1 <> @GolsSelecao2     
     Begin
      Select 'A prorrogação está sendo realizada.' As 'Dezesseis Avos de Finais - Prorrogação'
       
       Update Jogos
       Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
              GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
              ProrrogacaoOuPenaltys = 'PE'
       From Jogos J
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)

       Delete From @JogosComEmpates
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)
      End
     End
    
    If ((Select Round(Convert(Float,Rand()),2)) Between 0.3 And 0.5 And (@PontosRankingFifaSelecao1 = @PontosRankingFifaSelecao2))
     Begin
     
      If @GolsSelecao1 <> @GolsSelecao2
      Begin
       Select 'Os penaltys estão sendo realizados.' As 'Dezesseis Avos de Finais - Penaltys'
       
       Update Jogos
       Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
              GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
              ProrrogacaoOuPenaltys = 'PE'
       From Jogos J
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)

       Delete From @JogosComEmpates
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)
      End
     End
    End
  End
Go

Select Replicate('>>>',18) As 'Em execução - Fase - Quartas de Final - Resultados'
Go

-- Consultando os Jogos da Fase Quartas de Final - Resultados e Vencedores --
Select Concat('Jogo nº ',J.CodigoJogo,' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Quartas de Final',
           Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar,
		   Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
		    When J.GolsSelecao2 > J.GolsSelecao1 Then Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
           End As 'Vencedor'
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo Between 97 And 100
Order By J.CodigoJogo
Go

Select Replicate('>>>',19) As 'Em execução - Fase - Semi Final - Definindo as Seleções Classificadas'
Go

-- Inserindo as Seleções Classificadas para as Semi de Finais --
Insert Into ClassificadosSemiFinais
Select G.CodigoGrupo, 
           Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then S1.CodigoSelecao
		    When J.GolsSelecao2 > J.GolsSelecao1 Then S2.CodigoSelecao
           End As CodigoSelecaoSorteio
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo Between 97 And 100
Order By J.CodigoJogo
Go

-- Consultando --
Select 'Classificada(o)' As 'Semi Final' ,S.NomeSelecao As 'Seleções'
From ClassificadosSemiFinais Q Inner Join Selecoes S
                                                     On Q.CodigoSelecaoSorteio = S.CodigoSelecao
Go

Select Replicate('>>>',20) As 'Em execução - Fase - Semi Final - Simulando os Jogos'
Go

-- Criando os 2 Jogos da Fase de Semi Final --
Declare @CodigoSemiFinal1 TinyInt, @CodigoSemiFinal2 TinyInt, @CodigoSelecao1 TinyInt, @CodigoSelecao2 TinyInt

Set @CodigoSemiFinal1 = 1
Set @CodigoSemiFinal2 = 2

Set @CodigoSelecao1=1
Set @CodigoSelecao2=1

While @CodigoSemiFinal1 <=3
 Begin
 
  Set @CodigoSelecao1 = (Select CodigoSelecaoSorteio From ClassificadosSemiFinais Where CodigoSemiFinais = @CodigoSemiFinal1)
  Set @CodigoSelecao2 = (Select CodigoSelecaoSorteio From ClassificadosSemiFinais Where CodigoSemiFinais = @CodigoSemiFinal2)
  
  Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
  Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*Rand()*10,Rand()*Rand()*10,Rand()*Rand()*4,Rand()*Rand()*4)
  
  Set @CodigoSemiFinal1 = @CodigoSemiFinal1 + 2
  Set @CodigoSemiFinal2 = @CodigoSemiFinal2 + 2

End
Go

Select Replicate('>>>',21) As 'Em execução - Fase - Semi Final - Análise de Empates'
Go

-- Eliminando a ocorrência de possíveis empates nos Jogos de Semi Final --
If (Select Count(CodigoJogo) From Jogos Where CodigoJogo Between 101 And 102 And GolsSelecao1 = GolsSelecao2) >=1
Begin

 Select 'Ocorreu empate(s) no(s) seguinte(s) jogos' As 'Semi Final',' ' As 'Placar'
 Union All
 Select Concat('Jogo nº ',J.CodigoJogo,' - ', 'Grupo ',G.SiglaGrupo, ' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Semi Final',
            Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar
 From Jogos J Inner Join Grupos G
                       On J.CodigoGrupoSorteio = G.CodigoGrupo
                      Inner Join Selecoes S1
                       On J.CodigoSelecao1 = S1.CodigoSelecao
                      Inner Join Selecoes S2
                       On J.CodigoSelecao2 = S2.CodigoSelecao
 Where J.CodigoJogo In (Select CodigoJogo From Jogos Where CodigoJogo Between 101 And 102 And GolsSelecao1 = GolsSelecao2)

 -- Declarando a Variável do Tipo Tabela @JogosComEmpates para armazenar o código dos jogos empatados --
 Declare @JogosComEmpates Table
 (CodigoJogo TinyInt Primary Key,
  PontosRankingFifaSelecao1 Int,
  PontosRankingFifaSelecao2 Int)

  Insert Into @JogosComEmpates (CodigoJogo, PontosRankingFifaSelecao1, PontosRankingFifaSelecao2)
  Select CodigoJogo, S1.PontosRankingFifa, S2.PontosRankingFifa
  From Jogos J Inner Join Selecoes S1
                          On J.CodigoSelecao1 = S1.CodigoSelecao
                         Inner Join Selecoes S2
                          On J.CodigoSelecao2 = S2.CodigoSelecao
  Where J.CodigoJogo Between 101 And 102 And J.GolsSelecao1 = J.GolsSelecao2

  Select 'Prorrogação ou Penaltys serão realizados.' As 'Dezesseis Avos de Finais'
 
  Declare @PontosRankingFifaSelecao1 Int, @PontosRankingFifaSelecao2 Int, @GolsSelecao1 TinyInt, @GolsSelecao2 TinyInt

  While (Select Count(CodigoJogo) From @JogosComEmpates) >=1
   Begin
   
    Set @PontosRankingFifaSelecao1 = (Select Top 1 PontosRankingFifaSelecao1 From @JogosComEmpates)
    Set @PontosRankingFifaSelecao2 = (Select Top 1 PontosRankingFifaSelecao2 From @JogosComEmpates)

    Set @GolsSelecao1 = Rand()*Rand()*8
    Set @GolsSelecao2 = Rand()*Rand()*8

    If ((Select Round(Convert(Float,Rand()),2)) > 0.5 And (@PontosRankingFifaSelecao1 <> @PontosRankingFifaSelecao2))
     Begin
     
     If @GolsSelecao1 <> @GolsSelecao2     
     Begin
      Select 'A prorrogação está sendo realizada.' As 'Dezesseis Avos de Finais - Prorrogação'
       
       Update Jogos
       Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
              GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
              ProrrogacaoOuPenaltys = 'PE'
       From Jogos J
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)

       Delete From @JogosComEmpates
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)
      End
     End
    
    If ((Select Round(Convert(Float,Rand()),2)) Between 0.3 And 0.5 And (@PontosRankingFifaSelecao1 = @PontosRankingFifaSelecao2))
     Begin
     
      If @GolsSelecao1 <> @GolsSelecao2
      Begin
       Select 'Os penaltys estão sendo realizados.' As 'Dezesseis Avos de Finais - Penaltys'
       
       Update Jogos
       Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
              GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
              ProrrogacaoOuPenaltys = 'PE'
       From Jogos J
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)

       Delete From @JogosComEmpates
       Where CodigoJogo = (Select Top 1 CodigoJogo From @JogosComEmpates)
      End
     End
    End
  End
Go

Select Replicate('>>>',22) As 'Em execução - Fase - Semi Final - Resultados'
Go

-- Consultando os Jogos da Fase Semi Final - Resultados e Vencedores --
Select Concat('Jogo nº ',J.CodigoJogo,' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Semi Final',
           Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar,
		   Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
		    When J.GolsSelecao2 > J.GolsSelecao1 Then Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
           End As 'Disputa Final',
		   Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  'Perdeu' When 'PE' Then ' Perdeu nos Penaltys' Else ' Perdeu na Prorrogação' End)
		    When J.GolsSelecao2 > J.GolsSelecao1 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then ' Perdeu' When 'PE' Then ' Perdeu nos Penaltys' Else ' Perdeu na Prorrogação' End)
           End As 'Disputa Terceiro Lugar'
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo Between 101 And 102
Order By J.CodigoJogo
Go

Select Replicate('>>>',23) As 'Em execução - Fase - Terceiro Lugar e Final - Definindo as Seleções'
Go

-- Inserindo as Seleções definidas para disputar o Terceiro Lugar --
Insert Into ClassificadosTerceiroLugar
Select G.CodigoGrupo, 
           Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then S2.CodigoSelecao
		    When J.GolsSelecao2 > J.GolsSelecao1 Then S1.CodigoSelecao
           End As CodigoSelecaoSorteio
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo Between 101 And 102
Order By J.CodigoJogo
Go
 
-- Inserindo as Seleções Classificadas para Final --
Insert Into ClassificadosFinal
Select G.CodigoGrupo, 
           Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then S1.CodigoSelecao
		    When J.GolsSelecao2 > J.GolsSelecao1 Then S2.CodigoSelecao
           End As CodigoSelecaoSorteio
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo Between 101 And 102
Order By J.CodigoJogo
Go

Select Replicate('>>>',24) As 'Em execução - Fase - Terceiro Lugar e Final - Jogos Definidos'
Go

-- Consultando --
Select 'Terceiro e Quarto' As Fase, 
          (Select S.NomeSelecao As 'Seleção' 
		   From ClassificadosTerceiroLugar Q Inner Join Selecoes S On Q.CodigoSelecaoSorteio = S.CodigoSelecao
           Where CodigoTerceiroLugar = 1) + ' x '+
          (Select S.NomeSelecao As 'Seleção' 
		   From ClassificadosTerceiroLugar Q Inner Join Selecoes S On Q.CodigoSelecaoSorteio = S.CodigoSelecao
           Where CodigoTerceiroLugar = 2) As 'Seleções'
Go

Select 'Final' As Fase, 
          (Select S.NomeSelecao As 'Seleção' 
		   From ClassificadosFinal Q Inner Join Selecoes S On Q.CodigoSelecaoSorteio = S.CodigoSelecao
           Where CodigoFinal = 1) + ' x '+
          (Select S.NomeSelecao As 'Seleção' 
		   From ClassificadosFinal Q Inner Join Selecoes S On Q.CodigoSelecaoSorteio = S.CodigoSelecao
           Where CodigoFinal = 2) As 'Seleções'
Go

Select Replicate('>>>',25) As 'Em execução - Fase - Terceiro Lugar - Simulando o Jogo'
Go

-- Criando o Jogo da Disputa do Terceiro Lugar --
Declare @CodigoSelecao1 TinyInt, @CodigoSelecao2 TinyInt

Set @CodigoSelecao1 = (Select CodigoSelecaoSorteio From ClassificadosTerceiroLugar Where CodigoTerceiroLugar = 1)
Set @CodigoSelecao2 = (Select CodigoSelecaoSorteio From ClassificadosTerceiroLugar Where CodigoTerceiroLugar = 2)
  
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*Rand()*10,Rand()*Rand()*10,Rand()*Rand()*4,Rand()*Rand()*4)
Go

Select Replicate('>>>',26) As 'Em execução - Fase - Terceiro Lugar - Análise de Empate'
Go

-- Eliminando a ocorrência de possível empate no Jogo da Disputa do Terceiro Lugar --
If (Select Count(CodigoJogo) From Jogos Where CodigoJogo = 103 And GolsSelecao1 = GolsSelecao2) = 1
Begin

 Select 'Ocorreu empate no jogo' As 'Terceiro Lugar',' ' As 'Placar'
 Union All
 Select Concat('Jogo nº ',J.CodigoJogo,' - ', 'Grupo ',G.SiglaGrupo, ' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Terceiro Lugar',
            Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar
 From Jogos J Inner Join Grupos G
                       On J.CodigoGrupoSorteio = G.CodigoGrupo
                      Inner Join Selecoes S1
                       On J.CodigoSelecao1 = S1.CodigoSelecao
                      Inner Join Selecoes S2
                       On J.CodigoSelecao2 = S2.CodigoSelecao
 Where J.CodigoJogo = 103

 Select 'Prorrogação ou Penaltys serão realizados.' As 'Terceiro Lugar'

 Declare @GolsSelecao1 TinyInt, @GolsSelecao2 TinyInt, @StatusProrrogacaoOuPenaltys Char(2)

 Set @GolsSelecao1 = Rand()*Rand()*8
 Set @GolsSelecao2 = Rand()*Rand()*8

 If (Select Round(Convert(Float,Rand()*Rand()),2)) <0.6
  Begin
   Select 'A prorrogação está sendo realizada.' As 'Terceiro Lugar - Prorrogação'
     
   Set @StatusProrrogacaoOuPenaltys = 'PR'
  End
  Else
   Begin
    Select 'Os penaltys estão sendo realizados.' As 'Terceiro Lugar - Penaltys'

    Set @StatusProrrogacaoOuPenaltys = 'PE'
   End

   If @GolsSelecao1 <> @GolsSelecao2
    Begin
     Update Jogos
     Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
           GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
           ProrrogacaoOuPenaltys = @StatusProrrogacaoOuPenaltys
     From Jogos J
     Where CodigoJogo = 103 
    End
  End
Go

Select Replicate('>>>',27) As 'Em execução - Fase - Terceiro Lugar - Resultado'
Go

-- Consultando o resultado do Jogo - Disputa do Terceiro Lugar --
Select Concat('Jogo nº ',J.CodigoJogo,' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Terceiro e Quarto',
           Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar,
		    Case When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End) 
             Else Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  ' Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End) End As 'Terceiro Lugar',
   		    Case When J.GolsSelecao2 > J.GolsSelecao1 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  ' Perdeu' When 'PE' Then ' Perdeu nos Penaltys' Else ' Perdeu na Prorrogação' End) 
             Else Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  ' Perdeu' When 'PE' Then ' Perdeu nos Penaltys' Else ' Perdeu na Prorrogação' End) End As 'Quarto Lugar'
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo = 103
Order By J.CodigoJogo
Go

WaitFor Delay '00:00:03'
Go

Select Replicate('>>>',28) As 'Em execução - Fase - Final - Simulando o Jogo'
Go

-- Criando o Jogo da Final --
Declare @CodigoSelecao1 TinyInt, @CodigoSelecao2 TinyInt

Set @CodigoSelecao1 = (Select CodigoSelecaoSorteio From ClassificadosFinal Where CodigoFinal = 1)
Set @CodigoSelecao2 = (Select CodigoSelecaoSorteio From ClassificadosFinal Where CodigoFinal = 2)
  
Insert Into Jogos (CodigoGrupoSorteio, CodigoSelecao1, CodigoSelecao2, CodigoJogoNoGrupo, GolsSelecao1, GolsSelecao2, CartoesAmareloSelecao1, CartoesAmareloSelecao2, CartoesVermelhoSelecao1, CartoesVermelhoSelecao2)
Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*Rand()*10,Rand()*Rand()*10,Rand()*Rand()*4,Rand()*Rand()*4)
Go

Select Replicate('>>>',29) As 'Em execução - Fase - Final - Análise de Empate'
Go

-- Eliminando a ocorrência de possível empate na Final --
If (Select Count(CodigoJogo) From Jogos Where CodigoJogo = 104 And GolsSelecao1 = GolsSelecao2) =1
Begin

 Select 'Ocorreu empate no jogo' As 'Final',' ' As 'Placar'
 Union All
 Select Concat('Jogo nº ',J.CodigoJogo,' - ', 'Grupo ',G.SiglaGrupo, ' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Final',
            Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar
 From Jogos J Inner Join Grupos G
                       On J.CodigoGrupoSorteio = G.CodigoGrupo
                      Inner Join Selecoes S1
                       On J.CodigoSelecao1 = S1.CodigoSelecao
                      Inner Join Selecoes S2
                       On J.CodigoSelecao2 = S2.CodigoSelecao
 Where J.CodigoJogo = 104

 Select 'Prorrogação ou Penaltys serão realizados.' As 'Final'

  Declare @GolsSelecao1 TinyInt, @GolsSelecao2 TinyInt, @StatusProrrogacaoOuPenaltys Char(2)

  Set @GolsSelecao1 = Rand()*Rand()*8
  Set @GolsSelecao2 = Rand()*Rand()*8

   If (Select Round(Convert(Float,Rand()*Rand()),2)) <0.6
    Begin
     Select 'A prorrogação está sendo realizada.' As 'Final - Prorrogação'
     
     Set @StatusProrrogacaoOuPenaltys = 'PR'
    End
   Else
    Begin
     Select 'Os penaltys estão sendo realizados.' As 'Final - Penaltys'

     Set @StatusProrrogacaoOuPenaltys = 'PE'
    End

   If @GolsSelecao1 <> @GolsSelecao2
    Begin

     Update Jogos
     Set GolsSelecao1 = J.GolsSelecao1+@GolsSelecao1,
           GolsSelecao2 = J.GolsSelecao2+@GolsSelecao2,
           ProrrogacaoOuPenaltys = @StatusProrrogacaoOuPenaltys
     From Jogos J
     Where CodigoJogo = 104
 
    End
  End
Go

Select Replicate('>>>',30) As 'Em execução - Fase - Final - Resultado'
Go

-- Consultando o resultado do Jogo - Final --
Select Concat('Jogo nº ',J.CodigoJogo,' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Final',
           Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar,
		    Case When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then '' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End) 
             Else Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then '' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End) End As 'Fifa World Champions',
   		    Case When J.GolsSelecao2 > J.GolsSelecao1 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then '' When 'PE' Then ' Perdeu nos Penaltys' Else ' Perdeu na Prorrogação' End) 
             Else Concat(S2.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then '' When 'PE' Then ' Perdeu nos Penaltys' Else ' Perdeu na Prorrogação' End) End As 'Runner-up'	   
From Jogos J Inner Join Grupos G
                      On J.CodigoGrupoSorteio = G.CodigoGrupo
                     Inner Join Selecoes S1
                      On J.CodigoSelecao1 = S1.CodigoSelecao
                     Inner Join Selecoes S2
                      On J.CodigoSelecao2 = S2.CodigoSelecao
Where J.CodigoJogo = 104
Go

Select Replicate('>>>',31) As 'Atualizando as tabelas internas'
Go

-- Apresentando a Classificação Geral --
Exec P_ClassificacaoGeral
Go

-- Processando o Histórico de Simulações - Armazenando os Histórico de Jogos, Classificação e Atualizando a Contagem de Simulações realizadas --
Exec P_HistoricoSimulacao 'F'
Go

-- Atualizando o Histórico - Estatística de Desempenho - 24 Primeiras Posições'
Exec P_AtualizarHistoricoEstatisticaDesempenho
Go

-- Apresentando o Histórico de Finais Disputadas da atual Seleção Campeã Mundial, Jogos e Placares --
Declare @NomeSelecaoExtenso Varchar(30)

Set @NomeSelecaoExtenso=(Select Top 1 SelecaoCampea From HistoricoSimulacao Order By CodigoHistoricoSimulacao Desc)

Select Replicate('>>>',32) As 'Resumo de Conquistas'

Select Seleção, 
           Concat(Convert(Varchar(4),TotalCampea),' vez(es)') As 'Campeã Mundial', 
           Concat(Convert(Varchar(4),TotalViceCampea),' vez(es)') As 'Vice-Campeã Mundial',
           Convert(Varchar(4),TotalCampea+TotalViceCampea) As 'Total de Final(is) Disputada(s)'
From dbo.F_HistoricoDeFinais(@NomeSelecaoExtenso) 

Select Replicate('>>>',33) As 'Histórico de Finais Disputadas'

Select @NomeSelecaoExtenso As ' ',
           'Nº '+Convert(Varchar(4),Row_Number() Over(Order By CodigoHistoricoSimulacao)) As 'Final', 
           Jogo As 'Jogo(s)', 
		   Placar As 'Placar(es)',
		   Format(DataHistoricoSimulacao,'dd-MM-yyyy') As 'Data Realização'
From HistoricoSimulacao
Where SelecaoCampea = @NomeSelecaoExtenso
Or SelecaoVice = @NomeSelecaoExtenso

-- Apresentando o Histórico - Estatística de Desempenho - 24 Primeiras Posições --
Select Replicate('>>>',34) As 'Histórico - Estatística de Desempenho - 24 Primeiras Posições'

Select * from dbo.F_EstatisticaDesempenho24PrimeirasPosicoes(@NomeSelecaoExtenso)
Go

Select Replicate('>>>',35) As 'Processamento da Simulação concluído com Sucesso!!!'
Go