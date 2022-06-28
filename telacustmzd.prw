#INCLUDE "TOTVS.CH"
/*
PROGRAMAÇÃO BÁSICA:
1) Comentários sobre configuração ambiente (DevStudio);
2) Comentários sobre configuração includes (DevStudio);
3) Comentários sobre compilação (DevStudio);
4) Comentários sobre debug (DevStudio);

5) Explicar o projeto:
Criação de tabela customizada ZZ9 (cadastro de pessoas)
 - Campos: Filial, Código, Nome, Data Aniversário, CPF
 - Índice um: Filial+Código;
 - Índice dois: CPF;
 - Criar a tela de cadastro (AxCadastro)
 - Criar a tela de cadastro (MBrowse)
 - Adicionar registros.
*/

user function aula1ytb()

Local cVldAlt := ".T."
local cVldExc := ".T."

Private cPerg := "PEGZZ9"
Private cString := "ZZ9"
dbSelectArea("ZZ9")
dbSetOrder(1)

cPerg = "PEGZZ9"

Pergunte(cPerg,.F.)
SetKey(123,{|| Pergunte(cPerg,.T.)}) // seta a tecla F12 para acionamento dos parâmetros

AxCadastro(cString,"Cadastro de pessoas",cVldExc,cVldAlt)

Set Key 123 to //desativa a tecla F12 do acionamento dos parâmetros

Return


/*

user function aulaytb()

Private cPerg := "PEGZZ9"
Private cCadastro := "Cadastro de pessoas"
dbSelectArea("ZZ9")
DbSetOrder(1)

Private aRotina := {{"Pesquisar","AxPesqui",0,1}  ,;
                    {"Visualizar","AxVisual",0,2} ,;
                    {"Incluir","AxIncluir",0,3}   ,;
                    {"Alterar","AxAltera",0,4}    ,;
                    {"Excluir","AxDeleta",0,5},;
                    {"Email","U_Email",0,6},;
                    {"Dependentes","U_Depend",0,6},;
                    {"Telefone","U_Fone",0,6}}

Private cDelFunc := ".T." // Validacao p execlusao, pode/se utilizar ExecBlock

Private cString := "ZZ9"



cPerg := "PEGZZ9"

Pergunte(cPerg,.F.)
SetKey(123,{|| Pergunte(cPerg,.T.)}) // Seta a tecla F12 p acionamento dos parâmetros


DbSelectArea(cString)
mBrowse(6,1,22,75,cString)

Set Key 123 To

Return
*/
