/*
+----------+----------+-------+---------------------+-----+-----------------+
|Programa  |M030EXC   |Autor  |EVERSON SOUZA        |Data |  14/09/09       |
+----------+----------+-------+---------------------+-----+-----------------+
|Desc.     |Ponto de Entrada na exclus�o do cliente para excluir automati-  |
|          |camente o item contabil a partir do c�digo e loja do mesmo.     |
+----------+----------------------------------------------------------------+
|            ALTERACOES REALIZADAS DESDE A CRIACAO                          |
+----------+-------------+--------------------------------------------------+
| DATA     | PROGRAMADOR | DESCRICAO                                        |
+----------+-------------+--------------------------------------------------+
|          |             |                                                  |
+----------+-------------+--------------------------------------------------+
*/

#include "rwmake.ch"

User Function M030EXC()


dbSelectArea("CTD")
dbSetOrder(1)
If dbseek(xFilial("CTD")+"C"+ALLTRIM(SA1->(A1_COD+A1_LOJA)))
	If Reclock("CTD",.F.)
		dbDelete()
		MsUnlock("CTD") 
	EndIf
EndIf

Return
