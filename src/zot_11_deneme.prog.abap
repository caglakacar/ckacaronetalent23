*&---------------------------------------------------------------------*
*& Report zot_11_deneme
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_deneme.

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
DATA gv_sonuc TYPE p decimals 5.

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


*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
*PARAMETERS: p_num1 TYPE p DECIMALS 2 OBLIGATORY,
*            p_num2 TYPE p DECIMALS 2 OBLIGATORY.
*SELECTION-SCREEN END OF BLOCK b1.
*SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
*PARAMETERS: r_pls RADIOBUTTON GROUP grp1,
*            r_mıns  RADIOBUTTON GROUP grp1,
*            r_multp  RADIOBUTTON GROUP grp1,
*            r_dvdd  RADIOBUTTON GROUP grp1.
*SELECTION-SCREEN END OF BLOCK b2.
*
*START-OF-SELECTION.
*DATA(gv_num1) = p_num1.
*DATA(gv_num2) = p_num2.
*DATA gv_result TYPE P DECIMALS 5.
*
*IF r_pls = 'X'.
*gv_result = gv_num1 + gv_num2.
*cl_demo_output=>write( gv_result ).
*
*ELSEIF r_mıns = 'X'.
*gv_result = gv_num1 - gv_num2.
*cl_demo_output=>write( gv_result ).
*
*ELSEIF r_multp  = 'X'.
*gv_result = gv_num1 * gv_num2.
*cl_demo_output=>write( gv_result ).
*
*ELSEIF r_dvdd = 'X'.
*IF gv_result = p_num1 / 0.
*TRY.
* CATCH cx_sy_zerodivide.
*    cl_demo_output=>write( |Cannot be divided by zero!| ).
*ENDTRY.
*ENDIF.
*gv_result = gv_num1 / gv_num2.
*cl_demo_output=>write( gv_result ).
*ENDIF.
*
*cl_demo_output=>write( gv_result ).
*cl_demo_output=>display( ).
