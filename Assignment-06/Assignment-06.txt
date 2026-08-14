*&---------------------------------------------------------------------*
*& Report Y182R006_ASSIGNMENTS6
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R006_ASSIGNMENTS6.

DATA : gv_a TYPE i,
       gv_b TYPE i,
       gv_c TYPE i.

PARAMETERS : p_num   TYPE i,
             p_count TYPE i.

START-OF-SELECTION .

gv_a = p_num.
gv_b = gv_a + 1.

DO p_count TIMES.
  WRITE :  gv_a.
  gv_c = gv_a + gv_b.
  gv_a = gv_b.
  gv_b = gv_c.

ENDDO.