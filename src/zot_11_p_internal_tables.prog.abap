*&---------------------------------------------------------------------*
*& Report zot_11_p_internal_tables
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_internal_tables.

TYPES: BEGIN OF lty_material,
        matkl TYPE matkl,
        menge TYPE menge_d,
       END OF lty_material.


DATA: lt_material       TYPE TABLE OF zot_00_t_materia,
      lt_material_new1  TYPE TABLE OF zot_00_t_materia,
      lt_material_new2  TYPE TABLE OF zot_00_t_materia.


START-OF-SELECTION.

*"1- zot_00_t_materia tablosundan veri çek!!
SELECT * INTO TABLE lt_material FROM zot_00_t_materia.


"2- zli tablodan çekilen malzm noya göre sıradan malzm no ver ve eklenen mlzm kodu uniq olsun!
lt_material_new1 = VALUE #( BASE lt_material_new1   ( matnr = '01'
                                                      maktx = 'Cell Phone'
                                                      matkl = 'C'
                                                      menge = 2
                                                      meins = 'ST'      )

                                                    ( matnr = '02'
                                                      maktx = 'Television'
                                                      matkl = 'C'
                                                      menge = 5
                                                      meins = 'ST'      )

                                                    ( matnr = '03'
                                                      maktx = 'Laptop'
                                                      matkl = 'C'
                                                      menge = 7
                                                      meins = 'ST'      )

                                                    ( matnr = '04'
                                                      maktx = 'Video Camera'
                                                      matkl = 'C'
                                                      menge = 3
                                                      meins = 'ST'      )

                                                    ( matnr = '05'
                                                      maktx = 'Tablet'
                                                      matkl = 'C'
                                                      menge = 8
                                                      meins = 'ST'       )  ).




"3- satırların ölçü birimi malzm grbu c olan internalla eşleşiyorsa zli tablodan çekilen internala menge alanına 10 eklee!
LOOP AT lt_material INTO DATA(ls_material).
        READ TABLE lt_material_new1 INTO DATA(ls_material_new1) WITH KEY meins = ls_material-meins.
        IF sy-subrc = 0.
        ls_material-menge = ls_material-menge + 10.

          MODIFY lt_material FROM ls_material.
        ENDIF.
ENDLOOP.



"4- zli tablodan çekilen veriler ile yeni eklediğimiz verileri bir internala koy!

APPEND LINES OF lt_material TO lt_material_new2.
APPEND LINES OF lt_material_new1 TO lt_material_new2.




"5- yeni bir internal yaratıp matkl alanlarının toplamını bu internala ekle!
DATA: lt_material_collect TYPE TABLE OF lty_material.
DATA: ls_material_collect TYPE lty_material.

LOOP AT lt_material_new2 INTO DATA(ls_material_new2).
        ls_material_collect = VALUE #( matkl = ls_material_new2-matkl
                                       menge = ls_material_new2-menge ).

COLLECT ls_material_collect INTO lt_material_collect.
ENDLOOP.




"6- menge alanı 10dan küçük olan satırları birleştirdiğimiz internal tabledan  sil!
DELETE lt_material_collect WHERE menge < 10.




"7- menge alanı büyükten küçüğe sıralanıcak!
SORT lt_material_new2 ASCENDING BY menge .
SORT lt_material_collect DESCENDING BY menge .



"8- yazdır!
cl_demo_output=>write( lt_material_new2 ).
cl_demo_output=>write( lt_material_collect ).
cl_demo_output=>display( ).
