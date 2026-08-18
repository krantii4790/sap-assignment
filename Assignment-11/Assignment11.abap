*&---------------------------------------------------------------------*
*& Report Y182R011_ASSIGNMENTS11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R011_ASSIGNMENTS11.

*Write a Program to perform Arithmetic operations. Use radio buttons to select an operation. Give error message if any non-numeric value is entered.
*(Use All events) Input: Take two Numbers,
*Number 1: ____ ,
*Number 2:____.
*Select an operation through the radio button: Addition/Subtraction/Division/Multiplication
*Validation: Check for Non-Numeric value
*Output: Print Result as per selection.

DATA: gv_no1 TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
  PARAMETERS: P_NUM1 TYPE i,
             P_NUM2 TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE text-002.
  SELECTION-SCREEN BEGIN OF LINE.
  PARAMETERS: rb_add RADIOBUTTON GROUP g1 USER-COMMAND ucl DEFAULT 'X'.
  SELECTION-SCREEN COMMENT (8) TEXT-003.
  PARAMETERS: rb_SUB RADIOBUTTON GROUP g1.
  SELECTION-SCREEN COMMENT (8) TEXT-004.
  PARAMETERS: rb_MUL RADIOBUTTON GROUP g1.
  SELECTION-SCREEN COMMENT (8) TEXT-005.
  PARAMETERS: rb_DIV RADIOBUTTON GROUP g1.
  SELECTION-SCREEN COMMENT (8) TEXT-006.
  PARAMETERS: rb_MOD RADIOBUTTON GROUP g1.
  SELECTION-SCREEN COMMENT (8) TEXT-007.
  SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN end OF BLOCK b2.
INITIALIZATION.

AT SELECTION-SCREEN OUTPUT.
AT SELECTION-SCREEN.

IF rb_div = 'X' AND p_num2 = 0.
  MESSAGE 'Division by zero is not allowed' TYPE 'E'.
ENDIF.

START-OF-SELECTION.

   IF rb_add = 'X'.
     gv_no1 = p_num1 + p_num2.
   ELSEIF rb_sub = 'X'.
     gv_no1 = p_num1 - p_num2.
   ELSEIF rb_mul = 'X'.
     gv_no1 = p_num1 * p_num2.
   ELSEIF rb_div = 'X'.
     gv_no1 = p_num1 DIV p_num2.
   ELSEIF rb_mod = 'X'.
     gv_no1 = p_num1 MOD p_num2.

   ENDIF.

  WRITE: / 'Number 1: ', p_num1.
  WRITE: / 'Number 2: ', p_num2.

IF rb_add = 'X'.
     WRITE: / 'The Additions of ', p_num1, 'And ', p_num2, ' IS ', gv_no1.
   ELSEIF rb_sub = 'X'.
     WRITE: / 'The Substraction of ', p_num1, 'And ', p_num2, ' IS ', gv_no1.
   ELSEIF rb_mul = 'X'.
     WRITE: / 'The Division of ', p_num1, 'And ', p_num2, ' IS ', gv_no1.
   ELSEIF rb_div = 'X'.
     WRITE: / 'The Division of ', p_num1, 'And ', p_num2, ' IS ', gv_no1.
   ELSEIF rb_mod = 'X'.
     WRITE: / 'The Mode of ', p_num1, 'And ', p_num2, ' IS ', gv_no1.
ENDIF.

END-OF-SELECTION.