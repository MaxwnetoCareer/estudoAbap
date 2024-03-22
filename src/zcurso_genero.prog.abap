*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*& Data: 22/03/2024
*&---------------------------------------------------------------------*
REPORT ZCURSO_GENERO.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETERS: p_sexo(1) TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

DATA ld_genero TYPE string.

Case p_sexo.
  WHEN 'M'.
    ld_genero = text-001.
  WHEN 'F'.
    ld_genero = text-002.
  WHEN OTHERS.
    ld_genero = text-003.
ENDCASE.

WRITE: ld_genero.
