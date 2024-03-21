*&---------------------------------------------------------------------*
*& Report ZCURSO_013
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcurso_013.

START-OF-SELECTION.
  DATA: BEGIN OF ls_cliente
    , id TYPE int4
    , nome(20) TYPE c
    , email(50) TYPE c
    , END OF ls_cliente.

  ls_cliente-id = 1.
  ls_cliente-nome = 'Karolina'.
  ls_cliente-email = 'kazinha@hotmail.com'.

  WRITE: |ID:  { ls_cliente-id }|.
  NEW-LINE.

  WRITE: |Nome:  { ls_cliente-nome }|.
  NEW-LINE.

  WRITE: |E-mail: { ls_cliente-email }|.
