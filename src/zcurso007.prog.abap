*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*& Data: 12/03/2024
*&---------------------------------------------------------------------*
REPORT zcurso007.

SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS p_cat(1) TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_descricao TYPE string.
  CASE p_cat.
    WHEN 'A'.
      ld_descricao = 'Moto'.
    WHEN 'B'.
      ld_descricao = 'Carro'.
    WHEN 'C'.
      ld_descricao = 'Veículos de Carga'.
    WHEN 'D'.
      ld_descricao = 'Transporte de passageiros'.
    WHEN 'E'.
      ld_descricao = 'Caminhões'.
    WHEN OTHERS.
      ld_descricao = 'Categoria inválida'.
  ENDCASE.

  WRITE ld_descricao.
