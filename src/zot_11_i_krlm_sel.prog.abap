*&---------------------------------------------------------------------*
*& Include zot_11_i_krlm_sel
*&---------------------------------------------------------------------*


*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
*  SELECT-OPTIONS: s_vbeln   FOR vbak-vbeln,  "Sipariş No
*                  s_kunnr   FOR vbak-kunnr,  "Sipariş Veren
*                  s_auart   FOR vbak-auart,  "Sipariş Türü
*                  s_audat   FOR vbak-audat.  "Belge Tarihi
*SELECTION-SCREEN END OF BLOCK b1.
*
*
*  SELECT-OPTIONS: s_matnr   FOR vbap-matnr,  "Malzeme
*                  s_werks   FOR vbap-werks,  "Üretim Yeri
*                  s_pstyv   FOR vbap-pstyv,  "Kalem Tipi
*                  s_matkl   FOR vbap-matkl,  "Mal Grubu
*                  s_charg   FOR vbap-charg.  "Parti
*
*
*SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
*  PARAMETERS:     p_sprtur  AS CHECKBOX,
*                  P_spsvrn  AS CHECKBOX,
*                  P_mlno    AS CHECKBOX,
*                  p_mlgrp   AS CHECKBOX,
*                  P_parti   AS CHECKBOX.
*SELECTION-SCREEN END OF BLOCK b2.
