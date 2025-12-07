-- Acessando --
Use CopaDoMundo2026
Go

-- Criando a Tabela ClassificadosDezesseisAvosDeFinal --
Create Table ClassificadosDezesseisAvosDeFinal
 (CodigoDezesseisAvosDeFinal TinyInt Identity(1,1) Primary Key Clustered,
  CodigoGrupoSorteio TinyInt Not Null,
  CodigoSelecaoSorteio TinyInt Not Null,
  ClassificacaoFinalNoGrupo TinyInt Not Null)
 Go

-- Simulando as Seleções Classificadas em cada Grupo --
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