/*______________________________________________________________________
   �Autor     � Eraldo Drumond                      � Data � 13/01/12 �
   +----------+-------------------------------------------------------�
   �Descri��o : Cadastro do Livro de Or�amento                        �
   �            Inclus�o do Or�amento no Quadro de Custos             �
  ����������������������������������������������������������������������*/

#INCLUDE "rwmake.ch"

User Function C_SZF

Private cCadastro := "Cadastro de Livro de Or�amento"

Private aRotina := { {"Pesquisar","AxPesqui",0,1} ,;
             		{"Visualizar","AxVisual",0,2} ,;
             		{"Incluir","AxInclui",0,3} ,;
             		{"Alterar","AxAltera",0,4} ,;
             		{"Excluir","AxDeleta",0,5} ,;
             		{"Imprimir","U_relSZF()",0,6} ,;
             		{"Incluir Quadro Custo","U_P_SZI()",0,7} }


Private cDelFunc := ".T." 

Private cString := "SZF"

dbSelectArea("SZF")
dbSetOrder(1)


dbSelectArea(cString)
mBrowse( 6,1,22,75,cString)

Return
