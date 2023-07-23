*&---------------------------------------------------------------------*
*& Report zot_11_p_spor
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_11_p_spor.

TYPES : BEGIN OF lty_torba,
          id      TYPE i,
          team    TYPE char50,
        END OF lty_torba.

DATA:
      ls_groupA  TYPE lty_torba,
      ls_groupB  TYPE lty_torba,
      ls_groupC  TYPE lty_torba,
      ls_groupD  TYPE lty_torba,

      lt_torba1 TYPE TABLE OF lty_torba,
      lt_torba2 TYPE TABLE OF lty_torba,
      lt_torba3 TYPE TABLE OF lty_torba,
      lt_torba4 TYPE TABLE OF lty_torba,

      lt_groupA TYPE TABLE OF lty_torba,
      lt_groupB TYPE TABLE OF lty_torba,
      lt_groupC TYPE TABLE OF lty_torba,
      lt_groupD TYPE TABLE OF lty_torba.
