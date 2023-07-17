*&---------------------------------------------------------------------*
*& Report zot_11_p_zmn
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_zmn.

*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
*
*SELECT-OPTIONS s_index FOR zot_11_t_zmn-index.
*
*SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
*START-OF-SELECTION.
*
*SELECTION-SCREEN END OF BLOCK b2.
*TABLES:   zot_11_t_zmn.
*
*DATA:     lt_zmn TYPE TABLE OF zot_11_t_zmn,
*          ls_zmn TYPE  zot_11_t_zmn.

*DATA:     lv_yıl        TYPE i,
*          lv_ay         TYPE i,
*          lv_gun        TYPE i,
*          lv_saat       TYPE i,
*          lv_dk         TYPE i,
*          lv_sn         TYPE i,


*          lv_trih1   TYPE dats,
*          lv_trih2   TYPE dats,
*          lv_zmn1       TYPE tims,
*          lv_zmn2      TYPE tims.
*
*  SELECT *
*  FROM zot_11_t_zmn
*  INTO TABLE lt_zmn
*  WHERE index IN s_index.
*
*  APPEND VALUE #(  index        = 1
*                   bslgctarih   = '20230201'
*                   bslgcsaat    = '090000'
*                   btstarih     = '20230401'
*                   btssaat      =  '080000'   ) TO lt_zmn.
*
*  APPEND VALUE #(  index        = 2
*                   bslgctarih   = '20230201'
*                   bslgcsaat    = '101010'
*                   btstarih     = '20250405'
*                   btssaat      =  '111111'   ) TO lt_zmn.
*
*  APPEND VALUE #(  index        = 3
*                   bslgctarih   = '20230201'
*                   bslgcsaat    = '121212'
*                   btstarih     = '20240101'
*                   btssaat      =  '181210'   ) TO lt_zmn.
*
*  APPEND VALUE #(  index        = 4
*                   bslgctarih   = '20230201'
*                   bslgcsaat    = '151315'
*                   btstarih     = '20230228'
*                   btssaat      =  '151015'   ) TO lt_zmn.

*LOOP AT: lt_zmn INTO ls_zmn.

*    lv_yılfrk  = lv_gunfrk DIV 365.
*    lv_ayfrk   = lv_gunfrk DIV 30.
*    lv_saatfrk = lv_dkfrk DIV 60.
*    lv_dkfrk   = lv_snfrk DIV 60.
*
*

* "Indexe ait kayıttakiler
*IF lv_yılfrk NE 0.
*WRITE: |{ lv_yılfrk  } Yıl|.
*ENDIF.
*
*IF lv_ayfrk NE 0.
*WRITE: |{ lv_ayfrk  } Ay|.
*ENDIF.
*
*IF lv_gunfrk NE 0.
*WRITE: |{ lv_gunfrk  } Gün|.
*ENDIF.
*
*IF lv_saatfrk NE 0.
*WRITE: |{ lv_saatfrk  } Saat|.
*ENDIF.
*
*IF lv_dkfrk NE 0.
*WRITE: |{ lv_dkfrk  } Dakika|.
*ENDIF.
*
*IF lv_snfrk NE 0.
*WRITE: |{ lv_snfrk  } Saniye|.
*ENDIF.
