/*
aSort(aVetor, , , ,)
2� , := indica o primeiro elemento que ser� colocado em ordem
3� , := indica a quantidade de elementos que entrar�o em ordem, caso n, todos entrar�o
4� , := bloco de c�digo pra determinar uma ordem(pra tornar decrescente e usar em matrix)
*/


#Include "Protheus.ch"

//
User Function asortex()
    Local aArea   := GetArea()
    Local aDados  := {}
    Local nPos    := 0
    Local cMsg    := ""
     
    //Adicionando elementos no Array (c�digo, nome e idade)
    aAdd(aDados, {"0001", "Daniel",   23})
    aAdd(aDados, {"0002", "Atilio",   33})
    aAdd(aDados, {"0003", "Hudson",   43})
    aAdd(aDados, {"0004", "Terminal", 53})
    aAdd(aDados, {"0005", "Teste",    63})
     
    //Ordena o Array por Nome (Array multidimensional) - Decrescente
    aSort(aDados, , , {|x, y| x[2] > y[2]})
     
    //Percorre para compor a mensagem
    For nPos := 1 To Len(aDados)
        cMsg += aDados[nPos][2]+", c�digo "+aDados[nPos][1]+"."+CRLF
    Next
    MsgInfo("Ordena��o Decrescente: "+CRLF+cMsg, "Aten��o")
     
    RestArea(aArea)
Return



/*
// o x[2] representa a linha e tem que ser menor que a coluna y[2]
User Function asortex()
    Local aArea   := GetArea()
    Local aDados  := {}
    Local nPos    := 0
    Local cMsg    := ""
     
    //Adicionando elementos no Array (c�digo, nome e idade)
    aAdd(aDados, {"0001", "Daniel",   23})
    aAdd(aDados, {"0002", "Atilio",   33})
    aAdd(aDados, {"0003", "Hudson",   43})
    aAdd(aDados, {"0004", "Terminal", 53})
    aAdd(aDados, {"0005", "Teste",    63})
     
    //Ordena o Array por Nome (Array multidimensional) - Crescente
    aSort(aDados, , , {|x, y| x[2] < y[2]})
     
    //Percorre para compor a mensagem
    For nPos := 1 To Len(aDados)
        cMsg += aDados[nPos][2]+", c�digo "+aDados[nPos][1]+"."+CRLF
    Next
    MsgInfo("Ordena��o Crescente: "+CRLF+cMsg, "Aten��o")
     
    RestArea(aArea)
Return
*/

/*
// Aqui j� foi com o include, jeito diferente
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
    MsgInfo("Ordena��o: "+CRLF+cMsg, "Aten��o")
     
    RestArea(aArea)
Return
*/

/*
// F�cil compreens�o, ELAS FUNCIONAM ASSIM SEM O INCLUDE
#DEFINE CRLF Chr(13)+Chr(10)
User Function asortex()
Local aExemplo := {}
Local cMensagem := ""
//+-------------------------------------------------------------+
//|Exemplifica o uso da fun��o ASort                                           |
//+-------------------------------------------------------------+
  AAdd(aExemplo, "Banana")
  AAdd(aExemplo, "Ma��")
  AAdd(aExemplo, "P�ra")
  AAdd(aExemplo, "Lim�o")
  AAdd(aExemplo, "Abacaxi")
  AAdd(aExemplo, "Laranja")
  AAdd(aExemplo, "Mam�o")
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
