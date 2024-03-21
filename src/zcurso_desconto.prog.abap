*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*& Data: 20/03/2024
*&---------------------------------------------------------------------*
REPORT zcurso_desconto.

*Legenda Tipo Cliente:
*F: Funcionário
*J: Cliente PJ
*C: Cliente Pessoa Física

SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS: p_tipo(1)   TYPE c OBLIGATORY, p_valor(10) TYPE p DECIMALS 2 OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

WRITE: / 'Tipo de cliente: ', p_tipo LEFT-JUSTIFIED.
NEW-LINE.
WRITE: / 'Valor da Compra: ', p_valor LEFT-JUSTIFIED.
SKIP.

START-OF-SELECTION.
  DATA ld_valorfinal(10) TYPE p DECIMALS 2.

  CASE p_tipo.

    WHEN 'F'.
      IF p_valor >= 1000.
        ld_valorfinal = ( p_valor / 100 ) * 85.
        WRITE: 'O desconto é de 15%.'.
        NEW-LINE.
      ELSE.
        WRITE: / 'Valor final da compra: R$% ' , ld_valorfinal LEFT-JUSTIFIED.
        ld_valorfinal = ( p_valor / 100 ) * 90.
        WRITE: 'O desconto é de 10%.'.
        NEW-LINE.
        WRITE: / 'Valor final da compra: R$% ' , ld_valorfinal LEFT-JUSTIFIED.
      ENDIF.
    WHEN 'J'.
      IF p_valor >= 1000.
        ld_valorfinal = ( p_valor / 100 ) * 90.
        WRITE: 'O desconto é de 10%.'.
        NEW-LINE.
        WRITE: / 'Valor final da compra: R$% ' , ld_valorfinal LEFT-JUSTIFIED.
      ELSE.
        ld_valorfinal = ( p_valor / 100 ) * 93.
        WRITE: 'O desconto é de 7%.'.
        NEW-LINE.
        WRITE: / 'Valor final da compra: R$% ' , ld_valorfinal LEFT-JUSTIFIED.
      ENDIF.
    WHEN 'C'.
      IF p_valor >= 1000.
        ld_valorfinal = ( p_valor / 100 ) * 93.
        WRITE: 'O desconto é de 7%.'.
        NEW-LINE.
        WRITE: / 'Valor final da compra: R$% ' , ld_valorfinal LEFT-JUSTIFIED.
      ELSE.
        ld_valorfinal = ( p_valor / 100 ) * 95.
        WRITE: 'O desconto é de 5%.'.
        NEW-LINE.
        WRITE: / 'Valor final da compra: R$% ' , ld_valorfinal LEFT-JUSTIFIED.
      ENDIF.
    WHEN OTHERS.
      WRITE: 'Tipo de cliente inválido!'.
  ENDCASE.
