*&---------------------------------------------------------------------*
*& Report Y184R003_ASSIGNMENT_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y182r003_assignment03.

PARAMETERS: p_from TYPE i,
            p_to   TYPE i.

DATA: lv_row     TYPE i,
      lv_col     TYPE i,
      lv_result  TYPE i,
      lv_start   TYPE i,
      lv_cnt     TYPE i.

START-OF-SELECTION.

  IF p_from > p_to.
    WRITE: / 'From number should be less than To number'.
  ELSE.

    lv_start = p_from.

    WHILE lv_start <= p_to.

      lv_row = 1.
      WHILE lv_row <= 10.

        lv_col = lv_start.
        lv_cnt = 0.

        WHILE lv_col <= p_to AND lv_cnt < 5.
          lv_result = lv_col * lv_row.
          WRITE lv_result.
          lv_col = lv_col + 1.
          lv_cnt = lv_cnt + 1.
        ENDWHILE.

        WRITE: /.
        lv_row = lv_row + 1.

      ENDWHILE.
      skip.
      lv_start = lv_start + 5.

    ENDWHILE.

  ENDIF.