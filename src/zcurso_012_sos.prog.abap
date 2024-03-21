*&---------------------------------------------------------------------*
*& Include ZCURSO_012_SOS
*&---------------------------------------------------------------------*
INCLUDE ZCURSO_012_FRM.
START-OF-SELECTION.
  PERFORM calcular_media.
  WRITE: |Nota Final: { ld_media }|.
  NEW-LINE.
  IF ld_media >= 0 AND ld_media <= 50.
    WRITE 'Sua nota foi muito baixa, você foi reprovado!'.
  ELSEIF ld_media >= 51 AND ld_media < 60.
    WRITE 'Você quase passou, estude um pouco mais!'.
  ELSEIF ld_media >= 60 AND ld_media <= 100.
    WRITE 'Parabéns, você passou!'.
  ENDIF.
