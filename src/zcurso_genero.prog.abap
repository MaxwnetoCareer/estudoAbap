*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*& Data: 22/03/2024
*&---------------------------------------------------------------------*
REPORT ZCURSO_GENERO.

SELECTION-SCREEN BEGIN OF BLOCK b1.
	PARAMETERS: p_sexo(1) TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

Case p_sexo.
	WHEN 'M'.
		WRITE: 'Masculino'.
	WHEN 'F'.
		WRITE: 'Feminino'.
	WHEN OTHERS.
		WRITE: 'Favor digitar M ou F'.
ENDCASE.
