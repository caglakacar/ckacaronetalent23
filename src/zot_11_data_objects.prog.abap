*&---------------------------------------------------------------------*
*& Report zot_11_data_objects
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_data_objects.

*DATA: gv_ogrenci_adi TYPE c LENGTH 10.
*DATA: gv_ogrenci_adi(10) TYPE c.

DATA: gv_ogrenci_adi(10) TYPE c,        "predefined
      gv_ogrenci_soyadi  TYPE char12,      "data element
      gv_tarih           TYPE sy-datum.

      gv_ogrenci_adi    = 'Öner'.
      gv_ogrenci_soyadi = 'Öztürk'.
      gv_tarih          = sy-datum.

cl_demo_output=>write( gv_ogrenci_adi  ).
cl_demo_output=>write( gv_ogrenci_soyadi ).
cl_demo_output=>write( gv_tarih ).

*cl_demo_output=>write( |Öğrencinin Adı: { gv_ogrenci_adi }, soyadı: { gv_ogrenci_soyadi } | ).
*cl_demo_output=>write( |Öğrencinin Adı: && gv_ogrenci_adi &&, soyadı: && gv_ogrenci_soyadi && | ).

TYPES: gty_char TYPE c LENGTH 50.

DATA: gv_name TYPE gty_char.

cl_demo_output=>display(  ).
