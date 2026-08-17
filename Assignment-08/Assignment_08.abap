*&---------------------------------------------------------------------*
*& Report Y182R008_ASSPRAC8
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R008_ASSPRAC8.

*Print a factorial of a given number.
*Input: Take a number
*Output: Print factorial of the number.
*Example: Input: 5
*Output: 120.

PARAMETERS: p_no1 TYPE i.

DATA: gv_fact type i VALUE 1,
      gv_temp TYPE i.

START-OF-SELECTION.

gv_temp = p_no1.
DO p_no1 TIMES.
  gv_fact = gv_fact * gv_temp.
  gv_temp = gv_temp - 1.

ENDDO.
WRITE: gv_fact.
END-OF-SELECTION.