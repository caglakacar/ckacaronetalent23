*&---------------------------------------------------------------------*
*& Report zot_11_abap_dictionary
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_abap_dictionary.

DATA: ls_personel   TYPE zot_11_s_personel,               "structure
      lt_personel   TYPE TABLE OF zot_11_s_personel,      "satırın tipinde tablo
      lt_personel2  TYPE zot_11_tt_personel,             "tablo tipinde tablo?
      lt_personel3  TYPE TABLE OF zot_11_tt_personel.   "tablo tipinde tablo

      BREAK ahshqkb.
