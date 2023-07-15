*&---------------------------------------------------------------------*
*& Report zot_11_p_twitter
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_twitter.

*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
*  PARAMETERS: p_twtid   TYPE i OBLIGATORY,
*              p_twt     TYPE c LENGTH 250 OBLIGATORY.
*
*SELECTION-SCREEN END OF BLOCK b1.
*
*SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
*
*  PARAMETERS: p_twtat   RADIOBUTTON GROUP g1,
*              p_twtdeg  RADIOBUTTON GROUP g1,
*              p_twtsil  RADIOBUTTON GROUP g1,
*              p_twtgos  RADIOBUTTON GROUP g1.
*
*SELECTION-SCREEN END OF BLOCK b2.
*
*START-OF-SELECTION.
*
*DATA lt_twt TYPE TABLE OF zot_11_t_twt.
*TABLES : zot_11_t_twt.
*
*IF p_twtat = abap_true.
*IF p_twtid IS INITIAL.
*       MESSAGE 'Tweet ID girmeniz gerekiyor!.' TYPE 'I'.
*ELSEIF p_twt IS INITIAL.
*       MESSAGE 'Tweet alanını doldurmanız gerekiyor!.' TYPE 'I'.
*ELSE.
*
*
*select twt, twtid from tablo into table lt_twt where twtid = p_twtid.
**SELECT SINGLE COUNT( * )
**       FROM zot_11_t_twt
**       WHERE twtid = p_twtid.
**
**SELECT SINGLE COUNT( * )
**       FROM zot_11_t_twt
**       WHERE twt = p_twt.
*IF lt_twt IS INITIAL .
*
*UPDATE zot_11_t_twt
*       SET      twt = p_twt
*       WHERE  twtid = p_twtid.
* ELSE.
* MESSAGE 'Bu tweet id kullanılıyor!.' TYPE 'I'.
* ENDIF.
*
*
*
*IF sy-subrc IS NOT INITIAL .
*       APPEND VALUE #( twtid = p_twtid
*                       twt   = p_twt ) TO lt_twt.
*
*MODIFY zot_11_t_twt FROM TABLE lt_twt.
*       MESSAGE 'Tweetiniz atıldı!' TYPE 'I'.
*ELSE.
*       MESSAGE 'Tweet ID başarıyla girildi!' TYPE 'I'.
*
*IF p_twtdeg = 'X'.
*    lt_twt = VALUE #(  twtid = p_twtid
*                       twt   = p_twt ).
*       MODIFY zot_11_t_twt FROM TABLE lt_twt.
*       COMMIT WORK AND WAIT.
*
*IF sy-subrc IS NOT INITIAL.
*       MESSAGE  'Tweetiniz başarıyla değiştirildi!' TYPE 'I'.
*ELSE.
*       MESSAGE  'Tweetiniz değiştirilirken hata oluştu!' TYPE 'I'.
*
*IF  p_twtsil = 'X'.
*       DELETE FROM zot_11_t_twt WHERE twtid = p_twtid.
*       COMMIT WORK AND WAIT.
*
*IF sy-subrc IS NOT INITIAL.
*       MESSAGE  'Tweetiniz başarıyla silindi!' TYPE 'I'.
*ELSE.
*       MESSAGE  'Tweetiniz silinirken hata oluştu!' TYPE 'I'.
*
*    p_twtgos = 'X'.
*       SELECT  twtid,         "anlamadım???
*               twt
*       FROM zot_11_t_twt
*       INTO TABLE @lt_twt.
*
*ELSE.
*       SELECT twtid,
*              twt
*       FROM zot_11_t_twt
*       INTO TABLE @lt_twt
*       WHERE twtid = p_twtid.  "hatayı anlamadım???
*
*ENDIF.
*ENDIF.
*       cl_demo_output=>display( lt_twt ).
*ENDIF.
*
*
************ifleri düzenlee çok karıştı
