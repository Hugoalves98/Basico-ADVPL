#INCLUDE "TOTVS.CH"
/*
PROGRAMA��O B�SICA:
1) Coment�rios sobre configura��o ambiente (DevStudio);
2) Coment�rios sobre configura��o includes (DevStudio);
3) Coment�rios sobre compila��o (DevStudio);
4) Coment�rios sobre debug (DevStudio);

5) Explicar o projeto:
Cria��o de tabela customizada ZZ9 (cadastro de pessoas)
 - Campos: Filial, C�digo, Nome, Data Anivers�rio, CPF
 - �ndice um: Filial+C�digo;
 - �ndice dois: CPF;
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
SetKey(123,{|| Pergunte(cPerg,.T.)}) // seta a tecla F12 para acionamento dos par�metros

AxCadastro(cString,"Cadastro de pessoas",cVldExc,cVldAlt)

Set Key 123 to //desativa a tecla F12 do acionamento dos par�metros

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
SetKey(123,{|| Pergunte(cPerg,.T.)}) // Seta a tecla F12 p acionamento dos par�metros


DbSelectArea(cString)
mBrowse(6,1,22,75,cString)

Set Key 123 To

Return
*/
