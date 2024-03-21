*&---------------------------------------------------------------------*
*& Autor: Max WIlson
*& Data: 13/03/2024
*&---------------------------------------------------------------------*
REPORT ZCURSO009.

SELECTION-SCREEN BEGIN OF BLOCK b1.
   PARAMETERS p_msg(60) TYPE c OBLIGATORY DEFAULT 'Isso é uma mensagem.'.
   PARAMETERS p_type TYPE c OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.



   "Show a warning if W is typed.
*AT SELECTION-SCREEN.
*  IF p_type = 'W'.
*    MESSAGE 'Isso é um aviso' TYPE 'W'.
*  ENDIF.

  "MESSAGE 'Teste' TYPE 'S' DISPLAY LIKE 'E'
*START-OF-SELECTION.
*  MESSAGE p_msg TYPE p_type DISPLAY LIKE 'E'.
*
*  WRITE 'Fim do programa!'.

   "Print a message according to the letter typed.
START-OF-SELECTION.
  MESSAGE p_msg TYPE p_type.

  WRITE 'Fim do programa!'.
