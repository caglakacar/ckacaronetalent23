*&---------------------------------------------------------------------*
*& Report zot_11_denemee
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_denemee.

*DATA: gt_sbook TYPE TABLE OF sbook,
*      go_salv TYPE REF TO cl_salv_table.
*
* START-OF-SELECTION.
*
* SELECT * UP TO 20 ROWS
* FROM sbook
* INTO TABLE gt_sbook.   "ilk 20 satırını ekranda bas
*
*
* "içi boş olan bir internal table a salvmizi bağladık
*cl_salv_table=>factory(
*  IMPORTING
*    r_salv_table   = go_salv
*  CHANGING
*    t_table        = gt_sbook
*).
*
*DATA: lo_display TYPE REF TO cl_salv_display_settings.
*      lo_display = go_salv->get_display_settings(  ).
*      lo_display->set_list_header( value = 'SALV Eğitim Videosu' ).
*      lo_display->set_striped_pattern( value = 'X' ).  "bir açık bir koyu renk puntosu
*
*DATA: lo_cols TYPE REF TO cl_salv_columns. "genel kolon özelliklerine müdahale ettik
*      lo_cols = go_salv->get_columns(  ).  "salav objeme bağladım
*      lo_cols->set_optimize( value = 'X' ).
*
*
*DATA: lo_col TYPE REF TO cl_salv_column.   "tek kolon özelliklerine müdehale edeceğiz
*      lo_col = lo_cols->get_column( columnname = 'INVOICE' ). "tablodaki kolonun ismini yapıştırdık
*      lo_col->set_long_text( 'Yeni Fatura Düzenleyici' ).
*      lo_col->set_medium_text( 'Yeni Fatura D' ).
*      lo_col->set_short_text( 'Yni Fat' ).
*
*      "üst birim kolonunu kaldır
*      lo_col = lo_cols->get_column( columnname = 'MANDT' ). "tablodaki kolonun ismini yapıştırdık
*      lo_col->set_visible(
*           value = IF_SALV_C_BOOL_SAP=>FALSE
*        ).
*
*
*
*
*go_salv->display(  ).
