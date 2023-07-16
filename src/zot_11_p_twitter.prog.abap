*&---------------------------------------------------------------------*
*& Report zot_11_p_twitter
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_twitter.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_twtid   TYPE i OBLIGATORY,
              p_twt     TYPE c LENGTH 250 OBLIGATORY.

SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

  PARAMETERS: p_twtat   RADIOBUTTON GROUP g1,
              p_twtdeg  RADIOBUTTON GROUP g1,
              p_twtsil  RADIOBUTTON GROUP g1,
              p_twtgos  RADIOBUTTON GROUP g1.

SELECTION-SCREEN END OF BLOCK b2.
START-OF-SELECTION.

DATA:    lt_twt TYPE TABLE OF zot_11_t_twt,
         lt_twtid TYPE TABLE OF zot_11_t_twt.

TABLES:  zot_11_t_twt.


"Tweet At
IF p_twtat = 'X'.

   IF p_twtid IS INITIAL.
      MESSAGE 'Tweet ID girmeniz gerekiyor!.' TYPE 'I'.
    ELSEIF p_twt IS INITIAL.
    MESSAGE 'Tweet alanını doldurmanız gerekiyor!.' TYPE 'I'.

      ELSE.
      SELECT COUNT(*)
      FROM  zot_11_t_twt
      WHERE twtid = @p_twtid.

      MODIFY zot_11_t_twt FROM TABLE lt_twt.
      MESSAGE 'Tweetiniz başarıyla atıldı.' TYPE 'I'.
    ENDIF.

    "MESSAGE 'Bu tweet id kullanılıyor.Lütfen farklı bir id giriniz!' ). TYPE 'I'. yazz!!!

"Tweet Değiştir
ELSEIF p_twtdeg = 'X'.

    IF p_twtid IS INITIAL.
      MESSAGE 'Tweet numaranız bulunamamıştır. Lütfen tekrar deneyiniz!.' TYPE 'I'.
    EXIT.

     ELSE.
     UPDATE zot_11_t_twt
     SET    twt = p_twt
     WHERE  twtid = p_twtid.
     COMMIT WORK AND WAIT.
     MESSAGE : 'Tweetiniz başarıyla değiştirildi!' TYPE 'I'.
    ENDIF.


"Tweet Sil
ELSEIF p_twtsil = 'X'.

    IF p_twtid IS INITIAL.
    MESSAGE 'Tweetiniz bulunamamıştır.Lütfen tekrar deneyiniz!.' TYPE 'I'.
    EXIT.

     ELSE.
     DELETE FROM zot_11_t_twt
     WHERE       twtid = p_twtid.
     MESSAGE  'Tweetiniz başarıyla silindi!' TYPE 'I'.
    ENDIF.


"Tweet Göster
ELSEIF p_twtgos = 'X'.

    IF p_twtid IS INITIAL.
    SELECT COUNT(*)
    FROM  zot_11_t_twt
    WHERE twtid = @p_twtid.

     ELSE.
     SELECT COUNT(*)
     FROM  zot_11_t_twt
     WHERE twtid = @p_twtid.
    ENDIF.

    cl_demo_output=>display( lt_twt ).
ENDIF.
