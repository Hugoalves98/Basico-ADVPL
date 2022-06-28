#INCLUDE "TOTVS.CH"



user function cadsa1()

//mBrowse( 06, 1, 22,  75,) se n preencher, ele criará um dimensionamento padrão
private cCadastro as Char
Private aRotina as array

cCadastro := "Cadastro de clientes"
aRotina   := {}

AADD(aRotina,{"Pesquisar"  , "AxPesqui"   ,0, 1})
AADD(aRotina,{"Visualizar" , "AxVisual"   ,0, 2})
AADD(aRotina,{"Incluir"    , "AxInclui"  ,0, 3})
AADD(aRotina,{"Alterar"    , "AxAltera"   ,0, 4})
AADD(aRotina,{"Excluir"    , "AxDeleta"   ,0, 5})
AADD(aRotina,{"Imp. Nome"  , "U_apretel1" ,0, 6})


mBrowse(,,,,"SA1")

return



user function apretel1()

local ODlg as Object
local oGet as Object
local cNome as Char
local oBotao as Object


cNome := space(30)


DEFINE MSDIALOG oDlg TITLE "Tela"
oDlg:nWidth := 300
oDlg:nHeight := 200

@ 06,10 SAY "Digite algo" of oDlg PIXEL
@ 04,40 GET oGet VAR cNome OF oDlg SIZE 50,10 PIXEL

@ 35,10 BUTTON oBotao PROMPT "Ok" OF oDlg PIXEL SIZE 30,10 ACTION Alert("O nome digitado foi: " + cNome)

ACTIVATE MSDIALOG oDlg CENTERED


return
