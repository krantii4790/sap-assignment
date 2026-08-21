*&---------------------------------------------------------------------*
*& Report Y182R012_ASSIGNMENT12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R012_ASSIGNMENT12.

DATA: gv_num1 TYPE i,
      gv_num2 TYPE i,
      gv_num3 TYPE i.

PARAMETERS: p_no1 TYPE i,
            p_no2 TYPE i,
            p_no3 TYPE i,
            p_no4 TYPE i,
            p_no5 TYPE i.

PARAMETERS: cb_add AS CHECKBOX,
            cb_avg AS CHECKBOX,
            cb_pro AS CHECKBOX.


AT SELECTION-SCREEN.
  IF p_no1 < 0 OR p_no2 < 0 OR p_no3 < 0 OR p_no4 < 0 OR p_no5 < 0.
  MESSAGE: 'GIVE THE NUMBERS ZERO OR GREATER THAN ZERO' TYPE 'E' DISPLAY LIKE 'I'.
  ENDIF.

START-OF-SELECTION.

IF cb_add = 'X'.
   gv_num1 = p_no1 + p_no2 + p_no3 + p_no4 + p_no5.
   WRITE: / 'The Additions of No is : ', gv_num1.
ENDIF.
*ULINE.
IF cb_avg = 'X'.
   gv_num2 = ( p_no1 + p_no2 + p_no3 + p_no4 + p_no5 ) / 5.
   WRITE: / 'The Avarage of all values is : ', gv_num2.
ENDIF.
*ULINE.
IF cb_avg = 'X'.
   gv_num3 = ( p_no1 * p_no2 * p_no3 * p_no4 * p_no5 ).
   WRITE: / 'The Product of all Numbers is :', gv_num3.

ENDIF.
*ULINE.
END-OF-SELECTION.