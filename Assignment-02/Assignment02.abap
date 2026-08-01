*&---------------------------------------------------------------------*
*& Report Y182R002_ASSIGNMENTS02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R002_ASSIGNMENTS02.

PARAMETERS: p_num TYPE i. " Input number, e.g., 12321

DATA: lv_temp TYPE i,
      lv_mod  TYPE i,
      lv_rev  TYPE i VALUE 0.

" Keep a copy of the original number for final comparison
lv_temp = p_num.

" Loop to reverse the number mathematically
WHILE lv_temp > 0.
  lv_mod  = lv_temp MOD 10.                 " Get the last digit
  lv_rev  = ( lv_rev * 10 ) + lv_mod.       " Append it to the reversed number
  lv_temp = lv_temp DIV 10.                 " Remove the last digit
ENDWHILE.

" Compare the reversed version with the original input
IF p_num = lv_rev.
  WRITE: / p_num, 'is a Palindrome number.'.
ELSE.
  WRITE: / p_num, 'is NOT a Palindrome number.'.
ENDIF.