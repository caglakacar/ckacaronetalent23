*&---------------------------------------------------------------------*
*& Report zot_11_p_fibo_diz_kir
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_fibo_diz_kir.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_num1 TYPE int4 OBLIGATORY,
              p_num2 TYPE int1 OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_num1.
  MESSAGE 'Lütfen 1 ile 9 arasında bir sayı giriniz.' TYPE 'E'.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_num2.
  MESSAGE 'Lütfen 1 ile 1000 arasında bir sayı giriniz.' TYPE 'E'.

IF p_num1 = 0 OR p_num2 = 0.
  MESSAGE 'Her iki alanı da doldurmak zorundasınız.' TYPE 'E'.
 ENDIF.

START-OF-SELECTION.

DATA : num1 TYPE i VALUE 1,
       num2 TYPE i VALUE 1,
       krlm TYPE i VALUE 0.
WHILE
     num1 <= p_num1.
IF   krlm MOD p_num2 EQ 0.

NEW-LINE.
         WRITE: num1.
         ELSE.
             WRITE: num1.
        ENDIF.

DATA(total) = num1 + num2.
        num1  = num2.
        num2 = total.
     krlm = krlm + 1.
       ENDWHILE.


"Hocanın Kodu!!

*PARAMETERS : p_son  TYPE i,
*             p_dizi TYPE i.
*
*DATA :    lv_ilk    TYPE i VALUE 0,
*       lv_ikinci TYPE i VALUE 1,
*       lv_total  TYPE i.
* "p_son 100 , p_dizi 3
*
*
* DO.
*       lv_total = lv_ilk + lv_ikinci. "21
*    IF    lv_total LE p_son.             "21 küçük eşit 100
*          lv_ilk = lv_ikinci.            "13
*          lv_ikinci = lv_total.          "21
*
* WRITE : lv_total.  "21
*
*       IF sy-index MOD p_dizi EQ 0. "7 3
*       WRITE : /. "satır atla
*       ENDIF.
*    ELSE.
*    EXIT.
*    ENDIF.
*ENDDO.
