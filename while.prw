#INCLUDE "TOTVS.CH"

user function repetir()
/*
local nCount := 1

while nCount <= 10

alert(nCount)
nCount += 1 //ou nCount++ que é a msm coisa

end

return
*/

local nCount := 1

while nCount <= 10

if nCount == 5
exit
end

if nCount % 2 == 0
  nCount++
  loop
endif

alert(nCount)
nCount++

end

Alert("Função encerrou por igualar a 5")

return
