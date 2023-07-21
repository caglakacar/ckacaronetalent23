*&---------------------------------------------------------------------*
*& Report zot_11_p_compare
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_compare.

*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
*  PARAMETERS: p_dgskn1 TYPE char6 OBLIGATORY,
*              p_dgskn2 TYPE char6 OBLIGATORY,
*              p_dgskn3 TYPE char6 OBLIGATORY,
*              p_dgskn4 TYPE char6 OBLIGATORY,
*              p_dgskn5 TYPE char6 OBLIGATORY.
*SELECTION-SCREEN END OF BLOCK b1.
*
*START-OF-SELECTION.
*
*  DATA: lv_deger   TYPE xstring,
*        lv_sonuc   TYPE xstring,
*        lv_sonuc1  TYPE string,
*        lt_prmtre  TYPE TABLE OF xstring,
*        lt_prmtre1 TYPE TABLE OF string.
*
*  APPEND: p_dgskn1 TO lt_prmtre,
*          p_dgskn2 TO lt_prmtre,
*          p_dgskn3 TO lt_prmtre,
*          p_dgskn4 TO lt_prmtre,
*          p_dgskn5 TO lt_prmtre.
*
*  SORT lt_prmtre.
*
*  LOOP AT lt_prmtre INTO DATA(lv_prmtre).
*    FIND lv_deger IN lv_prmtre IN BYTE MODE MATCH OFFSET DATA(moff).
*    IF moff = 1.
*
*      DATA: lv_length TYPE i,
*            lt_binary TYPE STANDARD TABLE OF x255.
*      CALL FUNCTION 'SCMS_XSTRING_TO_BINARY'
*        EXPORTING
*          buffer        = lv_sonuc
*        IMPORTING
*          output_length = lv_length
*        TABLES
*          binary_tab    = lt_binary.
*      CALL FUNCTION 'SCMS_BINARY_TO_STRING'
*        EXPORTING
*          input_length = lv_length
*        IMPORTING
*          text_buffer  = lv_sonuc1
*        TABLES
*          binary_tab   = lt_binary
*        EXCEPTIONS
*          failed       = 1
*          OTHERS       = 2.
*
*      CLEAR: lv_length, lt_binary.
*
*      CALL FUNCTION 'SCMS_XSTRING_TO_BINARY'
*        EXPORTING
*          buffer        = lt_prmtre
*        IMPORTING
*          output_length = lv_length
*        TABLES
*          binary_tab    = lt_binary.
*      CALL FUNCTION 'SCMS_BINARY_TO_STRING'
*        EXPORTING
*          input_length = lv_length
*        IMPORTING
*          text_buffer  = lt_prmtre1
*        TABLES
*          binary_tab   = lt_binary
*        EXCEPTIONS
*          failed       = 1
*          OTHERS       = 2.
*
**  CONCATENATE lv_sonuc1
**              lt_prmtre1
**              INTO lv_sonuc1
**              SEPARATED BY '-'.
*      lv_deger = lv_prmtre.
*    ELSE.
*      CLEAR lv_sonuc.
*    ENDIF.
*  ENDLOOP.
*
*  cl_demo_output=>display( lv_sonuc ).
