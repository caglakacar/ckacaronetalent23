*&---------------------------------------------------------------------*
*& Include zot_11_i_report_sel
*&---------------------------------------------------------------------*

TABLES: eban,
        ekpo.

DATA:   gs_sat TYPE gty_sat,
        gs_sas TYPE gty_sas,
        gt_sat TYPE TABLE OF gty_sat,
        gt_sas TYPE TABLE OF gty_sas.



SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  SELECT-OPTIONS: s_satbfn FOR eban-banfn,
                  s_sasbp FOR eban-bnfpo,

                  s_satbln FOR ekpo-ebeln,
                  s_sasbp1 FOR eban-bnfpo.
SELECTION-SCREEN END OF BLOCK b1.


SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_sat  RADIOBUTTON GROUP gr1,
              p_sas  RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK b2.
