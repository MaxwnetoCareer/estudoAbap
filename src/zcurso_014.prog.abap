*&---------------------------------------------------------------------*
*& Report ZCURSO_014
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcurso_014.

START-OF-SELECTION.
  DATA lt_cliente TYPE STANDARD TABLE OF zcurso_cliente_s.
  DATA ls_cliente TYPE zcurso_cliente_s.

  ls_cliente-id = 10.
  ls_cliente-nome = 'Max'.
  APPEND ls_cliente TO lt_cliente.

  ls_cliente-id = 20.
  ls_cliente-nome = 'Sara'.
  APPEND ls_cliente TO lt_cliente.

  ls_cliente-id = 30.
  ls_cliente-nome = 'Heitor'.
  APPEND ls_cliente TO lt_cliente.

  LOOP AT lt_cliente INTO ls_cliente.
    WRITE ls_cliente-id.
    WRITE ls_cliente-nome.
    NEW-LINE.
  ENDLOOP.

  SKIP.

  LOOP AT lt_cliente INTO ls_cliente.
    IF ls_cliente-id = 10.
      ls_cliente-nome = |{ ls_cliente-nome }2|.
      MODIFY lt_cliente FROM ls_cliente.
    ENDIF.
  ENDLOOP.

  SORT lt_cliente BY ID DESCENDING.

  LOOP AT lt_cliente INTO ls_cliente.
    WRITE ls_cliente-id.
    WRITE ls_cliente-nome.
    NEW-LINE.
  ENDLOOP.

  SKIP.

  LOOP AT lt_cliente INTO ls_cliente.
    IF ls_cliente-nome = 'Sara'.
      DELETE lt_cliente.
    ENDIF.
  ENDLOOP.

  SORT lt_cliente BY ID ASCENDING.

  LOOP AT lt_cliente INTO ls_cliente.
    WRITE ls_cliente-id.
    WRITE ls_cliente-nome.
    NEW-LINE.
  ENDLOOP.

  SKIP.


  WRITE 'Fim do programa.'.
