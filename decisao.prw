#include "totvs.ch"

user function pedd1()

local nArmaz := 50
local nVenda := 100

if nArmaz >= nVenda 
MsgInfo("Armazem positivo", "Possível vender mais")

elseif nVenda > nArmaz
MsgAlert("Armazém negativo", "Não é possível vender mais")
endif

return
