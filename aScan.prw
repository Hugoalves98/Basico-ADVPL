/*
aScan(aArray, , , ,)
2� , := Indica a express�o de busca. Para um array de dimens�o simples, pode ser colocado diretamente um valor a ser procurado. Para uma busca mais complexa ou para uma busca em array muti-dimensional, deve ser especificado um bloco de c�digo.
3� , := Indica a partir de qual elemento iniciar� a busca
4� , := Indica por quantos elementos ser�o considerados na opera��o de busca
*/



#INCLUDE "TOTVS.CH"
/*
//Buscando um elemento no Array Multidimensional:
User Function aScanEx()
    Local aArea   := GetArea()
    Local aDados  := {}
    Local nPos    := 0
     
    //Adicionando elementos no Array (c�digo, nome e idade)
    aAdd(aDados, {"0001", "Daniel",   23})
    aAdd(aDados, {"0002", "Atilio",   33})
    aAdd(aDados, {"0003", "Hudson",   43})
    aAdd(aDados, {"0004", "Terminal", 53})
    aAdd(aDados, {"0005", "Teste",    63})
     
    //Procurando pelo nome Hudson
    nPos := aScan(aDados, {|x| AllTrim(Upper(x[2])) == "HUDSON"})
    If nPos > 0
        MsgInfo("Hudson encontrado, na linha "+cValToChar(nPos)+".", "Aten��o")
    Else
        MsgAlert("Hudson n�o foi encontrado!", "Aten��o")
    EndIf
     
    RestArea(aArea)
Return
*/


/*
//Buscando um elemento no Array, a partir de uma posi��o:
User Function aScanEx()
    Local aArea   := GetArea()
    Local aDados  := {}
    Local nPos    := 0
     
    //Adicionando elementos no Array
    aAdd(aDados, "Daniel")
    aAdd(aDados, "Atilio")
    aAdd(aDados, "Hudson")
    aAdd(aDados, "Terminal")
    aAdd(aDados, "Teste")
     
    //Procurando pelo nome Atilio a partir da linha 3
    nPos := aScan(aDados, {|x| AllTrim(Upper(x)) == "ATILIO"}, 3)
    If nPos > 0
        MsgInfo("Atilio encontrado, na linha "+cValToChar(nPos)+".", "Aten��o")
    Else
        MsgAlert("Atilio n�o foi encontrado (ap�s a linha 3)!", "Aten��o")
    EndIf
     
    RestArea(aArea)
Return
*/

/*
//  Buscando UM elemento no Array:
User Function aScanEx()
    Local aArea   := GetArea()
    Local aDados  := {}
    Local nPos    := 0
     
    //Adicionando elementos no Array
    aAdd(aDados, "Daniel")
    aAdd(aDados, "Atilio")
    aAdd(aDados, "Hudson")
    aAdd(aDados, "Terminal")
    aAdd(aDados, "Teste")
     
    //Procurando pelo nome Atilio
    nPos := aScan(aDados, {|x| AllTrim(Upper(x)) == "ATILIO"})
    If nPos > 0
        MsgInfo("Atilio encontrado, na linha "+cValToChar(nPos)+".", "Aten��o")
    Else
        MsgAlert("Atilio n�o foi encontrado!", "Aten��o")
    EndIf
     
    RestArea(aArea)
Return
*/


// N�O COMPREENDI MUITO BEM ESSE
#DEFINE CRLF Chr(13)+Chr(10)
user function aScanEx()
  Local aExemplo := { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }
  Local cMensagem := ""
   
  //+----------------------------------------------------------------------------+
  //|Exemplifica o uso da fun��o AScan                                           |
  //+----------------------------------------------------------------------------+
   
  cMensagem += "Elemento 5 " + CRLF
  cMensagem += "Em " + cValToChar( AScan( aExemplo, 5 ) ) + CRLF
  cMensagem += "A partir da posi��o 6 em " + ;
               cValToChar( AScan( aExemplo, 5, 6 ) ) + CRLF
  cMensagem += "A partir da posi��o 1 procurados em 3 em " + ;
               cValToChar( AScan( aExemplo, 5, 6, 3 ) ) + CRLF
  //+----------------------------------------------------------------------------+
  //|Apresenta uma mensagem com os resultados obtidos                            |
  //+----------------------------------------------------------------------------+
Return MsgInfo( cMensagem, "Exemplo do AScan" )

