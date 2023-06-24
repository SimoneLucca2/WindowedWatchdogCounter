--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: WatchDog_timesim.vhd
-- /___/   /\     Timestamp: Thu Jun 22 17:02:08 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf WatchDog.pcf -rpw 100 -tpw 0 -ar Structure -tm WatchDog -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim WatchDog.ncd WatchDog_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: WatchDog.ncd
-- Output file	: /home/simone/OneDrive/Windowed_Watchdog_Counter/netgen/par/WatchDog_timesim.vhd
-- # of Entities	: 1
-- Design Name	: WatchDog
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity WatchDog is
  port (
    clk : in STD_LOGIC := 'X'; 
    clr : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    reset : out STD_LOGIC; 
    nmi : out STD_LOGIC; 
    command : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    data : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end WatchDog;

architecture Structure of WatchDog is
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal main_counter_gen1_13_latch_q_836 : STD_LOGIC; 
  signal main_counter_gen1_1_latch_q_837 : STD_LOGIC; 
  signal main_counter_d0_q_838 : STD_LOGIC; 
  signal started_839 : STD_LOGIC; 
  signal start_IBUF_0 : STD_LOGIC; 
  signal clr_IBUF_0 : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal main_counter_gen1_5_latch_q_843 : STD_LOGIC; 
  signal main_counter_gen1_14_latch_q_844 : STD_LOGIC; 
  signal main_counter_gen1_4_latch_q_845 : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal count_refresh : STD_LOGIC; 
  signal count_trigger : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_2_latch_q_850 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_1_latch_q_851 : STD_LOGIC; 
  signal prsclr_counter_inst_d0_q_852 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_7_latch_q_853 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal main_counter_gen1_6_latch_q_856 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_8_latch_q_858 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_10_latch_q_859 : STD_LOGIC; 
  signal prsclr_counter_inst_n_8_1_860 : STD_LOGIC; 
  signal N34_0 : STD_LOGIC; 
  signal prsclr_counter_inst_n_3_1 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal main_counter_gen1_7_latch_q_864 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal out_rst_d0_q_866 : STD_LOGIC; 
  signal out_rst_d1_q_867 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal main_counter_gen1_8_latch_q_870 : STD_LOGIC; 
  signal N44_0 : STD_LOGIC; 
  signal main_counter_gen1_9_latch_q_872 : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal main_counter_gen1_11_latch_q_874 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal main_counter_gen1_12_latch_q_877 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_4_latch_q_880 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_3_latch_q_881 : STD_LOGIC; 
  signal N53_0 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal main_counter_gen1_2_latch_q_884 : STD_LOGIC; 
  signal main_counter_gen1_3_latch_q_885 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_5_latch_q_886 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal main_counter_gen1_15_latch_q_888 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal main_counter_gen1_10_latch_q_899 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_1_900 : STD_LOGIC; 
  signal reg_file_write_to_2_0 : STD_LOGIC; 
  signal data_0_IBUF_0 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_3_906 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_4_907 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_5_908 : STD_LOGIC; 
  signal data_1_IBUF_0 : STD_LOGIC; 
  signal data_2_IBUF_0 : STD_LOGIC; 
  signal prsclr_Mmux_clk_enable_s_6_918 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_6_latch_q_919 : STD_LOGIC; 
  signal out_rst_delta_1_1_920 : STD_LOGIC; 
  signal data_3_IBUF_0 : STD_LOGIC; 
  signal prsclr_Mmux_clk_enable_s_7_928 : STD_LOGIC; 
  signal out_rst_delta_1_4_929 : STD_LOGIC; 
  signal out_rst_delta_1_3_930 : STD_LOGIC; 
  signal data_4_IBUF_0 : STD_LOGIC; 
  signal data_5_IBUF_0 : STD_LOGIC; 
  signal data_6_IBUF_0 : STD_LOGIC; 
  signal out_rst_delta_1_5_945 : STD_LOGIC; 
  signal data_7_IBUF_0 : STD_LOGIC; 
  signal out_rst_delta_1_6_950 : STD_LOGIC; 
  signal data_8_IBUF_0 : STD_LOGIC; 
  signal out_rst_delta_1_7_955 : STD_LOGIC; 
  signal data_9_IBUF_0 : STD_LOGIC; 
  signal data_10_IBUF_0 : STD_LOGIC; 
  signal data_11_IBUF_0 : STD_LOGIC; 
  signal data_12_IBUF_0 : STD_LOGIC; 
  signal data_13_IBUF_0 : STD_LOGIC; 
  signal data_14_IBUF_0 : STD_LOGIC; 
  signal data_15_IBUF_0 : STD_LOGIC; 
  signal nmi1_971 : STD_LOGIC; 
  signal nmi2_975 : STD_LOGIC; 
  signal nmi3_976 : STD_LOGIC; 
  signal nmi_OBUF_977 : STD_LOGIC; 
  signal nmi6_978 : STD_LOGIC; 
  signal nmi7_979 : STD_LOGIC; 
  signal command_0_IBUF_0 : STD_LOGIC; 
  signal command_1_IBUF_0 : STD_LOGIC; 
  signal reset_OBUF_985 : STD_LOGIC; 
  signal nmi5_986 : STD_LOGIC; 
  signal nmi4_987 : STD_LOGIC; 
  signal out_rst_delta_1_8_989 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_2_990 : STD_LOGIC; 
  signal out_rst_delta_1_2_993 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_9_latch_q_998 : STD_LOGIC; 
  signal data_0_IBUF_3 : STD_LOGIC; 
  signal data_1_IBUF_6 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_9 : STD_LOGIC; 
  signal data_2_IBUF_12 : STD_LOGIC; 
  signal data_3_IBUF_15 : STD_LOGIC; 
  signal data_4_IBUF_18 : STD_LOGIC; 
  signal clr_IBUF_21 : STD_LOGIC; 
  signal data_5_IBUF_24 : STD_LOGIC; 
  signal data_6_IBUF_27 : STD_LOGIC; 
  signal data_7_IBUF_30 : STD_LOGIC; 
  signal data_8_IBUF_33 : STD_LOGIC; 
  signal data_9_IBUF_36 : STD_LOGIC; 
  signal command_0_IBUF_39 : STD_LOGIC; 
  signal command_1_IBUF_42 : STD_LOGIC; 
  signal data_10_IBUF_47 : STD_LOGIC; 
  signal data_11_IBUF_50 : STD_LOGIC; 
  signal data_12_IBUF_53 : STD_LOGIC; 
  signal data_13_IBUF_56 : STD_LOGIC; 
  signal start_IBUF_59 : STD_LOGIC; 
  signal data_14_IBUF_62 : STD_LOGIC; 
  signal data_15_IBUF_65 : STD_LOGIC; 
  signal rst_IBUF_70 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal started_pack_1 : STD_LOGIC; 
  signal started_glue_set_199 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal main_counter_d0_q_pack_7 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N54_pack_7 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal reg_file_write_to_0_pack_1 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_3_latch_q_pack_9 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_nmi_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reset_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_9_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_out_rst_d1_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_started_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_out_rst_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_13_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_11_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_15_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_14_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_12_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_4_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_5_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_5_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_4_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_9_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal PSreg_to_ps : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal eq : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal reg_file_PS_reg_register_data : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cmp_MIN_comparator_equal : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal reg_file_MIN_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_file_NMI_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_file_MAX_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_file_write_to : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal main_counter_n : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal out_rst_delta : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal prsclr_counter_inst_n : STD_LOGIC_VECTOR ( 10 downto 0 ); 
begin
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  data_0_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_0_IBUF_3,
      I => data(0)
    );
  ProtoComp61_IMUX : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_3,
      O => data_0_IBUF_0
    );
  data_1_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_1_IBUF_6,
      I => data(1)
    );
  ProtoComp61_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_6,
      O => data_1_IBUF_0
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_9,
      I => clk
    );
  ProtoComp61_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_9,
      O => clk_BUFGP_IBUFG_0
    );
  data_2_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_2_IBUF_12,
      I => data(2)
    );
  ProtoComp61_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_12,
      O => data_2_IBUF_0
    );
  data_3_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_3_IBUF_15,
      I => data(3)
    );
  ProtoComp61_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_15,
      O => data_3_IBUF_0
    );
  data_4_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_4_IBUF_18,
      I => data(4)
    );
  ProtoComp61_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_4_IBUF_18,
      O => data_4_IBUF_0
    );
  clr_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      O => clr_IBUF_21,
      I => clr
    );
  ProtoComp61_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      I => clr_IBUF_21,
      O => clr_IBUF_0
    );
  data_5_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_5_IBUF_24,
      I => data(5)
    );
  ProtoComp61_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_24,
      O => data_5_IBUF_0
    );
  data_6_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_6_IBUF_27,
      I => data(6)
    );
  ProtoComp61_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_6_IBUF_27,
      O => data_6_IBUF_0
    );
  data_7_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_7_IBUF_30,
      I => data(7)
    );
  ProtoComp61_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_7_IBUF_30,
      O => data_7_IBUF_0
    );
  data_8_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_8_IBUF_33,
      I => data(8)
    );
  ProtoComp61_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_8_IBUF_33,
      O => data_8_IBUF_0
    );
  data_9_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_9_IBUF_36,
      I => data(9)
    );
  ProtoComp61_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_36,
      O => data_9_IBUF_0
    );
  command_0_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => command_0_IBUF_39,
      I => command(0)
    );
  ProtoComp61_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => command_0_IBUF_39,
      O => command_0_IBUF_0
    );
  command_1_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => command_1_IBUF_42,
      I => command(1)
    );
  ProtoComp61_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => command_1_IBUF_42,
      O => command_1_IBUF_0
    );
  nmi_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => NlwBufferSignal_nmi_OBUF_I,
      O => nmi
    );
  data_10_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_10_IBUF_47,
      I => data(10)
    );
  ProtoComp61_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_10_IBUF_47,
      O => data_10_IBUF_0
    );
  data_11_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_11_IBUF_50,
      I => data(11)
    );
  ProtoComp61_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_11_IBUF_50,
      O => data_11_IBUF_0
    );
  data_12_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_12_IBUF_53,
      I => data(12)
    );
  ProtoComp61_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_12_IBUF_53,
      O => data_12_IBUF_0
    );
  data_13_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_13_IBUF_56,
      I => data(13)
    );
  ProtoComp61_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_13_IBUF_56,
      O => data_13_IBUF_0
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      O => start_IBUF_59,
      I => start
    );
  ProtoComp61_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      I => start_IBUF_59,
      O => start_IBUF_0
    );
  data_14_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_14_IBUF_62,
      I => data(14)
    );
  ProtoComp61_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_14_IBUF_62,
      O => data_14_IBUF_0
    );
  data_15_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_15_IBUF_65,
      I => data(15)
    );
  ProtoComp61_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_15_IBUF_65,
      O => data_15_IBUF_0
    );
  reset_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_reset_OBUF_I,
      O => reset
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_70,
      I => rst
    );
  ProtoComp61_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_70,
      O => rst_IBUF_0
    );
  reg_file_NMI_reg_register_data_11 : X_FF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_11_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_11_IN,
      O => reg_file_NMI_reg_register_data(11),
      RST => rst_IBUF_0,
      SET => GND
    );
  nmi4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"A000000050000000"
    )
    port map (
      ADR1 => '1',
      ADR4 => nmi2_975,
      ADR3 => nmi3_976,
      ADR5 => reg_file_NMI_reg_register_data(11),
      ADR2 => nmi1_971,
      ADR0 => main_counter_gen1_11_latch_q_874,
      O => nmi4_987
    );
  reg_file_NMI_reg_register_data_10 : X_FF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_10_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_10_IN,
      O => reg_file_NMI_reg_register_data(10),
      RST => rst_IBUF_0,
      SET => GND
    );
  nmi8 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"AA00000000000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => nmi5_986,
      ADR5 => nmi6_978,
      ADR4 => nmi7_979,
      ADR3 => nmi4_987,
      O => nmi_OBUF_977
    );
  reg_file_NMI_reg_register_data_9 : X_FF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_9_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_9_IN,
      O => reg_file_NMI_reg_register_data(9),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_8 : X_FF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_8_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_8_IN,
      O => reg_file_NMI_reg_register_data(8),
      RST => rst_IBUF_0,
      SET => GND
    );
  nmi5 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => X"0000802000004010"
    )
    port map (
      ADR3 => reg_file_NMI_reg_register_data(7),
      ADR1 => main_counter_gen1_7_latch_q_864,
      ADR0 => reg_file_NMI_reg_register_data(6),
      ADR5 => main_counter_gen1_6_latch_q_856,
      ADR2 => started_839,
      ADR4 => rst_IBUF_0,
      O => nmi5_986
    );
  out_rst_delta_1_6 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"A500210000A50021"
    )
    port map (
      ADR5 => reg_file_MAX_reg_register_data(13),
      ADR2 => reg_file_MAX_reg_register_data(8),
      ADR4 => reg_file_MAX_reg_register_data(12),
      ADR3 => main_counter_gen1_13_latch_q_836,
      ADR1 => main_counter_gen1_12_latch_q_877,
      ADR0 => main_counter_gen1_8_latch_q_870,
      O => out_rst_delta_1_6_950
    );
  cmp_MIN_comparator_equal_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"8484008421210021"
    )
    port map (
      ADR0 => reg_file_MIN_reg_register_data(8),
      ADR5 => reg_file_MIN_reg_register_data(9),
      ADR4 => reg_file_MIN_reg_register_data(4),
      ADR1 => main_counter_gen1_9_latch_q_872,
      ADR2 => main_counter_gen1_8_latch_q_870,
      ADR3 => main_counter_gen1_4_latch_q_845,
      O => cmp_MIN_comparator_equal_0_4_907
    );
  main_counter_gen1_9_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_9_latch_q_CLK,
      I => main_counter_n(9),
      O => main_counter_gen1_9_latch_q_872,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_9_2 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"1555400055550000"
    )
    port map (
      ADR1 => main_counter_gen1_7_latch_q_864,
      ADR2 => N44_0,
      ADR0 => count_refresh,
      ADR4 => main_counter_gen1_9_latch_q_872,
      ADR3 => N10,
      ADR5 => count_trigger,
      O => main_counter_n(9)
    );
  main_counter_gen1_8_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_8_latch_q_CLK,
      I => main_counter_n(8),
      O => main_counter_gen1_8_latch_q_870,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => X"4510550055005500"
    )
    port map (
      ADR2 => main_counter_gen1_7_latch_q_864,
      ADR1 => N42,
      ADR0 => count_refresh,
      ADR3 => main_counter_gen1_8_latch_q_870,
      ADR4 => N10,
      ADR5 => count_trigger,
      O => main_counter_n(8)
    );
  reg_file_MAX_reg_register_data_15_reg_file_MAX_reg_register_data_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  reg_file_MAX_reg_register_data_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_15_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_15_IN,
      O => reg_file_MAX_reg_register_data(15),
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_7_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"F0000000F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => main_counter_gen1_5_latch_q_843,
      ADR2 => main_counter_d0_q_838,
      ADR4 => main_counter_gen1_1_latch_q_837,
      O => N40
    );
  reg_file_MAX_reg_register_data_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_14_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_14_IN,
      O => reg_file_MAX_reg_register_data(14),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_13_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_13_IN,
      O => reg_file_MAX_reg_register_data(13),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_12_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_12_IN,
      O => reg_file_MAX_reg_register_data(12),
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_9_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"3FFF3FFF3FFF3FFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => main_counter_gen1_11_latch_q_874,
      ADR3 => main_counter_gen1_10_latch_q_899,
      ADR1 => main_counter_gen1_8_latch_q_870,
      ADR5 => '1',
      O => N22
    );
  main_counter_n_9_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => X"33FF33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => main_counter_gen1_10_latch_q_899,
      ADR1 => main_counter_gen1_8_latch_q_870,
      O => N24
    );
  out_rst_delta_1_8 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"C000400000000000"
    )
    port map (
      ADR0 => reg_file_MAX_reg_register_data(4),
      ADR4 => main_counter_gen1_4_latch_q_845,
      ADR3 => out_rst_delta_1_7_955,
      ADR1 => out_rst_delta_1_5_945,
      ADR2 => out_rst_delta_1_6_950,
      ADR5 => out_rst_delta_1_4_929,
      O => out_rst_delta_1_8_989
    );
  out_rst_d1_q : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_out_rst_d1_q_CLK,
      I => out_rst_delta(1),
      O => out_rst_d1_q_867,
      RST => rst_IBUF_0,
      SET => GND
    );
  out_rst_delta_1_9 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => X"FFFF33FFFFFF000A"
    )
    port map (
      ADR3 => out_rst_d0_q_866,
      ADR2 => eq(0),
      ADR0 => clr_IBUF_0,
      ADR5 => out_rst_d1_q_867,
      ADR1 => start_IBUF_0,
      ADR4 => out_rst_delta_1_8_989,
      O => out_rst_delta(1)
    );
  reg_file_MIN_reg_register_data_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_15_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_15_IN,
      O => reg_file_MIN_reg_register_data(15),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_14_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_14_IN,
      O => reg_file_MIN_reg_register_data(14),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_13_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_13_IN,
      O => reg_file_MIN_reg_register_data(13),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_12_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_12_IN,
      O => reg_file_MIN_reg_register_data(12),
      RST => rst_IBUF_0,
      SET => GND
    );
  N51_N51_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  main_counter_n_7_11_SW6 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y11"
    )
    port map (
      IA => N60,
      IB => N61,
      O => N51,
      SEL => main_counter_gen1_5_latch_q_843
    );
  main_counter_n_7_11_SW6_F : X_LUT6
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => X"FFCFFFCFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => main_counter_gen1_13_latch_q_836,
      ADR1 => clr_IBUF_0,
      ADR3 => start_IBUF_0,
      ADR5 => started_839,
      O => N60
    );
  main_counter_n_7_11_SW6_G : X_LUT6
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => X"FFFFFBF7FFFFF7F7"
    )
    port map (
      ADR0 => main_counter_gen1_13_latch_q_836,
      ADR3 => main_counter_gen1_1_latch_q_837,
      ADR5 => main_counter_d0_q_838,
      ADR1 => started_839,
      ADR2 => start_IBUF_0,
      ADR4 => clr_IBUF_0,
      O => N61
    );
  reset_OBUF_reset_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => started_pack_1,
      O => started_839
    );
  reset1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => X"8888888888888888"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => out_rst_d1_q_867,
      ADR0 => started_839,
      ADR5 => '1',
      O => reset_OBUF_985
    );
  started_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => X"FAFAFAFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => start_IBUF_0,
      ADR3 => '1',
      ADR0 => started_839,
      O => started_glue_set_199
    );
  started : X_SFF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_started_CLK,
      I => started_glue_set_199,
      O => started_pack_1,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_15_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_15_IN,
      O => reg_file_NMI_reg_register_data(15),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_14 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_14_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_14_IN,
      O => reg_file_NMI_reg_register_data(14),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_13_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_13_IN,
      O => reg_file_NMI_reg_register_data(13),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_12_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_12_IN,
      O => reg_file_NMI_reg_register_data(12),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_11_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_11_IN,
      O => reg_file_MAX_reg_register_data(11),
      RST => rst_IBUF_0,
      SET => GND
    );
  nmi1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => X"8020401088224411"
    )
    port map (
      ADR4 => reg_file_NMI_reg_register_data(10),
      ADR0 => main_counter_gen1_10_latch_q_899,
      ADR2 => reg_file_NMI_reg_register_data(12),
      ADR5 => main_counter_gen1_12_latch_q_877,
      ADR1 => reg_file_NMI_reg_register_data(13),
      ADR3 => main_counter_gen1_13_latch_q_836,
      O => nmi1_971
    );
  reg_file_MAX_reg_register_data_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_10_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_10_IN,
      O => reg_file_MAX_reg_register_data(10),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_9_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_9_IN,
      O => reg_file_MAX_reg_register_data(9),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_8_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_8_IN,
      O => reg_file_MAX_reg_register_data(8),
      RST => rst_IBUF_0,
      SET => GND
    );
  nmi2 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y4",
      INIT => X"A02050100A020501"
    )
    port map (
      ADR0 => main_counter_gen1_9_latch_q_872,
      ADR4 => reg_file_NMI_reg_register_data(9),
      ADR3 => reg_file_NMI_reg_register_data(4),
      ADR1 => main_counter_gen1_4_latch_q_845,
      ADR2 => reg_file_NMI_reg_register_data(8),
      ADR5 => main_counter_gen1_8_latch_q_870,
      O => nmi2_975
    );
  reg_file_MIN_reg_register_data_11_reg_file_MIN_reg_register_data_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N44,
      O => N44_0
    );
  reg_file_MIN_reg_register_data_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_11_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_11_IN,
      O => reg_file_MIN_reg_register_data(11),
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_7_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"3FFFFFFF3FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => main_counter_gen1_6_latch_q_856,
      ADR1 => main_counter_gen1_5_latch_q_843,
      ADR3 => main_counter_d0_q_838,
      ADR4 => main_counter_gen1_1_latch_q_837,
      ADR5 => '1',
      O => N42
    );
  main_counter_n_7_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"80000000"
    )
    port map (
      ADR0 => main_counter_gen1_8_latch_q_870,
      ADR2 => main_counter_gen1_6_latch_q_856,
      ADR1 => main_counter_gen1_5_latch_q_843,
      ADR3 => main_counter_d0_q_838,
      ADR4 => main_counter_gen1_1_latch_q_837,
      O => N44
    );
  reg_file_MIN_reg_register_data_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_10_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_10_IN,
      O => reg_file_MIN_reg_register_data(10),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_9_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_9_IN,
      O => reg_file_MIN_reg_register_data(9),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_8_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_8_IN,
      O => reg_file_MIN_reg_register_data(8),
      RST => rst_IBUF_0,
      SET => GND
    );
  nmi6 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => X"8400848421002121"
    )
    port map (
      ADR5 => reg_file_NMI_reg_register_data(0),
      ADR1 => main_counter_d0_q_838,
      ADR3 => main_counter_gen1_12_latch_q_877,
      ADR4 => reg_file_NMI_reg_register_data(12),
      ADR2 => reg_file_NMI_reg_register_data(15),
      ADR0 => main_counter_gen1_15_latch_q_888,
      O => nmi6_978
    );
  main_counter_gen1_7_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_7_latch_q_CLK,
      I => main_counter_n(7),
      O => main_counter_gen1_7_latch_q_864,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_7_2 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"1222222222222222"
    )
    port map (
      ADR4 => main_counter_gen1_6_latch_q_856,
      ADR3 => N40,
      ADR1 => count_refresh,
      ADR0 => main_counter_gen1_7_latch_q_864,
      ADR2 => N10,
      ADR5 => count_trigger,
      O => main_counter_n(7)
    );
  out_rst_d0_q : X_FF
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_out_rst_d0_q_CLK,
      I => out_rst_delta(0),
      O => out_rst_d0_q_866,
      RST => rst_IBUF_0,
      SET => GND
    );
  out_rst_delta_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"505FFCFC505FFCFC"
    )
    port map (
      ADR5 => '1',
      ADR0 => start_IBUF_0,
      ADR3 => clr_IBUF_0,
      ADR4 => out_rst_d0_q_866,
      ADR2 => out_rst_d1_q_867,
      ADR1 => eq(0),
      O => out_rst_delta(0)
    );
  cmp_MIN_comparator_equal_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"8200008241000041"
    )
    port map (
      ADR0 => reg_file_MIN_reg_register_data(6),
      ADR1 => reg_file_MIN_reg_register_data(7),
      ADR3 => reg_file_MIN_reg_register_data(2),
      ADR4 => main_counter_gen1_2_latch_q_884,
      ADR2 => main_counter_gen1_7_latch_q_864,
      ADR5 => main_counter_gen1_6_latch_q_856,
      O => cmp_MIN_comparator_equal_0_2_990
    );
  cmp_MIN_comparator_equal_0_7 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"8000000000000000"
    )
    port map (
      ADR5 => cmp_MIN_comparator_equal_0_3_906,
      ADR3 => cmp_MIN_comparator_equal(0),
      ADR2 => cmp_MIN_comparator_equal_0_1_900,
      ADR1 => cmp_MIN_comparator_equal_0_4_907,
      ADR0 => cmp_MIN_comparator_equal_0_5_908,
      ADR4 => cmp_MIN_comparator_equal_0_2_990,
      O => eq(0)
    );
  cmp_MIN_comparator_equal_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => X"C400310000C40031"
    )
    port map (
      ADR5 => reg_file_MIN_reg_register_data(13),
      ADR1 => reg_file_MIN_reg_register_data(10),
      ADR2 => reg_file_MIN_reg_register_data(12),
      ADR3 => main_counter_gen1_13_latch_q_836,
      ADR4 => main_counter_gen1_10_latch_q_899,
      ADR0 => main_counter_gen1_12_latch_q_877,
      O => cmp_MIN_comparator_equal(0)
    );
  main_counter_n_13_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y9",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR3 => main_counter_gen1_10_latch_q_899,
      ADR5 => main_counter_gen1_8_latch_q_870,
      ADR4 => main_counter_gen1_9_latch_q_872,
      ADR2 => main_counter_gen1_7_latch_q_864,
      ADR1 => main_counter_gen1_12_latch_q_877,
      ADR0 => main_counter_gen1_11_latch_q_874,
      O => N18
    );
  reg_file_write_to_3_reg_file_write_to_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_write_to(2),
      O => reg_file_write_to_2_0
    );
  reg_file_write_to_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y10",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => started_839,
      ADR4 => command_1_IBUF_0,
      ADR3 => command_0_IBUF_0,
      ADR5 => '1',
      O => reg_file_write_to(3)
    );
  reg_file_write_to_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y10",
      INIT => X"000F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => started_839,
      ADR4 => command_1_IBUF_0,
      ADR3 => command_0_IBUF_0,
      O => reg_file_write_to(2)
    );
  main_counter_gen1_13_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_13_latch_q_CLK,
      I => main_counter_n(13),
      O => main_counter_gen1_13_latch_q_836,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_13_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => X"331333B333333333"
    )
    port map (
      ADR2 => main_counter_gen1_6_latch_q_856,
      ADR1 => N50,
      ADR3 => N18,
      ADR0 => N10,
      ADR4 => N51_0,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(13)
    );
  reg_file_NMI_reg_register_data_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_7_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_7_IN,
      O => reg_file_NMI_reg_register_data(7),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_6_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_6_IN,
      O => reg_file_NMI_reg_register_data(6),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_5_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_5_IN,
      O => reg_file_NMI_reg_register_data(5),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_4_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_4_IN,
      O => reg_file_NMI_reg_register_data(4),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_3_IN,
      O => reg_file_NMI_reg_register_data(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  out_rst_delta_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"8020080240100401"
    )
    port map (
      ADR4 => reg_file_MAX_reg_register_data(9),
      ADR0 => reg_file_MAX_reg_register_data(6),
      ADR1 => reg_file_MAX_reg_register_data(7),
      ADR2 => main_counter_gen1_9_latch_q_872,
      ADR3 => main_counter_gen1_7_latch_q_864,
      ADR5 => main_counter_gen1_6_latch_q_856,
      O => out_rst_delta_1_2_993
    );
  reg_file_NMI_reg_register_data_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_2_IN,
      O => reg_file_NMI_reg_register_data(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  out_rst_delta_1_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"0F00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => out_rst_d1_q_867,
      ADR4 => out_rst_delta_1_3_930,
      ADR3 => out_rst_delta_1_1_920,
      ADR5 => out_rst_delta_1_2_993,
      O => out_rst_delta_1_4_929
    );
  reg_file_NMI_reg_register_data_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_1_IN,
      O => reg_file_NMI_reg_register_data(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_NMI_reg_register_data_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_0_IN,
      O => reg_file_NMI_reg_register_data(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  nmi7 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"8200008241000041"
    )
    port map (
      ADR0 => reg_file_NMI_reg_register_data(14),
      ADR5 => main_counter_gen1_14_latch_q_844,
      ADR2 => reg_file_NMI_reg_register_data(3),
      ADR1 => main_counter_gen1_3_latch_q_885,
      ADR4 => reg_file_NMI_reg_register_data(2),
      ADR3 => main_counter_gen1_2_latch_q_884,
      O => nmi7_979
    );
  main_counter_n_7_11_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR5 => main_counter_gen1_9_latch_q_872,
      ADR1 => main_counter_gen1_7_latch_q_864,
      ADR0 => main_counter_gen1_6_latch_q_856,
      ADR2 => main_counter_gen1_5_latch_q_843,
      ADR3 => main_counter_d0_q_838,
      ADR4 => main_counter_gen1_1_latch_q_837,
      O => N56
    );
  main_counter_gen1_11_latch_q_main_counter_gen1_11_latch_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => main_counter_d0_q_pack_7,
      O => main_counter_d0_q_838
    );
  cmp_MIN_comparator_equal_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"8200828241004141"
    )
    port map (
      ADR5 => reg_file_MIN_reg_register_data(11),
      ADR2 => reg_file_MIN_reg_register_data(0),
      ADR4 => reg_file_MIN_reg_register_data(12),
      ADR0 => main_counter_gen1_11_latch_q_874,
      ADR3 => main_counter_gen1_12_latch_q_877,
      ADR1 => main_counter_d0_q_838,
      O => cmp_MIN_comparator_equal_0_1_900
    );
  out_rst_delta_1_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"8008200240041001"
    )
    port map (
      ADR0 => reg_file_MAX_reg_register_data(0),
      ADR3 => reg_file_MAX_reg_register_data(10),
      ADR4 => reg_file_MAX_reg_register_data(11),
      ADR2 => main_counter_gen1_10_latch_q_899,
      ADR1 => main_counter_gen1_11_latch_q_874,
      ADR5 => main_counter_d0_q_838,
      O => out_rst_delta_1_3_930
    );
  count_refresh1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"FCFFFCFFFCFFFCFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => clr_IBUF_0,
      ADR1 => start_IBUF_0,
      ADR3 => started_839,
      ADR5 => '1',
      O => count_refresh
    );
  main_counter_n_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"01000200"
    )
    port map (
      ADR0 => main_counter_d0_q_838,
      ADR4 => PSreg_to_ps(3),
      ADR2 => clr_IBUF_0,
      ADR1 => start_IBUF_0,
      ADR3 => started_839,
      O => main_counter_n(0)
    );
  main_counter_d0_q : X_FF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_d0_q_CLK,
      I => main_counter_n(0),
      O => main_counter_d0_q_pack_7,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_gen1_11_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_11_latch_q_CLK,
      I => main_counter_n(11),
      O => main_counter_gen1_11_latch_q_874,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"0000A9AA0000AAAA"
    )
    port map (
      ADR4 => count_refresh,
      ADR3 => N10,
      ADR1 => N24_0,
      ADR0 => main_counter_gen1_11_latch_q_874,
      ADR2 => N56,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(11)
    );
  reg_file_MIN_reg_register_data_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_3_IN,
      O => reg_file_MIN_reg_register_data(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_2_IN,
      O => reg_file_MIN_reg_register_data(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_1_IN,
      O => reg_file_MIN_reg_register_data(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_0_IN,
      O => reg_file_MIN_reg_register_data(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  out_rst_delta_1_7 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"9000090000900009"
    )
    port map (
      ADR5 => reg_file_MAX_reg_register_data(15),
      ADR3 => main_counter_gen1_15_latch_q_888,
      ADR4 => reg_file_MAX_reg_register_data(14),
      ADR2 => main_counter_gen1_14_latch_q_844,
      ADR0 => reg_file_MAX_reg_register_data(1),
      ADR1 => main_counter_gen1_1_latch_q_837,
      O => out_rst_delta_1_7_955
    );
  cmp_MIN_comparator_equal_0_6 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"9000990000900099"
    )
    port map (
      ADR1 => reg_file_MIN_reg_register_data(5),
      ADR5 => reg_file_MIN_reg_register_data(1),
      ADR4 => reg_file_MIN_reg_register_data(4),
      ADR2 => main_counter_gen1_4_latch_q_845,
      ADR0 => main_counter_gen1_5_latch_q_843,
      ADR3 => main_counter_gen1_1_latch_q_837,
      O => cmp_MIN_comparator_equal_0_5_908
    );
  main_counter_gen1_15_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_15_latch_q_CLK,
      I => main_counter_n(15),
      O => main_counter_gen1_15_latch_q_888,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_15_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"00006AAA0000AAAA"
    )
    port map (
      ADR3 => N8,
      ADR4 => count_refresh,
      ADR5 => N10,
      ADR0 => main_counter_gen1_15_latch_q_888,
      ADR1 => N48,
      ADR2 => PSreg_to_ps(3),
      O => main_counter_n(15)
    );
  main_counter_gen1_1_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_1_latch_q_CLK,
      I => main_counter_n(1),
      O => main_counter_gen1_1_latch_q_837,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"0000022200002000"
    )
    port map (
      ADR4 => clr_IBUF_0,
      ADR1 => start_IBUF_0,
      ADR0 => started_839,
      ADR5 => main_counter_gen1_1_latch_q_837,
      ADR3 => main_counter_d0_q_838,
      ADR2 => PSreg_to_ps(3),
      O => main_counter_n(1)
    );
  main_counter_gen1_14_latch_q_main_counter_gen1_14_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N54_pack_7,
      O => N54
    );
  main_counter_n_7_11_SW8 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y9"
    )
    port map (
      IA => N62,
      IB => N63,
      O => N54_pack_7,
      SEL => main_counter_gen1_5_latch_q_843
    );
  main_counter_n_7_11_SW8_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FDFDFFFFFDFDFFFF"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => main_counter_gen1_14_latch_q_844,
      ADR2 => clr_IBUF_0,
      ADR1 => start_IBUF_0,
      ADR4 => started_839,
      O => N62
    );
  main_counter_n_7_11_SW8_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"FFFFFDF7FFFFF5FF"
    )
    port map (
      ADR3 => main_counter_gen1_14_latch_q_844,
      ADR5 => main_counter_gen1_1_latch_q_837,
      ADR1 => main_counter_d0_q_838,
      ADR0 => started_839,
      ADR4 => start_IBUF_0,
      ADR2 => clr_IBUF_0,
      O => N63
    );
  cmp_MIN_comparator_equal_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"8020080240100401"
    )
    port map (
      ADR2 => reg_file_MIN_reg_register_data(3),
      ADR3 => reg_file_MIN_reg_register_data(14),
      ADR5 => reg_file_MIN_reg_register_data(15),
      ADR0 => main_counter_gen1_15_latch_q_888,
      ADR1 => main_counter_gen1_14_latch_q_844,
      ADR4 => main_counter_gen1_3_latch_q_885,
      O => cmp_MIN_comparator_equal_0_3_906
    );
  main_counter_gen1_14_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_14_latch_q_CLK,
      I => main_counter_n(14),
      O => main_counter_gen1_14_latch_q_844,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_14_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"10000000DFFFFFFF"
    )
    port map (
      ADR3 => main_counter_gen1_6_latch_q_856,
      ADR5 => N53_0,
      ADR4 => N10,
      ADR0 => N54,
      ADR1 => N20,
      ADR2 => PSreg_to_ps(3),
      O => main_counter_n(14)
    );
  N50_N50_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N53,
      O => N53_0
    );
  main_counter_n_7_11_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"FFFFAFFFFFFFAFFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => main_counter_gen1_13_latch_q_836,
      ADR0 => clr_IBUF_0,
      ADR4 => start_IBUF_0,
      ADR3 => started_839,
      ADR5 => '1',
      O => N50
    );
  main_counter_n_7_11_SW7 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"FFFFBBFF"
    )
    port map (
      ADR1 => main_counter_gen1_14_latch_q_844,
      ADR2 => '1',
      ADR0 => clr_IBUF_0,
      ADR4 => start_IBUF_0,
      ADR3 => started_839,
      O => N53
    );
  reg_file_MAX_reg_register_data_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_7_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_7_IN,
      O => reg_file_MAX_reg_register_data(7),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_6_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_6_IN,
      O => reg_file_MAX_reg_register_data(6),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_5_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_5_IN,
      O => reg_file_MAX_reg_register_data(5),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_4_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_4_IN,
      O => reg_file_MAX_reg_register_data(4),
      RST => rst_IBUF_0,
      SET => GND
    );
  nmi3 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => X"8C002300008C0023"
    )
    port map (
      ADR4 => reg_file_NMI_reg_register_data(1),
      ADR1 => main_counter_gen1_1_latch_q_837,
      ADR0 => main_counter_gen1_4_latch_q_845,
      ADR2 => reg_file_NMI_reg_register_data(4),
      ADR3 => reg_file_NMI_reg_register_data(5),
      ADR5 => main_counter_gen1_5_latch_q_843,
      O => nmi3_976
    );
  reg_file_MIN_reg_register_data_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_7_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_7_IN,
      O => reg_file_MIN_reg_register_data(7),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_6_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_6_IN,
      O => reg_file_MIN_reg_register_data(6),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_5_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_5_IN,
      O => reg_file_MIN_reg_register_data(5),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MIN_reg_register_data_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_4_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_4_IN,
      O => reg_file_MIN_reg_register_data(4),
      RST => rst_IBUF_0,
      SET => GND
    );
  out_rst_delta_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"80882022C0CC3033"
    )
    port map (
      ADR4 => reg_file_MAX_reg_register_data(5),
      ADR2 => reg_file_MAX_reg_register_data(4),
      ADR5 => reg_file_MAX_reg_register_data(12),
      ADR3 => main_counter_gen1_4_latch_q_845,
      ADR0 => main_counter_gen1_12_latch_q_877,
      ADR1 => main_counter_gen1_5_latch_q_843,
      O => out_rst_delta_1_1_920
    );
  main_counter_gen1_12_latch_q : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_12_latch_q_CLK,
      I => main_counter_n(12),
      O => main_counter_gen1_12_latch_q_877,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"3021303030303030"
    )
    port map (
      ADR1 => count_refresh,
      ADR5 => N10,
      ADR3 => N22,
      ADR2 => main_counter_gen1_12_latch_q_877,
      ADR0 => N56,
      ADR4 => PSreg_to_ps(3),
      O => main_counter_n(12)
    );
  main_counter_gen1_4_latch_q : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_4_latch_q_CLK,
      I => main_counter_n(4),
      O => main_counter_gen1_4_latch_q_845,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"007F008000FF0000"
    )
    port map (
      ADR0 => main_counter_gen1_3_latch_q_885,
      ADR1 => main_counter_d0_q_838,
      ADR2 => N26_0,
      ADR4 => main_counter_gen1_4_latch_q_845,
      ADR3 => count_refresh,
      ADR5 => count_trigger,
      O => main_counter_n(4)
    );
  main_counter_gen1_5_latch_q : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_5_latch_q_CLK,
      I => main_counter_n(5),
      O => main_counter_gen1_5_latch_q_843,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"1230303030303030"
    )
    port map (
      ADR0 => main_counter_gen1_4_latch_q_845,
      ADR4 => main_counter_d0_q_838,
      ADR3 => N28_0,
      ADR2 => main_counter_gen1_5_latch_q_843,
      ADR1 => count_refresh,
      ADR5 => count_trigger,
      O => main_counter_n(5)
    );
  reg_file_MAX_reg_register_data_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_3_IN,
      O => reg_file_MAX_reg_register_data(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_2_IN,
      O => reg_file_MAX_reg_register_data(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_1_IN,
      O => reg_file_MAX_reg_register_data(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_MAX_reg_register_data_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_0_IN,
      O => reg_file_MAX_reg_register_data(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_13_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"5FFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR5 => main_counter_gen1_14_latch_q_844,
      ADR2 => main_counter_gen1_13_latch_q_836,
      ADR0 => main_counter_gen1_11_latch_q_874,
      ADR4 => main_counter_gen1_12_latch_q_877,
      ADR3 => main_counter_gen1_7_latch_q_864,
      O => N16
    );
  main_counter_n_7_11_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"0000800000000000"
    )
    port map (
      ADR0 => main_counter_gen1_9_latch_q_872,
      ADR3 => main_counter_gen1_6_latch_q_856,
      ADR5 => main_counter_gen1_5_latch_q_843,
      ADR1 => main_counter_gen1_1_latch_q_837,
      ADR2 => main_counter_d0_q_838,
      ADR4 => N16,
      O => N48
    );
  main_counter_n_9_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"FF00FF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => main_counter_gen1_10_latch_q_899,
      ADR5 => main_counter_gen1_8_latch_q_870,
      O => N8
    );
  main_counter_n_13_11_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => main_counter_gen1_13_latch_q_836,
      ADR2 => main_counter_gen1_11_latch_q_874,
      ADR4 => main_counter_gen1_9_latch_q_872,
      ADR5 => main_counter_gen1_12_latch_q_877,
      ADR1 => main_counter_gen1_7_latch_q_864,
      ADR3 => N8,
      O => N20
    );
  reg_file_PS_reg_register_data_3_reg_file_PS_reg_register_data_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_write_to_0_pack_1,
      O => reg_file_write_to(0)
    );
  reg_file_PS_reg_register_data_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(0),
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_3_IN,
      O => reg_file_PS_reg_register_data(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_PS_reg_register_data_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(0),
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_2_IN,
      O => reg_file_PS_reg_register_data(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_PS_reg_register_data_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(0),
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_1_IN,
      O => reg_file_PS_reg_register_data(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_PS_reg_register_data_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(0),
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_0_IN,
      O => reg_file_PS_reg_register_data(0),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_write_to_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"0033000000330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => started_839,
      ADR4 => command_0_IBUF_0,
      ADR1 => command_1_IBUF_0,
      ADR5 => '1',
      O => reg_file_write_to(1)
    );
  reg_file_write_to_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"00000033"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => started_839,
      ADR4 => command_0_IBUF_0,
      ADR1 => command_1_IBUF_0,
      O => reg_file_write_to_0_pack_1
    );
  main_counter_gen1_3_latch_q_main_counter_gen1_3_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N28,
      O => N28_0
    );
  main_counter_n_6_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"8000000000000000"
    )
    port map (
      ADR5 => main_counter_d0_q_838,
      ADR2 => main_counter_gen1_1_latch_q_837,
      ADR1 => main_counter_gen1_2_latch_q_884,
      ADR0 => main_counter_gen1_3_latch_q_885,
      ADR3 => main_counter_gen1_4_latch_q_845,
      ADR4 => main_counter_gen1_5_latch_q_843,
      O => N66
    );
  main_counter_n_2_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"CC000000CC000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => main_counter_gen1_4_latch_q_845,
      ADR1 => main_counter_gen1_3_latch_q_885,
      ADR4 => main_counter_gen1_2_latch_q_884,
      ADR5 => '1',
      O => N10
    );
  main_counter_n_2_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => main_counter_gen1_1_latch_q_837,
      ADR3 => '1',
      ADR1 => main_counter_gen1_3_latch_q_885,
      ADR4 => main_counter_gen1_2_latch_q_884,
      O => N28
    );
  out_rst_delta_1_5 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"8040804020102010"
    )
    port map (
      ADR4 => '1',
      ADR0 => reg_file_MAX_reg_register_data(2),
      ADR5 => reg_file_MAX_reg_register_data(3),
      ADR2 => out_rst_d0_q_866,
      ADR1 => main_counter_gen1_3_latch_q_885,
      ADR3 => main_counter_gen1_2_latch_q_884,
      O => out_rst_delta_1_5_945
    );
  main_counter_gen1_3_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_3_latch_q_CLK,
      I => main_counter_n(3),
      O => main_counter_gen1_3_latch_q_885,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"07080F000F000F00"
    )
    port map (
      ADR0 => main_counter_gen1_2_latch_q_884,
      ADR5 => main_counter_gen1_1_latch_q_837,
      ADR1 => main_counter_d0_q_838,
      ADR3 => main_counter_gen1_3_latch_q_885,
      ADR2 => count_refresh,
      ADR4 => count_trigger,
      O => main_counter_n(3)
    );
  main_counter_n_7_11_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => main_counter_gen1_7_latch_q_864,
      ADR5 => main_counter_gen1_6_latch_q_856,
      ADR0 => main_counter_gen1_5_latch_q_843,
      ADR3 => main_counter_d0_q_838,
      ADR4 => main_counter_gen1_8_latch_q_870,
      ADR2 => main_counter_gen1_1_latch_q_837,
      O => N46
    );
  prsclr_counter_inst_gen1_2_latch_q_prsclr_counter_inst_gen1_2_latch_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => prsclr_counter_inst_gen1_3_latch_q_pack_9,
      O => prsclr_counter_inst_gen1_3_latch_q_881
    );
  prsclr_Mmux_clk_enable_s_7 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FFAA00AACCF0CCF0"
    )
    port map (
      ADR5 => reg_file_PS_reg_register_data(0),
      ADR3 => reg_file_PS_reg_register_data(1),
      ADR1 => prsclr_counter_inst_gen1_2_latch_q_850,
      ADR0 => prsclr_counter_inst_gen1_1_latch_q_851,
      ADR2 => prsclr_counter_inst_d0_q_852,
      ADR4 => prsclr_counter_inst_gen1_3_latch_q_881,
      O => prsclr_Mmux_clk_enable_s_7_928
    );
  prsclr_counter_inst_gen1_2_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_2_latch_q_CLK,
      I => prsclr_counter_inst_n(2),
      O => prsclr_counter_inst_gen1_2_latch_q_850,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"050F0A00050F0A00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => prsclr_counter_inst_gen1_1_latch_q_851,
      ADR4 => prsclr_counter_inst_gen1_2_latch_q_850,
      ADR0 => prsclr_counter_inst_d0_q_852,
      ADR2 => count_trigger,
      O => prsclr_counter_inst_n(2)
    );
  prsclr_counter_inst_n_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"7777FFFF7777FFFF"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => prsclr_counter_inst_gen1_2_latch_q_850,
      ADR0 => prsclr_counter_inst_gen1_1_latch_q_851,
      ADR4 => prsclr_counter_inst_d0_q_852,
      ADR5 => '1',
      O => prsclr_counter_inst_n_3_1
    );
  prsclr_counter_inst_n_3_2 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"07080F00"
    )
    port map (
      ADR3 => prsclr_counter_inst_gen1_3_latch_q_881,
      ADR2 => PSreg_to_ps(3),
      ADR1 => prsclr_counter_inst_gen1_2_latch_q_850,
      ADR0 => prsclr_counter_inst_gen1_1_latch_q_851,
      ADR4 => prsclr_counter_inst_d0_q_852,
      O => prsclr_counter_inst_n(3)
    );
  prsclr_counter_inst_gen1_3_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_3_latch_q_CLK,
      I => prsclr_counter_inst_n(3),
      O => prsclr_counter_inst_gen1_3_latch_q_pack_9,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_8_11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      ADR3 => prsclr_counter_inst_gen1_7_latch_q_853,
      ADR0 => prsclr_counter_inst_gen1_6_latch_q_919,
      ADR1 => prsclr_counter_inst_gen1_5_latch_q_886,
      ADR5 => prsclr_counter_inst_gen1_4_latch_q_880,
      ADR2 => prsclr_counter_inst_gen1_3_latch_q_881,
      ADR4 => prsclr_counter_inst_n_3_1,
      O => prsclr_counter_inst_n_8_1_860
    );
  prsclr_counter_inst_n_7_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y15",
      INIT => X"33FFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => prsclr_counter_inst_gen1_3_latch_q_881,
      ADR1 => prsclr_counter_inst_gen1_4_latch_q_880,
      ADR3 => prsclr_counter_inst_gen1_5_latch_q_886,
      ADR5 => prsclr_counter_inst_gen1_6_latch_q_919,
      O => N64
    );
  prsclr_Mmux_clk_enable_s_6 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y15",
      INIT => X"AACCAACCFFF000F0"
    )
    port map (
      ADR3 => reg_file_PS_reg_register_data(1),
      ADR5 => reg_file_PS_reg_register_data(0),
      ADR4 => prsclr_counter_inst_gen1_6_latch_q_919,
      ADR0 => prsclr_counter_inst_gen1_7_latch_q_853,
      ADR1 => prsclr_counter_inst_gen1_5_latch_q_886,
      ADR2 => prsclr_counter_inst_gen1_4_latch_q_880,
      O => prsclr_Mmux_clk_enable_s_6_918
    );
  prsclr_counter_inst_gen1_5_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_5_latch_q_CLK,
      I => prsclr_counter_inst_n(5),
      O => prsclr_counter_inst_gen1_5_latch_q_886,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y15",
      INIT => X"00F3000C00FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => prsclr_counter_inst_gen1_4_latch_q_880,
      ADR5 => prsclr_counter_inst_gen1_3_latch_q_881,
      ADR4 => prsclr_counter_inst_gen1_5_latch_q_886,
      ADR2 => prsclr_counter_inst_n_3_1,
      ADR3 => count_trigger,
      O => prsclr_counter_inst_n(5)
    );
  prsclr_counter_inst_gen1_4_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_4_latch_q_CLK,
      I => prsclr_counter_inst_n(4),
      O => prsclr_counter_inst_gen1_4_latch_q_880,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y15",
      INIT => X"000000007FFF8000"
    )
    port map (
      ADR3 => prsclr_counter_inst_gen1_2_latch_q_850,
      ADR1 => prsclr_counter_inst_gen1_1_latch_q_851,
      ADR2 => prsclr_counter_inst_d0_q_852,
      ADR4 => prsclr_counter_inst_gen1_4_latch_q_880,
      ADR0 => prsclr_counter_inst_gen1_3_latch_q_881,
      ADR5 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(4)
    );
  prsclr_counter_inst_gen1_8_latch_q_prsclr_counter_inst_gen1_8_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  prsclr_counter_inst_gen1_8_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK,
      I => prsclr_counter_inst_n(8),
      O => prsclr_counter_inst_gen1_8_latch_q_858,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"0A0A0A0A000C0000"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_7_latch_q_853,
      ADR4 => N34_0,
      ADR3 => prsclr_counter_inst_n_3_1,
      ADR5 => prsclr_counter_inst_gen1_8_latch_q_858,
      ADR0 => prsclr_counter_inst_n_8_1_860,
      ADR2 => count_trigger,
      O => prsclr_counter_inst_n(8)
    );
  main_counter_gen1_2_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_2_latch_q_CLK,
      I => main_counter_n(2),
      O => main_counter_gen1_2_latch_q_884,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_2_2 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"070F0800070F0800"
    )
    port map (
      ADR1 => main_counter_gen1_1_latch_q_837,
      ADR3 => main_counter_d0_q_838,
      ADR2 => count_refresh,
      ADR4 => main_counter_gen1_2_latch_q_884,
      ADR0 => count_trigger,
      ADR5 => '1',
      O => main_counter_n(2)
    );
  main_counter_n_2_11_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"CCCC0000"
    )
    port map (
      ADR1 => main_counter_gen1_1_latch_q_837,
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => main_counter_gen1_2_latch_q_884,
      ADR3 => '1',
      O => N26
    );
  prsclr_counter_inst_gen1_6_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK,
      I => prsclr_counter_inst_n(6),
      O => prsclr_counter_inst_gen1_6_latch_q_919,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"00AA006A00AA00AA"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_5_latch_q_886,
      ADR5 => prsclr_counter_inst_gen1_4_latch_q_880,
      ADR2 => prsclr_counter_inst_gen1_3_latch_q_881,
      ADR0 => prsclr_counter_inst_gen1_6_latch_q_919,
      ADR4 => prsclr_counter_inst_n_3_1,
      ADR3 => count_trigger,
      O => prsclr_counter_inst_n(6)
    );
  PSreg_to_ps_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y16",
      INIT => X"FDEC7564B9A83120"
    )
    port map (
      ADR0 => reg_file_PS_reg_register_data(3),
      ADR1 => reg_file_PS_reg_register_data(2),
      ADR4 => prsclr_counter_inst_gen1_10_latch_q_859,
      ADR2 => N12,
      ADR5 => prsclr_Mmux_clk_enable_s_6_918,
      ADR3 => prsclr_Mmux_clk_enable_s_7_928,
      O => count_trigger
    );
  prsclr_counter_inst_gen1_10_latch_q_prsclr_counter_inst_gen1_10_latch_q_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N34,
      O => N34_0
    );
  prsclr_counter_inst_n_7_21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"8000000080000000"
    )
    port map (
      ADR0 => prsclr_counter_inst_gen1_7_latch_q_853,
      ADR2 => prsclr_counter_inst_gen1_6_latch_q_919,
      ADR3 => prsclr_counter_inst_gen1_5_latch_q_886,
      ADR1 => prsclr_counter_inst_gen1_4_latch_q_880,
      ADR4 => prsclr_counter_inst_gen1_3_latch_q_881,
      ADR5 => '1',
      O => N32
    );
  prsclr_counter_inst_n_7_21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"C0000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => prsclr_counter_inst_gen1_6_latch_q_919,
      ADR3 => prsclr_counter_inst_gen1_5_latch_q_886,
      ADR1 => prsclr_counter_inst_gen1_4_latch_q_880,
      ADR4 => prsclr_counter_inst_gen1_3_latch_q_881,
      O => N34
    );
  PSreg_to_ps_3_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"CCF0CCF0CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR3 => reg_file_PS_reg_register_data(1),
      ADR5 => reg_file_PS_reg_register_data(0),
      ADR2 => prsclr_counter_inst_gen1_9_latch_q_998,
      ADR4 => prsclr_counter_inst_gen1_8_latch_q_858,
      ADR1 => prsclr_counter_inst_gen1_10_latch_q_859,
      O => N12
    );
  prsclr_counter_inst_gen1_10_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_10_latch_q_CLK,
      I => prsclr_counter_inst_n(10),
      O => prsclr_counter_inst_gen1_10_latch_q_859,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"00000000FF003FC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => prsclr_counter_inst_gen1_9_latch_q_998,
      ADR2 => prsclr_counter_inst_gen1_8_latch_q_858,
      ADR3 => prsclr_counter_inst_gen1_10_latch_q_859,
      ADR4 => prsclr_counter_inst_n_8_1_860,
      ADR5 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(10)
    );
  prsclr_counter_inst_gen1_9_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_9_latch_q_CLK,
      I => prsclr_counter_inst_n(9),
      O => prsclr_counter_inst_gen1_9_latch_q_998,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"00000000CCFF5000"
    )
    port map (
      ADR3 => prsclr_counter_inst_gen1_8_latch_q_858,
      ADR2 => N32,
      ADR0 => prsclr_counter_inst_n_3_1,
      ADR4 => prsclr_counter_inst_gen1_9_latch_q_998,
      ADR1 => prsclr_counter_inst_n_8_1_860,
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(9)
    );
  prsclr_counter_inst_gen1_1_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_1_latch_q_CLK,
      I => prsclr_counter_inst_n(1),
      O => prsclr_counter_inst_gen1_1_latch_q_851,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y14",
      INIT => X"000000005555AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => prsclr_counter_inst_gen1_1_latch_q_851,
      ADR0 => prsclr_counter_inst_d0_q_852,
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(1)
    );
  prsclr_counter_inst_d0_q : X_FF
    generic map(
      LOC => "SLICE_X5Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_d0_q_CLK,
      I => prsclr_counter_inst_n(0),
      O => prsclr_counter_inst_d0_q_852,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y14",
      INIT => X"FFFFFFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => prsclr_counter_inst_d0_q_852,
      ADR3 => '1',
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(0)
    );
  main_counter_gen1_6_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_6_latch_q_CLK,
      I => main_counter_n(6),
      O => main_counter_gen1_6_latch_q_856,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y15",
      INIT => X"0015000000400000"
    )
    port map (
      ADR0 => start_IBUF_0,
      ADR3 => clr_IBUF_0,
      ADR4 => started_839,
      ADR5 => main_counter_gen1_6_latch_q_856,
      ADR1 => N66,
      ADR2 => PSreg_to_ps(3),
      O => main_counter_n(6)
    );
  prsclr_counter_inst_gen1_7_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_7_latch_q_CLK,
      I => prsclr_counter_inst_n(7),
      O => prsclr_counter_inst_gen1_7_latch_q_853,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X5Y15",
      INIT => X"2130303030303030"
    )
    port map (
      ADR4 => prsclr_counter_inst_gen1_2_latch_q_850,
      ADR3 => prsclr_counter_inst_gen1_1_latch_q_851,
      ADR5 => prsclr_counter_inst_d0_q_852,
      ADR2 => prsclr_counter_inst_gen1_7_latch_q_853,
      ADR0 => N64,
      ADR1 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(7)
    );
  main_counter_gen1_10_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_10_latch_q_CLK,
      I => main_counter_n(10),
      O => main_counter_gen1_10_latch_q_899,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y15",
      INIT => X"0B0F04000F0F0000"
    )
    port map (
      ADR1 => main_counter_gen1_9_latch_q_872,
      ADR0 => N46,
      ADR2 => count_refresh,
      ADR4 => main_counter_gen1_10_latch_q_899,
      ADR3 => N10,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(10)
    );
  PSreg_to_ps_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y15",
      INIT => X"BF8FBC8CB383B080"
    )
    port map (
      ADR2 => reg_file_PS_reg_register_data(3),
      ADR1 => reg_file_PS_reg_register_data(2),
      ADR0 => prsclr_counter_inst_gen1_10_latch_q_859,
      ADR3 => N12,
      ADR5 => prsclr_Mmux_clk_enable_s_6_918,
      ADR4 => prsclr_Mmux_clk_enable_s_7_928,
      O => PSreg_to_ps(3)
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_nmi_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => nmi_OBUF_977,
      O => NlwBufferSignal_nmi_OBUF_I
    );
  NlwBufferBlock_reset_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reset_OBUF_985,
      O => NlwBufferSignal_reset_OBUF_I
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_11_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_11_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_11_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_10_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_10_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_10_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_9_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_9_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_8_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_8_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_8_IN
    );
  NlwBufferBlock_main_counter_gen1_9_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_9_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_8_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_8_latch_q_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_15_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_15_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_15_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_14_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_14_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_14_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_13_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_13_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_13_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_12_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_12_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_12_IN
    );
  NlwBufferBlock_out_rst_d1_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_out_rst_d1_q_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_15_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_15_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_15_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_14_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_14_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_14_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_13_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_13_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_13_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_12_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_12_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_12_IN
    );
  NlwBufferBlock_started_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_started_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_15_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_15_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_15_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_14_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_14_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_14_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_13_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_13_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_13_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_12_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_12_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_12_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_11_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_11_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_11_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_10_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_10_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_10_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_9_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_9_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_8_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_8_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_8_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_11_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_11_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_11_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_10_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_10_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_10_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_9_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_9_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_8_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_8_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_8_IN
    );
  NlwBufferBlock_main_counter_gen1_7_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_7_latch_q_CLK
    );
  NlwBufferBlock_out_rst_d0_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_out_rst_d0_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_13_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_13_latch_q_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_7_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_7_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_7_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_6_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_6_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_6_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_5_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_5_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_4_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_4_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_4_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_3_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_3_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_2_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_2_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_1_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_1_IN
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_0_CLK
    );
  NlwBufferBlock_reg_file_NMI_reg_register_data_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_0,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_0_IN
    );
  NlwBufferBlock_main_counter_d0_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_d0_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_11_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_11_latch_q_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_3_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_3_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_2_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_2_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_1_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_1_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_0_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_0_IN
    );
  NlwBufferBlock_main_counter_gen1_15_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_15_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_1_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_1_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_14_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_14_latch_q_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_7_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_7_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_7_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_6_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_6_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_6_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_5_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_5_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_4_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_4_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_4_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_7_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_7_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_7_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_6_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_6_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_6_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_5_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_5_IN
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_4_CLK
    );
  NlwBufferBlock_reg_file_MIN_reg_register_data_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_4_IBUF_0,
      O => NlwBufferSignal_reg_file_MIN_reg_register_data_4_IN
    );
  NlwBufferBlock_main_counter_gen1_12_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_12_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_4_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_4_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_5_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_5_latch_q_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_3_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_3_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_2_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_2_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_1_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_1_IN
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_0_CLK
    );
  NlwBufferBlock_reg_file_MAX_reg_register_data_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_0,
      O => NlwBufferSignal_reg_file_MAX_reg_register_data_0_IN
    );
  NlwBufferBlock_reg_file_PS_reg_register_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_PS_reg_register_data_3_CLK
    );
  NlwBufferBlock_reg_file_PS_reg_register_data_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_0,
      O => NlwBufferSignal_reg_file_PS_reg_register_data_3_IN
    );
  NlwBufferBlock_reg_file_PS_reg_register_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_PS_reg_register_data_2_CLK
    );
  NlwBufferBlock_reg_file_PS_reg_register_data_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_0,
      O => NlwBufferSignal_reg_file_PS_reg_register_data_2_IN
    );
  NlwBufferBlock_reg_file_PS_reg_register_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_PS_reg_register_data_1_CLK
    );
  NlwBufferBlock_reg_file_PS_reg_register_data_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_0,
      O => NlwBufferSignal_reg_file_PS_reg_register_data_1_IN
    );
  NlwBufferBlock_reg_file_PS_reg_register_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_PS_reg_register_data_0_CLK
    );
  NlwBufferBlock_reg_file_PS_reg_register_data_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_0,
      O => NlwBufferSignal_reg_file_PS_reg_register_data_0_IN
    );
  NlwBufferBlock_main_counter_gen1_3_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_3_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_2_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_2_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_3_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_3_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_5_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_5_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_4_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_4_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_8_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_2_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_2_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_6_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_10_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_10_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_9_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_9_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_1_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_1_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_d0_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_d0_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_6_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_6_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_7_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_7_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_10_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_10_latch_q_CLK
    );
  NlwBlock_WatchDog_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_WatchDog_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

