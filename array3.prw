#INCLUDE "TOTVS.CH"

 //#DEFINE CRLF Chr(13)+Chr(10)

user function arrtxt()

local aDados := {}
Local cMsg := ""
local nPos := 0

aADD(aDados,{"Alighiere"   ,20,"01/07/2000"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Junior"      ,21,"01/07/1980"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Suellen"     ,22,"01/07/1999"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Arthur"      ,23,"01/07/1978"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Joao"        ,24,"01/07/1993"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Matheus"     ,25,"01/07/1978"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Jorge"       ,27,"01/07/1995"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Jorge"       ,27,"01/07/1995"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Jorge"       ,27,"01/07/1995"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Jorge"       ,27,"01/07/1995"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Jason"       ,27,"01/07/1995"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Mateo"       ,27,"01/07/1995"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Hugoo"       ,27,"01/07/1995"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})
aADD(aDados,{"Carlo"       ,27,"01/07/1995"      ,"S�o Paulo",   "Brasileiro",  "Etios Consult�ria"})

aSort(aDados, , , {|x, y| x[1] < y[1]})
     
    //Percorre para compor a mensagem
    For nPos := 1 To Len(aDados)
        cMsg += "Nome: "+aDados[nPos][1]+"."+CRLF
    Next
    MsgInfo("Ordena��o Crescente: "+CRLF+cMsg, "Aten��o")

/*
MsgInfo("NOME: " +aDados[4,1]+chr(13)+" CIDADE: "+aDados[4,4])

MsgInfo("NOME: "+aDados[5,1]+chr(13)+;
    "IDADE: "+CValToChar(aDados[5,2])+chr(13)+;
    "Nascimento "+aDados[5,3])
*/

Return 

