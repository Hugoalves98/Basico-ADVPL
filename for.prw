#INCLUDE "TOTVS.CH"


user function testfor()
/*
local nInicio := 0
local nFim := 100

for nInicio := 10 to nFim step 10
Alert(nInicio)
Next

return
*/

local nInicio := 0
local nFim := 100

 for nInicio := 10 to nFim step 10
 if nInicio == 90
 exit
 endif

 if nInicio == 50
 loop
 endif
 Alert(nInicio)
next

return
