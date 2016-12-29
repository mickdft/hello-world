
set MERGE_CORNER 0
set MERGE_CORNER 1
set EXISTED_CORNER_PATH ""

set PBA_MODE_EXHAUSTIVE 0
set PBA_MODE_EXHAUSTIVE 1

set REPORT_TIMING 0
set REPORT_TIMING 1

set GEN_TIMING 0
set GEN_TIMING 1

set T_list [list 10 15 20 25]
set phase_list [A B]

set comp_mode_scan_ck_name "*scan_ck*"
set int_mode_scan_ck_name  "*intscan*"
set pipehead_ck_int_mode   "*pipe_tail_*"
set pipetail_ck_int_mode   "*pipe_head_*"
set pipehead_ck_comp_mode  "*pipe*_ck*"
set pipetail_ck_comp_mode  "*pipe*_ck*"

array unset phase_2_root_ck ;

set phase_2_root_ck(A) \
    [list {top_test_ck_0     0}\
          {top_test_ck_1     0}\
          {dramc_test_ck_0   0}\
          {dramc_test_ck_1   0}\
	  \
          {forcePI_top       0}\
          {forcePI_dramc     0}\
          {measurePO_top     0}\
          {measurePO_dramc   0}\
    ]

set phase_2_root_ck_non_ser(E) \
    [list {mcusys   mcu_test_ck_1    mcu_test_ck_1    mcu_test_ck_0 5}\
          {mcu_mp0  mcu_mp0_test_ck  mcu_mp0_test_ck  5}\
          {mcu_mp1  mcu_mp1_test_ck  mcu_mp1_test_ck  5}\
          {mcu_mp2  mcu_mp2_test_ck  mcu_mp2_test_ck  5}\
    ]

set phase_2_reset(A) \
    [list {PAD_UTXD  0}\
          {PAD_URXD  0}\
    ]

set rst_waveform [list \
        { 7     1    6}\
        { 8     1    7}\
        { 9     1    8}\
        {10     1    9}\
        {15     1   13}\
        {20     1   18}\
    ]
