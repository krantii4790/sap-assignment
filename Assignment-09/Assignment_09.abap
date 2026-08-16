*&---------------------------------------------------------------------*
*& Report Y182R009_ASSIGNMENTS09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R009_ASSIGNMENTS09.
PARAMETERS: p_num1 TYPE i.

DATA: temp TYPE i,
      dig TYPE i,
      num TYPE i,
      sum TYPE i.

START-OF-SELECTION.
num = p_num1.
temp = num.
sum = 0.

WHILE temp GT 0.

  dig = temp MOD 10.
  sum = sum + ( dig * dig * dig ).
  temp = temp DIV 10.

ENDWHILE.

IF sum = num.
  WRITE: / p_num1 COLOR 5 INVERSE, 'Given No is Aamstron' COLOR 5 INVERSE.
  ELSE.
    WRITE: / p_num1 COLOR 6 INVERSE, 'Given No is not Aamstron' COLOR 5 INVERSE.


ENDIF.
END-OF-SELECTION.