/*
aSort(aVetor, , , ,)
2º , := indica o primeiro elemento que será colocado em ordem
3º , := indica a quantidade de elementos que entrarão em ordem, caso n, todos entrarão
4º , := bloco de código pra determinar uma ordem(pra tornar decrescente e usar em matrix)
*/


#Include "Protheus.ch"

//
User Function asortex()
    Local aArea   := GetArea()
    Local aDados  := {}
    Local nPos    := 0
    Local cMsg    := ""
     
    //Adicionando elementos no Array (código, nome e idade)
    aAdd(aDados, {"0001", "Daniel",   23})
    aAdd(aDados, {"0002", "Atilio",   33})
    aAdd(aDados, {"0003", "Hudson",   43})
    aAdd(aDados, {"0004", "Terminal", 53})
    aAdd(aDados, {"0005", "Teste",    63})
     
    //Ordena o Array por Nome (Array multidimensional) - Decrescente
    aSort(aDados, , , {|x, y| x[2] > y[2]})
     
    //Percorre para compor a mensagem
    For nPos := 1 To Len(aDados)
        cMsg += aDados[nPos][2]+", código "+aDados[nPos][1]+"."+CRLF
    Next
    MsgInfo("Ordenação Decrescente: "+CRLF+cMsg, "Atenção")
     
    RestArea(aArea)
Return



/*
// o x[2] representa a linha e tem que ser menor que a coluna y[2]
User Function asortex()
    Local aArea   := GetArea()
    Local aDados  := {}
    Local nPos    := 0
    Local cMsg    := ""
     
    //Adicionando elementos no Array (código, nome e idade)
    aAdd(aDados, {"0001", "Daniel",   23})
    aAdd(aDados, {"0002", "Atilio",   33})
    aAdd(aDados, {"0003", "Hudson",   43})
    aAdd(aDados, {"0004", "Terminal", 53})
    aAdd(aDados, {"0005", "Teste",    63})
     
    //Ordena o Array por Nome (Array multidimensional) - Crescente
    aSort(aDados, , , {|x, y| x[2] < y[2]})
     
    //Percorre para compor a mensagem
    For nPos := 1 To Len(aDados)
        cMsg += aDados[nPos][2]+", código "+aDados[nPos][1]+"."+CRLF
    Next
    MsgInfo("Ordenação Crescente: "+CRLF+cMsg, "Atenção")
     
    RestArea(aArea)
Return
*/

/*
// Aqui já foi com o include, jeito diferente
#Include "Protheus.ch"
User Function asortex()
    Local aArea   := GetArea()
    Local aDados  := {}
    Local nPos    := 0
    Local cMsg    := ""
     
    //Adicionando elementos no Array
    aAdd(aDados, "Daniel")
    aAdd(aDados, "Atilio")
    aAdd(aDados, "Hudson")
    aAdd(aDados, "Terminal")
    aAdd(aDados, "Teste")
     
    //Ordena o Array por Nome
    aSort(aDados)
     
    //Percorre para compor a mensagem
    For nPos := 1 To Len(aDados)
        cMsg += "Nome: "+aDados[nPos]+"."+CRLF
    Next
    MsgInfo("Ordenação: "+CRLF+cMsg, "Atenção")
     
    RestArea(aArea)
Return
*/

/*
// Fácil compreensão, ELAS FUNCIONAM ASSIM SEM O INCLUDE
#DEFINE CRLF Chr(13)+Chr(10)
User Function asortex()
Local aExemplo := {}
Local cMensagem := ""
//+-------------------------------------------------------------+
//|Exemplifica o uso da função ASort                                           |
//+-------------------------------------------------------------+
  AAdd(aExemplo, "Banana")
  AAdd(aExemplo, "Maçã")
  AAdd(aExemplo, "Pêra")
  AAdd(aExemplo, "Limão")
  AAdd(aExemplo, "Abacaxi")
  AAdd(aExemplo, "Laranja")
  AAdd(aExemplo, "Mamão")
  AAdd(aExemplo, "Graviola")
  ASort(aExemplo)
  cMensagem += "Ordem crescente: " + CRLF
  cMensagem += aExemplo[1] + CRLF
  cMensagem += aExemplo[2] + CRLF
  cMensagem += aExemplo[3] + CRLF
  cMensagem += aExemplo[4] + CRLF
  cMensagem += aExemplo[5] + CRLF
  cMensagem += aExemplo[6] + CRLF
  cMensagem += aExemplo[7] + CRLF
  cMensagem += aExemplo[8] + CRLF
  ASort(aExemplo, , , {|x,y|x > y})
  cMensagem += "Ordem decrescente: " + CRLF
  cMensagem += aExemplo[1] + CRLF
  cMensagem += aExemplo[2] + CRLF
  cMensagem += aExemplo[3] + CRLF
  cMensagem += aExemplo[4] + CRLF
  cMensagem += aExemplo[5] + CRLF
  cMensagem += aExemplo[6] + CRLF
  cMensagem += aExemplo[7] + CRLF
  cMensagem += aExemplo[8] + CRLF

//+----------------------------------------------------------------------------+
//|Apresenta uma mensagem com os resultados obtidos                            |
//+----------------------------------------------------------------------------+
Return MsgInfo(cMensagem, "Exemplo do ASort")
*/
