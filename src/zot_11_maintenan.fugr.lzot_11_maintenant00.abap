*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_11_T_P_ILTSM................................*
DATA:  BEGIN OF STATUS_ZOT_11_T_P_ILTSM              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_11_T_P_ILTSM              .
CONTROLS: TCTRL_ZOT_11_T_P_ILTSM
            TYPE TABLEVIEW USING SCREEN '0003'.
*...processing: ZOT_11_T_P_ITUR.................................*
DATA:  BEGIN OF STATUS_ZOT_11_T_P_ITUR               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_11_T_P_ITUR               .
CONTROLS: TCTRL_ZOT_11_T_P_ITUR
            TYPE TABLEVIEW USING SCREEN '0001'.
*...processing: ZOT_11_T_P_MAST.................................*
DATA:  BEGIN OF STATUS_ZOT_11_T_P_MAST               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_11_T_P_MAST               .
CONTROLS: TCTRL_ZOT_11_T_P_MAST
            TYPE TABLEVIEW USING SCREEN '0002'.
*...processing: ZOT_11_T_TWT....................................*
DATA:  BEGIN OF STATUS_ZOT_11_T_TWT                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_11_T_TWT                  .
CONTROLS: TCTRL_ZOT_11_T_TWT
            TYPE TABLEVIEW USING SCREEN '0004'.
*.........table declarations:.................................*
TABLES: *ZOT_11_T_P_ILTSM              .
TABLES: *ZOT_11_T_P_ITUR               .
TABLES: *ZOT_11_T_P_MAST               .
TABLES: *ZOT_11_T_TWT                  .
TABLES: ZOT_11_T_P_ILTSM               .
TABLES: ZOT_11_T_P_ITUR                .
TABLES: ZOT_11_T_P_MAST                .
TABLES: ZOT_11_T_TWT                   .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
