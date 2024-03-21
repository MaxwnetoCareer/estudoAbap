*&---------------------------------------------------------------------*
*& Autor: Max Wilson
*&-Data: 12/03/2024
*&---------------------------------------------------------------------*
REPORT zcurso004.
DATA ld_nome(10) TYPE c.
DATA ld_sobrenome(10) TYPE c.
DATA ld_nomecompleto(21) TYPE c.

ld_nome = 'Max'.
ld_sobrenome = 'Souza'.


ld_nomecompleto = |{ ld_nome } { ld_sobrenome }!|.

WRITE 'Convite para a festa:'.
NEW-LINE.
SKIP.

WRITE: 'Olá ', ld_nomecompleto.
NEW-LINE.
SKIP.

WRITE 'Você foi convidado para a festa de fim de ano. Contamos com a sua presença!'.
NEW-LINE.
SKIP.

WRITE 'Atenciosamente.'.
NEW-LINE.
SKIP.

WRITE 'Empresa XYZ'.
