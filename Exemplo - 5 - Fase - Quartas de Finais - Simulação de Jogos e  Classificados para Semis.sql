-- Acessando --
Use CopaDoMundo2026
Go

-- Criando a Tabela ClassificadosSemiFinais --
Create Table ClassificadosSemiFinais
 (CodigoSemiFinais TinyInt Identity(1,1) Primary Key Clustered,
  CodigoGrupoSorteio TinyInt Not Null,
  CodigoSelecaoSorteio TinyInt Not Null)
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
  Values (1,@CodigoSelecao1,@CodigoSelecao2, 1, Rand()*Rand()*8,Rand()*Rand()*8,Rand()*10,Rand()*10,Rand()*4,Rand()*4)
  
  Set @CodigoSemiFinal1 = @CodigoSemiFinal1 + 2
  Set @CodigoSemiFinal2 = @CodigoSemiFinal2 + 2

End
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

-- Consultando os Jogos da Fase Semi Final - Resultados e Vencedores --
Select Concat('Jogo nº ',J.CodigoJogo,' - ', S1.NomeSelecao,' x ',S2.NomeSelecao) As 'Semi Final',
           Concat(S1.NomeSelecao,' ',J.GolsSelecao1,' x ',J.GolsSelecao2, ' ',S2.NomeSelecao) As Placar,
		   Case 
		    When J.GolsSelecao1 > J.GolsSelecao2 Then Concat(S1.NomeSelecao, Case J.ProrrogacaoOuPenaltys When '' Then  'Venceu' When 'PE' Then ' Venceu nos Penaltys' Else ' Venceu na Prorrogação' End)
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