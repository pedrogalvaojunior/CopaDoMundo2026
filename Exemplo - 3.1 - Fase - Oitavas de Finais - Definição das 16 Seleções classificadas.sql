-- Acessando --
Use CopaDoMundo2026
Go

-- Criando a Tabela ClassificadosOitavasDeFinal --
Create Table ClassificadosOitavasDeFinal
 (CodigoOitavasDeFinal TinyInt Identity(1,1) Primary Key Clustered,
  CodigoGrupoSorteio TinyInt Not Null,
  CodigoSelecaoSorteio TinyInt Not Null,
  ClassificacaoFinalNoGrupo TinyInt Not Null)
 Go

-- Inserindo as Seleções Classificadas para as Oitavas de Final --
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