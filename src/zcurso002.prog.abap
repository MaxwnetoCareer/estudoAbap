* Autor: Max Wilson
* Data: 11/03/2024
*
REPORT zcursoteste002.

"Declaração das variáveis
DATA ld_id TYPE i. "número
DATA ld_nome(100) TYPE c. "texto
DATA ld_dtnasc TYPE d. "data
DATA ld_hrnasc TYPE t. "hora
DATA ld_peso TYPE p DECIMALS 3. "número com decimais
DATA ld_desc TYPE string. "texto
DATA ld_login(5) TYPE n. "número

"Inicialização das variáveis
ld_id = 1.
ld_nome = 'José da Silva'.
ld_dtnasc = '19901230'.
ld_hrnasc = '153523'.
ld_peso = '80.000'.
ld_desc = 'Um cliente que compra em grande volume'.
ld_login = 1.

"Escrevendo dados na tela
WRITE 'Dados do cliente:'.
NEW-LINE.

WRITE (12) 'ID:'.
WRITE ld_id LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12) 'Nome:'.
WRITE ld_nome LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12) 'Nascimento:'.
WRITE ld_dtnasc DD/MM/YYYY.
WRITE: ld_hrnasc+0(2),':',ld_hrnasc+2(2),':',ld_hrnasc+4(2).
NEW-LINE.

WRITE (12) 'Peso:'.
WRITE ld_peso LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12) 'Descrição: '.
WRITE ld_desc LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12) 'Login: '.
WRITE ld_login LEFT-JUSTIFIED.
NEW-LINE.
