#INCLUDE "TOTVS.CH"

 //#DEFINE CRLF Chr(13)+Chr(10)

user function arrtxt()

local aDados := {}
Local cMsg := ""
local nPos := 0

aADD(aDados,{"Alighiere"   ,20,"01/07/2000"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Junior"      ,21,"01/07/1980"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Suellen"     ,22,"01/07/1999"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Arthur"      ,23,"01/07/1978"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Joao"        ,24,"01/07/1993"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Matheus"     ,25,"01/07/1978"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Jorge"       ,27,"01/07/1995"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Jorge"       ,27,"01/07/1995"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Jorge"       ,27,"01/07/1995"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Jorge"       ,27,"01/07/1995"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Jason"       ,27,"01/07/1995"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Mateo"       ,27,"01/07/1995"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Hugoo"       ,27,"01/07/1995"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})
aADD(aDados,{"Carlo"       ,27,"01/07/1995"      ,"São Paulo",   "Brasileiro",  "Etios Consultória"})

aSort(aDados, , , {|x, y| x[1] < y[1]})
     
    //Percorre para compor a mensagem
    For nPos := 1 To Len(aDados)
        cMsg += "Nome: "+aDados[nPos][1]+"."+CRLF
    Next
    MsgInfo("Ordenação Crescente: "+CRLF+cMsg, "Atenção")

/*
MsgInfo("NOME: " +aDados[4,1]+chr(13)+" CIDADE: "+aDados[4,4])

MsgInfo("NOME: "+aDados[5,1]+chr(13)+;
    "IDADE: "+CValToChar(aDados[5,2])+chr(13)+;
    "Nascimento "+aDados[5,3])
*/

Return 

