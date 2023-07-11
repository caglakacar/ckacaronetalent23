*&---------------------------------------------------------------------*
*& Report ZOT_11_TESTPROG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZOT_11_TESTPROG.

WRITE 'hello world'.

cl_demo_output=>write(  'Hello World' ).
cl_demo_output=>write(  'Merhaba Dünya' ).

*yazdıran class  kısayol
cl_demo_output=>display( ).
* konsolda görmek için
