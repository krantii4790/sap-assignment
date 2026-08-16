*&---------------------------------------------------------------------*
*& Report Y182R007_ASSIGNMENTS07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R007_ASSIGNMENTS07.

*Check whether a given number is prime or not.
*Input: Single Number
*
*Output 1
*E.g., Input: 7
*Output: 7 is a prime number with a Green Colour.
*Eg. Input 8
*Output: 8 is not a prime number with a Red Colour.

PARAMETERS: p_no1 TYPE i.

DATA: lv_no1 TYPE i VALUE 1,  "This variable is used to check every number from 1 to p_num
      lv_count TYPE i VALUE 0.  " This counts how many numbers exactly divide p_num.

START-OF-SELECTION.

DO p_no1 TIMES.

  IF p_no1 MOD lv_no1 = 0.
    lv_count = lv_count + 1.
  ENDIF.

  lv_no1 = lv_no1 + 1.

ENDDO.

IF lv_count = 2.
   WRITE:/ p_no1 COLOR 5 INVERSE, 'is Prime Number' COLOR 5 INVERSE .
ELSE.
  WRITE:/ p_no1 COLOR 6 INVERSE, 'is not Prime Number' COLOR 6 INVERSE .
ENDIF.

END-OF-SELECTION.