*&---------------------------------------------------------------------*
*& Report zot_11_p_asal_kontrl
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_asal_kontrl.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_num TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

DATA: lv_bolum TYPE i,
      lv_kalan TYPE P,
      lv_sayi  TYPE P,
      lv_flag  TYPE C.

      lv_sayi = 2.

WHILE lv_sayi LE p_num.
      lv_bolum = 2.

      CLEAR lv_flag.

        WHILE lv_bolum < lv_sayi.
              lv_kalan = lv_sayi MOD lv_bolum.

                IF  lv_kalan = 0.
                    lv_flag = 'X'.
                EXIT.
                ENDIF.

              lv_bolum = lv_bolum + 1.
        ENDWHILE.

       IF    lv_flag = ''.
       WRITE : / lv_sayi.
       WRITE : 'Asal sayıdır.'.
       ENDIF.

       lv_sayi = lv_sayi + 1.
ENDWHILE.
