#include "totvs.ch"

user function pedd1()

local nArmaz := 50
local nVenda := 100

if nArmaz >= nVenda 
MsgInfo("Armazem positivo", "Poss�vel vender mais")

elseif nVenda > nArmaz
MsgAlert("Armaz�m negativo", "N�o � poss�vel vender mais")
endif

return
