*&---------------------------------------------------------------------*
*& Report Z_MESSAGE_FLOW
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_MESSAGE_FLOW.

PARAMETERS: p_ok     RADIOBUTTON GROUP grp DEFAULT 'X',
            p_alerta RADIOBUTTON GROUP grp,
            p_info   RADIOBUTTON GROUP grp,
            p_erro   RADIOBUTTON GROUP grp,
            p_exit   RADIOBUTTON GROUP grp.


START-OF-SELECTION.

  IF p_ok = 'X'.
    MESSAGE 'Esta é uma mensagem de sucesso.' TYPE 'S' DISPLAY LIKE 'S'.
  ELSEIF p_alerta = 'X'.
    MESSAGE 'Esta é uma mensagem de alerta.' TYPE 'S' DISPLAY LIKE 'W'.
  ELSEIF p_info = 'X'.
    MESSAGE 'Esta é uma mensagem informativa.' TYPE 'S' DISPLAY LIKE 'I'.
  ELSEIF p_erro = 'X'.
    MESSAGE 'Esta é uma mensagem de erro.' TYPE 'S' DISPLAY LIKE 'E'.
  ELSE.
    MESSAGE 'Esta é uma mensagem de encerramento.' TYPE 'S' DISPLAY LIKE 'A'.
  ENDIF.
