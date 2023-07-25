*&---------------------------------------------------------------------*
*& Include zot_11_i_krlm_top
*&---------------------------------------------------------------------*

TABLES: vbak,
        vbap.

TYPES: BEGIN OF lty_table,

       vbeln TYPE vbeln,
       kunnr TYPE kunnr,
       auart TYPE auart,
       audat TYPE audat,

       matnr TYPE matnr,
       werks TYPE werks,
       pstyv TYPE pstyv,
       matkl TYPE matkl,
       charg TYPE charg_d,

       END OF lty_table.

DATA: ls_table TYPE lty_table,
      lt_table TYPE TABLE OF lty_table.
