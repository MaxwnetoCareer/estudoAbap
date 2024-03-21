*&---------------------------------------------------------------------*
*Autor: Max Wilson
*Data: 11/03/2024
*&---------------------------------------------------------------------*
REPORT ZCURSO003.

"Criando constante
  CONSTANTS lc_pi(13) TYPE p  DECIMALS 13 VALUE '3.141592653589'.

  "Criando as variaveis
  DATA ld_raio(4) TYPE p DECIMALS 2.
  DATA ld_area(4) TYPE p DECIMALS 2.

  ld_raio = '2'.

  ld_area = ( ld_raio * ld_raio ) * lc_pi.


  WRITE: 'A área de um circulo com o raio de ', ld_raio, ' = ' , ld_area.
