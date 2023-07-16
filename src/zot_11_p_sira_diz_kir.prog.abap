*&---------------------------------------------------------------------*
*& Report zot_11_p_sira_diz_kir
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_sira_diz_kir.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS : p_son TYPE i,
             p_dizi TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

DATA:  lv_index TYPE i.

DO.
       lv_index = lv_index + 1.
       WRITE lv_index.

  IF lv_index LE p_son.

     IF lv_index MOD p_dizi EQ 0.
     WRITE /.
     ENDIF.
  ELSE.
  EXIT.
  ENDIF.
ENDDO.
