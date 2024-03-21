*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*& Data: 12/03/2024
*&---------------------------------------------------------------------*

REPORT zcurso006.

SELECTION-SCREEN  BEGIN OF BLOCK b1.
PARAMETERS: p_1bim(12) TYPE p DECIMALS 2.
PARAMETERS: p_2bim(12) TYPE p DECIMALS 2.
PARAMETERS: p_3bim(12) TYPE p DECIMALS 2.
PARAMETERS: p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEN  END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.
  ld_media = ( p_1bim +  p_2bim +  p_3bim +  p_4bim ) / 4.

  IF ld_media >= 0 AND ld_media <= 50.
    WRITE 'Sua nota foi muito baixa, você foi reprovado!'.
  ELSEIF ld_media >= 51 AND ld_media < 60.
    WRITE 'Você quase passou, estude um pouco mais!'.
  ELSEIF ld_media >= 60 AND ld_media <= 100.
    WRITE 'Parabéns, você passou!'.
  ENDIF.
