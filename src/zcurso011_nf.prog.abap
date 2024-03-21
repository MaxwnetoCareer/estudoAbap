IF ld_media < 60.
  ld_mensagem = |Sua média anual foi de { ld_media }. Você foi reprovado!|.
ELSE.
  ld_mensagem = |Sua média anual foi de { ld_media }. Você foi aprovado, parabéns!|.
ENDIF.

WRITE ld_mensagem.
