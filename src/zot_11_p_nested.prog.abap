*&---------------------------------------------------------------------*
*& Report zot_11_p_nested
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_nested.

DATA(lt_table) = VALUE ZOT_11_TT_OGR_NOT( ( ogrenci_id      = '220201810'
                                           ogrenci_ad       = 'Çağla Kaçar'
                                           dog_tarihi       = '30.05.2001'
                                           ogr_bolumu       = 'Computer Enginnering'

                                           ogr_notlar       = VALUE ZOT_11_S_SINIF(

                                           sinif1           = VALUE ZOT_11_S_DERS(
                                           ders1            = VALUE ZOT_11_S_NOT(
                                           vize1            = '55'
                                           vize2            = '60'
                                           final            = '58'
                                           btnleme          = '75'  ) )

                                           sinif2           = VALUE ZOT_11_S_DERS(
                                           ders4            = VALUE ZOT_11_S_NOT(
                                           vize1            = '42'
                                           vize2            = '44'
                                           final            = '30'
                                           btnleme          = '15'  ) )

                                           sinif3           = VALUE ZOT_11_S_DERS(
                                           ders2            = VALUE ZOT_11_S_NOT(
                                           vize1            = '32'
                                           vize2            = '52'
                                           final            = '65'
                                           btnleme          = '87'  ) )


                                           sinif4           = VALUE ZOT_11_S_DERS(
                                           ders3            = VALUE ZOT_11_S_NOT(
                                           vize1            = '90'
                                           vize2            = '60'
                                           final            = '35'
                                           btnleme          = '77'  ) )

                                                                    ) ) ).
cl_demo_output=>display( lt_table ).
