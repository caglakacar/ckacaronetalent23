*&---------------------------------------------------------------------*
*& Report zot_11_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_calculator.
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_val1 TYPE i,
              p_val2 TYPE i.
SELECTION-SCREEN END OF BLOCK b1.
SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_topla RADIOBUTTON GROUP g1,
              p_cikar RADIOBUTTON GROUP g1,
              p_carp  RADIOBUTTON GROUP g1,
              p_bol   RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.

START-OF-SELECTION.
DATA(gv_val1) = p_val1.
DATA(gv_val2) = p_val2.
DATA gv_sonuc TYPE P DECIMALS 5.

IF p_topla = 'X'.
gv_sonuc = gv_val1 + gv_val2.

ELSEIF p_cikar = 'X'.
gv_sonuc = gv_val1 - gv_val2.

ELSEIF p_carp = 'X'.
gv_sonuc = gv_val1 * gv_val2.

ELSEIF p_bol = 'X'.
IF gv_val2 = 0.
TRY.
gv_sonuc = gv_val1 / 0.
CATCH cx_sy_zerodivide.
MESSAGE 'Cannot be divided by zero!' TYPE 'E'.
ENDTRY.
ENDIF.
gv_sonuc = gv_val1 / gv_val2.
ENDIF.

cl_demo_output=>write( gv_sonuc ).
cl_demo_output=>display(  ).
