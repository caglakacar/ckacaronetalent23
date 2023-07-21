*&---------------------------------------------------------------------*
*& Include zot_11_i_report_sel
*&---------------------------------------------------------------------*

TABLES: eban,
        ekpo.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  SELECT-OPTIONS: s_sat_id FOR eban-banfn,
                  s_sat_in for eban-bnfpo,
                  s_sas_id FOR ekpo-ebeln,
                  s_sas_in FOR ekpo-bnfpo.
SELECTION-SCREEN END OF BLOCK b1.


SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS: p_sat  RADIOBUTTON GROUP gr1,
              p_sas  RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK b2.
