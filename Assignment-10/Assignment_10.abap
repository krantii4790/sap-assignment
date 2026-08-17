*&---------------------------------------------------------------------*
*& Report Y182R010_ASSIGNMENTS10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R010_ASSIGNMENTS10.

PARAMETERS: p_num1 TYPE i,
      p_num2 TYPE i,
      p_num3 TYPE i,
      p_num4 TYPE i,
      p_num5 TYPE i,
      p_num6 TYPE i,
      p_num7 TYPE i,
      p_num8 TYPE i,
      p_num9 TYPE i,
      p_num10 TYPE i.

DATA: temp TYPE i,
      gv_num1 TYPE i,
      gv_num2 TYPE i,
      gv_num3 TYPE i,
      gv_num4 TYPE i,
      gv_num5 TYPE i,
      gv_num6 TYPE i,
      gv_num7 TYPE i,
      gv_num8 TYPE i,
      gv_num9 TYPE i,
      gv_num10 TYPE i.

gv_num1 = p_num1.
gv_num2 = p_num2.
gv_num3 = p_num3.
gv_num4 = p_num4.
gv_num5 = p_num5.
gv_num6 = p_num6.
gv_num7 = p_num7.
gv_num8 = p_num8.
gv_num9 = p_num9.
gv_num10 = p_num10.

START-OF-SELECTION.
DO 10 TIMES.
  IF gv_num1 > gv_num2.
    temp = gv_num2.
    gv_num2 = gv_num1.
    gv_num1 = temp.
  ENDIF.
  IF gv_num2 > gv_num3.
    temp = gv_num3.
    gv_num3 = gv_num2.
    gv_num2 = temp.
  ENDIF.
  IF gv_num3 > gv_num4.
    temp = gv_num4.
    gv_num4 = gv_num3.
    gv_num3 = temp.
  ENDIF.
  IF gv_num4 > gv_num5.
    temp = gv_num5.
    gv_num5 = gv_num4.
    gv_num4 = temp.
  ENDIF.
  IF gv_num5 > gv_num6.
    temp = gv_num6.
    gv_num6 = gv_num5.
    gv_num5 = temp.
  ENDIF.
  IF gv_num6 > gv_num7.
    temp = gv_num7.
    gv_num7 = gv_num6.
    gv_num6 = temp.
  ENDIF.
  IF gv_num7 > gv_num8.
    temp = gv_num8.
    gv_num8 = gv_num7.
    gv_num7 = temp.
  ENDIF.
  IF gv_num8 > gv_num9.
    temp = gv_num9.
    gv_num9 = gv_num8.
    gv_num8 = temp.
  ENDIF.
  IF gv_num9 > gv_num10.
    temp = gv_num10.
    gv_num10 = gv_num9.
    gv_num9 = temp.
  ENDIF.

ENDDO.

WRITE:/ 'Sorted Number: '.
  WRITE:/ gv_num1, gv_num2, gv_num3, gv_num4, gv_num5, gv_num6, gv_num7, gv_num8, gv_num9, gv_num10.

END-OF-SELECTION.