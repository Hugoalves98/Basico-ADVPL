#INCLUDE "TOTVS.CH"
//#DEFINE CRLF Chr(13)+Chr(10)
user function arrayscn()
local aDados := {}
Local cMensagem := ""
// aDados := { "Placido", "Hugh", "Amanda", "Mandeta", "Porrê", "Helain"}

AADD(aDados,"Placido")
AADD(aDados,"Joao")
AADD(aDados,"Lucas")
AADD(aDados,"Maria")
AADD(aDados,"Marieta")
AADD(aDados,"Gerald")

ASort(aDados)
  cMensagem += "Ordem crescente: " + CRLF
  cMensagem += aDados[1] + CRLF
  cMensagem += aDados[2] + CRLF
  cMensagem += aDados[3] + CRLF
  cMensagem += aDados[4] + CRLF
  cMensagem += aDados[5] + CRLF
  cMensagem += aDados[6] + CRLF

/*
MsgInfo(aDados[1])
MsgInfo(aDados[2])
MsgInfo(aDados[3])
MsgInfo(aDados[9])
*/
Return MsgInfo(cMensagem, "Exemplo do ASort")

