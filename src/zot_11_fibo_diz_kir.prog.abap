*&---------------------------------------------------------------------*
*& Report zot_11_fibo_diz_kir
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_fibo_diz_kir.

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

DATA(num1) =  1.
DATA(num2) = 1.
DATA(dongu) = 0.

WHILE
   num1 <= p_num1.
IF dongu MOD p_num2 = 0.

         NEW-LINE.
         WRITE: num1.
         ELSE.
             WRITE: num1.
        ENDIF.

        DATA(term) = num1 + num2.
        num1  = num2.
        num2 = term.
     dongu = dongu + 1.
       ENDWHILE.
