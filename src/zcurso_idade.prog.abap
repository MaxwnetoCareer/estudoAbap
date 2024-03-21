*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*& Data: 20/03/2024
*&---------------------------------------------------------------------*
REPORT zcurso_idade.

SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS: p_idade TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

IF p_idade < 0.
  WRITE: 'Idade informada precisa ser um número positivo'.
ELSEIF p_idade >= 0 AND p_idade < 12.
  WRITE: 'Criança'.
ELSEIF p_idade >= 12 AND p_idade < 18.
  WRITE: 'Adolescente'.
ELSEIF p_idade >= 18 AND p_idade <= 60.
  WRITE: 'Adulto'.
ELSE.
  WRITE: 'Idoso'.
ENDIF.
