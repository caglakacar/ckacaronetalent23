*&---------------------------------------------------------------------*
*& Report zot_11_p_twitter
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_twitter.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_twtid TYPE i OBLIGATORY,
              p_twt TYPE c LENGTH 250 OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.
SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_twtat RADIOBUTTON GROUP g1,
              p_twtdeg RADIOBUTTON GROUP g1,
              p_twtsil  RADIOBUTTON GROUP g1,
              p_twtgos   RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK b2.

START-OF-SELECTION.
TABLES : zot_11_t_twt.
