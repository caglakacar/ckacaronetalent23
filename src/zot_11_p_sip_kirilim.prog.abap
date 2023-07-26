*&---------------------------------------------------------------------*
*& Report zot_11_p_sip_kirilim
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_sip_kirilim.

*INCLUDE zot_11_i_krlm_top.
*INCLUDE zot_11_i_krlm_sel.
INCLUDE zot_11_i_krlm_cls.
INCLUDE zot_11_i_krlm_mdl.

TABLES: vbak,
        vbap.

TYPES: BEGIN OF gty_table,

       vbeln TYPE vbeln,
       kunnr TYPE kunnr,
       auart TYPE auart,
       audat TYPE audat,

       matnr TYPE matnr,
       werks TYPE werks,
       pstyv TYPE pstyv,
       matkl TYPE matkl,
       charg TYPE charg_d,

       END OF gty_table.


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  SELECT-OPTIONS: s_vbeln   FOR vbak-vbeln,  "sipariş no
                  s_kunnr   FOR vbak-kunnr,  "sipariş veren
                  s_auart   FOR vbak-auart,  "sipariş türü
                  s_audat   FOR vbak-audat.  "belge tarihi
SELECTION-SCREEN END OF BLOCK b1.


  SELECT-OPTIONS: s_matnr   FOR vbap-matnr,  "malzeme
                  s_werks   FOR vbap-werks,  "üretim Yeri
                  s_pstyv   FOR vbap-pstyv,  "kalem tipi
                  s_matkl   FOR vbap-matkl,  "mal grubu
                  s_charg   FOR vbap-charg.  "parti


SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
  PARAMETERS:     p_sprtur  AS CHECKBOX,     "sipariş türü
                  P_sprvrn  AS CHECKBOX,     "sipariş veren
                  P_mlno    AS CHECKBOX,     "mal no
                  p_mlgrp   AS CHECKBOX,     "mal grup
                  p_parti   AS CHECKBOX.     "parti
SELECTION-SCREEN END OF BLOCK b2.


START-OF-SELECTION.
DATA: gs_table TYPE gty_table,
      gt_table TYPE TABLE OF gty_table,

      gs_fldcat TYPE slis_fieldcat_alv,
      gt_fldcat TYPE slis_t_fieldcat_alv,

      gs_group TYPE lvc_s_fcat,
      gt_group TYPE lvc_t_fcat.


SELECT  vbak~vbeln,
        vbak~kunnr,
        vbak~auart,
        vbak~audat,
        vbap~matnr,
        vbap~werks,
        vbap~pstyv,
        vbap~matkl,
        vbap~charg
        FROM vbak INNER JOIN vbap ON vbak~vbeln = vbap~vbeln
        INTO TABLE @gt_table
        WHERE vbak~vbeln IN @s_vbeln   "Sipariş No
          AND vbak~kunnr IN @s_kunnr   "Sipariş Veren
          AND vbak~auart IN @s_auart   "Sipariş Türü
          AND vbak~audat IN @s_audat   "Belge Tarihi

          AND vbap~matnr IN @s_matnr   "Malzeme
          AND vbap~werks IN @s_werks   "Kalem Tipi
          AND vbap~pstyv IN @s_pstyv   "Üretim Yeri
          AND vbap~matkl IN @s_matkl   "Mal Grubu
          AND vbap~charg IN @s_charg.  "Parti


IF p_sprtur EQ 'abap true'.
"

APPEND gs_group TO gt_group.
APPEND gs_fldcat TO gt_fldcat.
ENDIF.


IF P_sprvrn EQ 'abap true'.

APPEND gs_group TO gt_group.
APPEND gs_fldcat TO gt_fldcat.
ENDIF.


IF P_mlno EQ 'abap true'.

APPEND gs_group TO gt_group.
APPEND gs_fldcat TO gt_fldcat.
ENDIF.


IF p_mlgrp EQ 'abap true'.

APPEND gs_group TO gt_group.
APPEND gs_fldcat TO gt_fldcat.
ENDIF.


IF p_sprtur EQ 'abap true'.

APPEND gs_group TO gt_group.
APPEND gs_fldcat TO gt_fldcat.
ENDIF.
