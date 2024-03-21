*&---------------------------------------------------------------------*
*& Include ZCURSO_012_FRM
*&---------------------------------------------------------------------*
INCLUDE ZCURSO_012_TOP.
INCLUDE ZCURSO_012_SEL.
FORM calcular_media.
  ld_media = ( p_1bim +  p_2bim +  p_3bim +  p_4bim ) / 4.
ENDFORM.
