*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*& Data: 15/03/2024
*&---------------------------------------------------------------------*
REPORT ZCURSO010 MESSAGE-ID zcurso.

START-OF-SELECTION.
*  MESSAGE s000(zcurso). "Mensagem comum
*  MESSAGE S001(zcurso) WITH 'Heitor'. "Mensagem com um parametro
*  MESSAGE s002(zcurso) WITH 'Max' 'ABAP'. "Mensagem com dois parâmetros.
*  MESSAGE s003(zcurso). "Mensagem com documentação.
  MESSAGE s003. "Classe de mensagem definida no report
