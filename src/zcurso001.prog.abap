*
* Autor: Max Wilson
* Data de criação: 11/03/2024
*

REPORT zcurso001.

START-OF-SELECTION.
  DATA: lt_data TYPE STANDARD TABLE OF saplane.
  DATA: ls_data TYPE saplane.

  "Consultando dados
  SELECT *
    INTO TABLE lt_data
    FROM saplane.

  "Imprimindo informações na tela
  LOOP AT lt_data INTO ls_data.
    WRITE ls_data-planetype.
    WRITE ls_data-producer.
    NEW-LINE.

  ENDLOOP.
