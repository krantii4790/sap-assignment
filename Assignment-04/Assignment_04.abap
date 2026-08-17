*&---------------------------------------------------------------------*
*& Report Y182R004_ASSIGNMENTS4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y182R004_ASSIGNMENTS4.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_lev TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS:
    rb_up    RADIOBUTTON GROUP g1,
    rb_down  RADIOBUTTON GROUP g1,
    rb_left  RADIOBUTTON GROUP g1,
    rb_right RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.

AT SELECTION-SCREEN.
  IF p_lev LE 0.
    MESSAGE 'Enter number greater than zero' TYPE 'E' DISPLAY LIKE 'I'.
  ENDIF.

START-OF-SELECTION.

  DATA: lv_row   TYPE i,
        lv_space TYPE i,
        lv_star  TYPE i.

  "up part
  IF rb_up = 'X'.
    lv_row = 1.
    WHILE lv_row LE p_lev.

      lv_space = 1.
      WHILE lv_space LE p_lev - lv_row.
        WRITE ' '.
        lv_space = lv_space + 1.
      ENDWHILE.

      lv_star = 1.
      WHILE lv_star LE 2 * lv_row - 1.
        WRITE '*'.
        lv_star = lv_star + 1.
      ENDWHILE.

      lv_row = lv_row + 1.
      WRITE: /.
    ENDWHILE.
  ENDIF.


  "down part
  IF rb_down = 'X'.
    lv_row = p_lev.
    WHILE lv_row GE 1.

      lv_space = 1.
      WHILE lv_space LE p_lev - lv_row.
        WRITE ' '.
        lv_space = lv_space + 1.
      ENDWHILE.

      lv_star = 1.
      WHILE lv_star LE 2 * lv_row - 1.
        WRITE '*'.
        lv_star = lv_star + 1.
      ENDWHILE.

      lv_row = lv_row - 1.
      WRITE: /.
    ENDWHILE.
  ENDIF.


  "left part
  IF  rb_left = 'X'.
    lv_row = 1.
    WHILE  lv_row LE p_lev.

      lv_space = 1.
      WHILE lv_space LE p_lev - lv_row.
        WRITE: ' '.
        lv_space = lv_space + 1.
      ENDWHILE.

      lv_star = 1.
      WHILE lv_star LE lv_row.
        WRITE: '*'.
        lv_star = lv_star + 1.
      ENDWHILE.

      lv_row = lv_row + 1.
      WRITE: /.
    ENDWHILE.

    lv_row = p_lev - 1.
    WHILE lv_row GE 1.

      lv_space = 1.
      WHILE lv_space LE p_lev - lv_row.
        WRITE: ' '.
        lv_space = lv_space + 1.
      ENDWHILE.

      lv_star = 1.
      WHILE lv_star LE lv_row.
        WRITE: '*'.
        lv_star = lv_star + 1.
      ENDWHILE.

      lv_row = lv_row - 1.
      WRITE: /.
    ENDWHILE.
  ENDIF.




  "right part
  IF  rb_right = 'X'.
    lv_row = 1.
    WHILE  lv_row LE p_lev.

      lv_star = 1.
      WHILE lv_star LE lv_row.
        WRITE: '*'.
        lv_star = lv_star + 1.
      ENDWHILE.

      lv_row = lv_row + 1.
      WRITE: /.
    ENDWHILE.

    lv_row = p_lev - 1.
    WHILE lv_row GE 1.

      lv_star = 1.
      WHILE lv_star LE lv_row.
        WRITE: '*'.
        lv_star = lv_star + 1.
      ENDWHILE.

      lv_row = lv_row - 1.
      WRITE: /.
    ENDWHILE.
  ENDIF.