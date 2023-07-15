*&---------------------------------------------------------------------*
*& Report zot_11_data_objects
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_data_objects.

*DATA: gv_ogrenci_adi TYPE c LENGTH 10.
*DATA: gv_ogrenci_adi(10) TYPE c.

*DATA: gv_ogrenci_adi(10) TYPE c,        "predefined
*      gv_ogrenci_soyadi  TYPE char12,      "data element
*      gv_tarih           TYPE sy-datum.
*
*      gv_ogrenci_adi    = 'Öner'.
*      gv_ogrenci_soyadi = 'Öztürk'.
*      gv_tarih          = sy-datum.
*
*cl_demo_output=>write( gv_ogrenci_adi  ).
*cl_demo_output=>write( gv_ogrenci_soyadi ).
*cl_demo_output=>write( gv_tarih ).

*cl_demo_output=>write( |Öğrencinin Adı: { gv_ogrenci_adi }, soyadı: { gv_ogrenci_soyadi } | ).
*cl_demo_output=>write( |Öğrencinin Adı: && gv_ogrenci_adi &&, soyadı: && gv_ogrenci_soyadi && | ).

*TYPES: gty_char TYPE c LENGTH 50.
*
*DATA: gv_name TYPE gty_char.


*"if
*DATA: gv_langu TYPE sy-langu.
*      gv_langu = sy-langu.
*
*if gv_langu = 'T'.
* cl_demo_output=>write( |Merhaba Dünya| ).
*ELSEIF gv_langu EQ 'E'.
* cl_demo_output=>write( |Hello World| ).
*ELSE.
* cl_demo_output=>write( |Başka dil bilmiyorum.| ).
*



"case




*"do.
*DATA: gv_text1 TYPE char12.
*
*      gv_text1 = 'Hello World'.
*
*DATA(gv_text2) = 'Hello World'.
*
*DATA(gv_bugun) = sy-datum.
*
*gv_text2 = 'Hello Worldddddddddddd'.
*
*DATA(lv_num) = strlen( gv_text2 ).  "strlen??
*
*DO lv_num TIMES.
* cl_demo_output=>write( 'Test' ).
*ENDDO.


*
*"while.
*WHILE lv_num > 0.
* cl_demo_output=>write( sy-index ). "sy-index döngüsünün kaçıncı satırındaysa onu yazdırıyor
*** lv_num = lv_num - 1.
*ENDWHILE.
*
*

*DATA: lv_number1 TYPE i VALUE 10,
*      lv_number2 TYPE i VALUE 5.
*
*
*DATA (lv_toplama) = ln_number1 +  lv_number2.
*DATA (lv_cıkarma) = ln_number1 -  lv_number2.
*DATA (lv_carpma)  = ln_number1 *  lv_number2.
*DATA (lv_bolme)   = ln_number1 /  lv_number2.
*
*cl_demo_output=>write( |{ lv_number1 } + { lv_number2 } = { lv_toplama }| ).
*

*cl_demo_output=>display(  ).
