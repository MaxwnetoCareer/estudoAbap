*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*& Data: 12/03/2024
*&---------------------------------------------------------------------*
REPORT zcurso005.

SELECTION-SCREEN  BEGIN OF BLOCK b1.
  PARAMETERS: p_1bim(12) TYPE p DECIMALS 2.
  PARAMETERS: p_2bim(12) TYPE p DECIMALS 2.
  PARAMETERS: p_3bim(12) TYPE p DECIMALS 2.
  PARAMETERS: p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEN  END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.
  ld_media = ( p_1bim +  p_2bim +  p_3bim +  p_4bim ) / 4.
  WRITE: 'A média anual do aluno é: ', ld_media LEFT-JUSTIFIED.
