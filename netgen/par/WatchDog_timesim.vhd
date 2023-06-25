--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: WatchDog_timesim.vhd
-- /___/   /\     Timestamp: Sun Jun 25 09:26:54 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf WatchDog.pcf -rpw 100 -tpw 0 -ar Structure -tm WatchDog -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim WatchDog.ncd WatchDog_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: WatchDog.ncd
-- Output file	: /home/simone/progetto reti logiche/WindowedWatchdogCounter/netgen/par/WatchDog_timesim.vhd
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
  signal main_counter_gen1_13_latch_q_840 : STD_LOGIC; 
  signal main_counter_gen1_1_latch_q_841 : STD_LOGIC; 
  signal main_counter_d0_q_842 : STD_LOGIC; 
  signal started_843 : STD_LOGIC; 
  signal start_IBUF_0 : STD_LOGIC; 
  signal clr_IBUF_0 : STD_LOGIC; 
  signal main_counter_gen1_5_latch_q_846 : STD_LOGIC; 
  signal main_counter_gen1_14_latch_q_847 : STD_LOGIC; 
  signal main_counter_gen1_4_latch_q_848 : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal count_refresh : STD_LOGIC; 
  signal count_trigger : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_2_latch_q_853 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_1_latch_q_854 : STD_LOGIC; 
  signal prsclr_counter_inst_d0_q_855 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_7_latch_q_856 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal main_counter_gen1_6_latch_q_859 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_8_latch_q_861 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_10_latch_q_862 : STD_LOGIC; 
  signal prsclr_counter_inst_n_8_1_863 : STD_LOGIC; 
  signal N34_0 : STD_LOGIC; 
  signal prsclr_counter_inst_n_3_1 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal main_counter_gen1_7_latch_q_867 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal out_rst_d0_q_869 : STD_LOGIC; 
  signal out_rst_d1_q_870 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal main_counter_gen1_8_latch_q_873 : STD_LOGIC; 
  signal N44_0 : STD_LOGIC; 
  signal main_counter_gen1_9_latch_q_875 : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal main_counter_gen1_11_latch_q_877 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal main_counter_gen1_12_latch_q_880 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_4_latch_q_883 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_3_latch_q_884 : STD_LOGIC; 
  signal N53_0 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal main_counter_gen1_2_latch_q_887 : STD_LOGIC; 
  signal main_counter_gen1_3_latch_q_888 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_5_latch_q_889 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal main_counter_gen1_15_latch_q_891 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal main_counter_gen1_10_latch_q_902 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_1_903 : STD_LOGIC; 
  signal reg_file_write_to_2_0 : STD_LOGIC; 
  signal data_0_IBUF_0 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_3_909 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_4_910 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_5_911 : STD_LOGIC; 
  signal data_1_IBUF_0 : STD_LOGIC; 
  signal data_2_IBUF_0 : STD_LOGIC; 
  signal prsclr_Mmux_clk_enable_s_6_922 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_6_latch_q_923 : STD_LOGIC; 
  signal out_rst_delta_1_1_924 : STD_LOGIC; 
  signal data_3_IBUF_0 : STD_LOGIC; 
  signal prsclr_Mmux_clk_enable_s_7_933 : STD_LOGIC; 
  signal out_rst_delta_1_4_934 : STD_LOGIC; 
  signal out_rst_delta_1_3_935 : STD_LOGIC; 
  signal data_4_IBUF_0 : STD_LOGIC; 
  signal data_5_IBUF_0 : STD_LOGIC; 
  signal data_6_IBUF_0 : STD_LOGIC; 
  signal out_rst_delta_1_5_950 : STD_LOGIC; 
  signal data_7_IBUF_0 : STD_LOGIC; 
  signal out_rst_delta_1_6_955 : STD_LOGIC; 
  signal data_8_IBUF_0 : STD_LOGIC; 
  signal out_rst_delta_1_7_960 : STD_LOGIC; 
  signal data_9_IBUF_0 : STD_LOGIC; 
  signal data_10_IBUF_0 : STD_LOGIC; 
  signal data_11_IBUF_0 : STD_LOGIC; 
  signal data_12_IBUF_0 : STD_LOGIC; 
  signal data_13_IBUF_0 : STD_LOGIC; 
  signal data_14_IBUF_0 : STD_LOGIC; 
  signal data_15_IBUF_0 : STD_LOGIC; 
  signal nmi1_975 : STD_LOGIC; 
  signal nmi2_977 : STD_LOGIC; 
  signal nmi3_978 : STD_LOGIC; 
  signal nmi5_981 : STD_LOGIC; 
  signal nmi6_982 : STD_LOGIC; 
  signal nmi7_983 : STD_LOGIC; 
  signal reg_file_write_to_0_0 : STD_LOGIC; 
  signal command_0_IBUF_0 : STD_LOGIC; 
  signal command_1_IBUF_0 : STD_LOGIC; 
  signal nmi_OBUF_990 : STD_LOGIC; 
  signal reset_OBUF_991 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal nmi4_995 : STD_LOGIC; 
  signal out_rst_delta_1_2_996 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_2_997 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal out_rst_delta_1_8_1000 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_9_latch_q_1002 : STD_LOGIC; 
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
  signal N61 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N51_pack_7 : STD_LOGIC; 
  signal nmi4_pack_1 : STD_LOGIC; 
  signal started_glue_set_263 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal main_counter_d0_q_pack_7 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N54_pack_7 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_3_latch_q_pack_9 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_nmi_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reset_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_13_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_started_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_9_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_11_latch_q_CLK : STD_LOGIC; 
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
  signal NlwBufferSignal_main_counter_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_out_rst_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_14_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_out_rst_d1_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_15_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_5_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_4_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_9_latch_q_CLK : STD_LOGIC; 
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
  ProtoComp62_IMUX : X_BUF
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
  ProtoComp62_IMUX_1 : X_BUF
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
  ProtoComp62_IMUX_2 : X_BUF
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
  ProtoComp62_IMUX_3 : X_BUF
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
  ProtoComp62_IMUX_4 : X_BUF
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
  ProtoComp62_IMUX_5 : X_BUF
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
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => clr_IBUF_21,
      I => clr
    );
  ProtoComp62_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD161",
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
  ProtoComp62_IMUX_7 : X_BUF
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
  ProtoComp62_IMUX_8 : X_BUF
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
  ProtoComp62_IMUX_9 : X_BUF
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
  ProtoComp62_IMUX_10 : X_BUF
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
  ProtoComp62_IMUX_11 : X_BUF
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
  ProtoComp62_IMUX_12 : X_BUF
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
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      O => command_1_IBUF_42,
      I => command(1)
    );
  ProtoComp62_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      I => command_1_IBUF_42,
      O => command_1_IBUF_0
    );
  nmi_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
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
  ProtoComp62_IMUX_14 : X_BUF
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
  ProtoComp62_IMUX_15 : X_BUF
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
  ProtoComp62_IMUX_16 : X_BUF
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
  ProtoComp62_IMUX_17 : X_BUF
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
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => start_IBUF_59,
      I => start
    );
  ProtoComp62_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD159",
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
  ProtoComp62_IMUX_19 : X_BUF
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
  ProtoComp62_IMUX_20 : X_BUF
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
      LOC => "PAD170"
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
  ProtoComp62_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_70,
      O => rst_IBUF_0
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
  main_counter_gen1_13_latch_q_main_counter_gen1_13_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N51_pack_7,
      O => N51
    );
  main_counter_n_7_11_SW6 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y8"
    )
    port map (
      IA => N60,
      IB => N61,
      O => N51_pack_7,
      SEL => main_counter_gen1_5_latch_q_846
    );
  main_counter_n_7_11_SW6_F : X_LUT6
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"FFFFFFFFFFFF33FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => main_counter_gen1_13_latch_q_840,
      ADR4 => clr_IBUF_0,
      ADR5 => start_IBUF_0,
      ADR3 => started_843,
      O => N60
    );
  main_counter_n_7_11_SW6_G : X_LUT6
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"FFFFFFFFFF8FFF7F"
    )
    port map (
      ADR4 => main_counter_gen1_13_latch_q_840,
      ADR1 => main_counter_gen1_1_latch_q_841,
      ADR0 => main_counter_d0_q_842,
      ADR2 => started_843,
      ADR5 => start_IBUF_0,
      ADR3 => clr_IBUF_0,
      O => N61
    );
  cmp_MIN_comparator_equal_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"8C002300008C0023"
    )
    port map (
      ADR4 => reg_file_MIN_reg_register_data(13),
      ADR3 => reg_file_MIN_reg_register_data(10),
      ADR0 => reg_file_MIN_reg_register_data(12),
      ADR1 => main_counter_gen1_13_latch_q_840,
      ADR5 => main_counter_gen1_10_latch_q_902,
      ADR2 => main_counter_gen1_12_latch_q_880,
      O => cmp_MIN_comparator_equal(0)
    );
  main_counter_gen1_13_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_13_latch_q_CLK,
      I => main_counter_n(13),
      O => main_counter_gen1_13_latch_q_840,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_13_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => X"0F270F0F0F0F0F0F"
    )
    port map (
      ADR0 => main_counter_gen1_6_latch_q_859,
      ADR2 => N50,
      ADR3 => N18,
      ADR4 => N10,
      ADR1 => N51,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(13)
    );
  main_counter_n_13_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => main_counter_gen1_10_latch_q_902,
      ADR2 => main_counter_gen1_8_latch_q_873,
      ADR3 => main_counter_gen1_9_latch_q_875,
      ADR1 => main_counter_gen1_7_latch_q_867,
      ADR4 => main_counter_gen1_12_latch_q_880,
      ADR5 => main_counter_gen1_11_latch_q_877,
      O => N18
    );
  nmi7 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => X"9000090000900009"
    )
    port map (
      ADR2 => reg_file_NMI_reg_register_data(15),
      ADR4 => main_counter_gen1_15_latch_q_891,
      ADR0 => reg_file_NMI_reg_register_data(14),
      ADR1 => main_counter_gen1_14_latch_q_847,
      ADR3 => reg_file_NMI_reg_register_data(3),
      ADR5 => main_counter_gen1_3_latch_q_888,
      O => nmi7_983
    );
  nmi6 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y10",
      INIT => X"8822441108020401"
    )
    port map (
      ADR1 => reg_file_NMI_reg_register_data(8),
      ADR3 => main_counter_gen1_8_latch_q_873,
      ADR5 => main_counter_gen1_12_latch_q_880,
      ADR2 => reg_file_NMI_reg_register_data(12),
      ADR0 => reg_file_NMI_reg_register_data(0),
      ADR4 => main_counter_d0_q_842,
      O => nmi6_982
    );
  reg_file_MIN_reg_register_data_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
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
  reg_file_MIN_reg_register_data_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y3",
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
      LOC => "SLICE_X1Y3",
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
      LOC => "SLICE_X1Y3",
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
  reg_file_NMI_reg_register_data_7 : X_FF
    generic map(
      LOC => "SLICE_X1Y5",
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
      LOC => "SLICE_X1Y5",
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
      LOC => "SLICE_X1Y5",
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
      LOC => "SLICE_X1Y5",
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
  nmi5 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y6",
      INIT => X"C000300000C00030"
    )
    port map (
      ADR0 => '1',
      ADR3 => reg_file_NMI_reg_register_data(7),
      ADR5 => main_counter_gen1_7_latch_q_867,
      ADR2 => started_843,
      ADR4 => reg_file_NMI_reg_register_data(6),
      ADR1 => main_counter_gen1_6_latch_q_859,
      O => nmi5_981
    );
  reg_file_NMI_reg_register_data_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y7",
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
  reg_file_NMI_reg_register_data_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y7",
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
  reg_file_NMI_reg_register_data_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y7",
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
      LOC => "SLICE_X1Y7",
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
  nmi2 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y7",
      INIT => X"80A0080A40500405"
    )
    port map (
      ADR2 => reg_file_NMI_reg_register_data(5),
      ADR4 => main_counter_gen1_5_latch_q_846,
      ADR1 => reg_file_NMI_reg_register_data(4),
      ADR3 => main_counter_gen1_4_latch_q_848,
      ADR0 => reg_file_NMI_reg_register_data(9),
      ADR5 => main_counter_gen1_9_latch_q_875,
      O => nmi2_977
    );
  reg_file_MIN_reg_register_data_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y8",
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
      LOC => "SLICE_X1Y8",
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
      LOC => "SLICE_X1Y8",
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
      LOC => "SLICE_X1Y8",
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
  nmi1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y8",
      INIT => X"AA0A220255051101"
    )
    port map (
      ADR3 => reg_file_NMI_reg_register_data(12),
      ADR2 => main_counter_gen1_12_latch_q_880,
      ADR4 => main_counter_gen1_4_latch_q_848,
      ADR1 => reg_file_NMI_reg_register_data(4),
      ADR0 => reg_file_NMI_reg_register_data(1),
      ADR5 => main_counter_gen1_1_latch_q_841,
      O => nmi1_975
    );
  reg_file_NMI_reg_register_data_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y9",
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
      LOC => "SLICE_X1Y9",
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
      LOC => "SLICE_X1Y9",
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
      LOC => "SLICE_X1Y9",
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
  nmi3 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y9",
      INIT => X"8400210000840021"
    )
    port map (
      ADR4 => reg_file_NMI_reg_register_data(11),
      ADR1 => main_counter_gen1_11_latch_q_877,
      ADR5 => reg_file_NMI_reg_register_data(10),
      ADR3 => main_counter_gen1_10_latch_q_902,
      ADR0 => reg_file_NMI_reg_register_data(13),
      ADR2 => main_counter_gen1_13_latch_q_840,
      O => nmi3_978
    );
  reset_OBUF_reset_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => nmi4_pack_1,
      O => nmi4_995
    );
  reset1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y10",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => out_rst_d1_q_870,
      ADR4 => started_843,
      ADR5 => '1',
      O => reset_OBUF_991
    );
  nmi4 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y10",
      INIT => X"20002000"
    )
    port map (
      ADR0 => nmi1_975,
      ADR3 => nmi2_977,
      ADR2 => nmi3_978,
      ADR1 => out_rst_d1_q_870,
      ADR4 => '1',
      O => nmi4_pack_1
    );
  nmi8 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y10",
      INIT => X"8000400000000000"
    )
    port map (
      ADR5 => nmi7_983,
      ADR2 => nmi4_995,
      ADR1 => nmi5_981,
      ADR3 => nmi6_982,
      ADR0 => reg_file_NMI_reg_register_data(2),
      ADR4 => main_counter_gen1_2_latch_q_887,
      O => nmi_OBUF_990
    );
  started_started_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N53,
      O => N53_0
    );
  started_started_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_write_to(2),
      O => reg_file_write_to_2_0
    );
  started_started_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_write_to(0),
      O => reg_file_write_to_0_0
    );
  main_counter_n_7_11_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"FFF7FFF7FFF7FFF7"
    )
    port map (
      ADR4 => '1',
      ADR0 => main_counter_gen1_13_latch_q_840,
      ADR3 => clr_IBUF_0,
      ADR2 => start_IBUF_0,
      ADR1 => started_843,
      ADR5 => '1',
      O => N50
    );
  main_counter_n_7_11_SW7 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"FFF3FFFF"
    )
    port map (
      ADR4 => main_counter_gen1_14_latch_q_847,
      ADR0 => '1',
      ADR3 => clr_IBUF_0,
      ADR2 => start_IBUF_0,
      ADR1 => started_843,
      O => N53
    );
  reg_file_write_to_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"0A000A000A000A00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => started_843,
      ADR0 => command_1_IBUF_0,
      ADR3 => command_0_IBUF_0,
      ADR5 => '1',
      O => reg_file_write_to(3)
    );
  reg_file_write_to_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"000A000A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => started_843,
      ADR0 => command_1_IBUF_0,
      ADR3 => command_0_IBUF_0,
      O => reg_file_write_to(2)
    );
  reg_file_write_to_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"0505000005050000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => started_843,
      ADR4 => command_0_IBUF_0,
      ADR2 => command_1_IBUF_0,
      ADR5 => '1',
      O => reg_file_write_to(1)
    );
  reg_file_write_to_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"00000505"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => started_843,
      ADR4 => command_0_IBUF_0,
      ADR2 => command_1_IBUF_0,
      O => reg_file_write_to(0)
    );
  started : X_SFF
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_started_CLK,
      I => started_glue_set_263,
      O => started_843,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  started_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => started_843,
      ADR3 => '1',
      ADR4 => start_IBUF_0,
      O => started_glue_set_263
    );
  out_rst_delta_1_6 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"8484008421210021"
    )
    port map (
      ADR1 => reg_file_MAX_reg_register_data(13),
      ADR2 => reg_file_MAX_reg_register_data(8),
      ADR4 => reg_file_MAX_reg_register_data(12),
      ADR5 => main_counter_gen1_13_latch_q_840,
      ADR3 => main_counter_gen1_12_latch_q_880,
      ADR0 => main_counter_gen1_8_latch_q_873,
      O => out_rst_delta_1_6_955
    );
  cmp_MIN_comparator_equal_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"80C0080C20300203"
    )
    port map (
      ADR2 => reg_file_MIN_reg_register_data(8),
      ADR5 => reg_file_MIN_reg_register_data(9),
      ADR0 => reg_file_MIN_reg_register_data(4),
      ADR1 => main_counter_gen1_9_latch_q_875,
      ADR4 => main_counter_gen1_8_latch_q_873,
      ADR3 => main_counter_gen1_4_latch_q_848,
      O => cmp_MIN_comparator_equal_0_4_910
    );
  main_counter_gen1_9_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_9_latch_q_CLK,
      I => main_counter_n(9),
      O => main_counter_gen1_9_latch_q_875,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_9_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"060C0C0C0C0C0C0C"
    )
    port map (
      ADR5 => main_counter_gen1_7_latch_q_867,
      ADR0 => N44_0,
      ADR2 => count_refresh,
      ADR1 => main_counter_gen1_9_latch_q_875,
      ADR3 => N10,
      ADR4 => count_trigger,
      O => main_counter_n(9)
    );
  main_counter_gen1_8_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_8_latch_q_CLK,
      I => main_counter_n(8),
      O => main_counter_gen1_8_latch_q_873,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"2333333310000000"
    )
    port map (
      ADR2 => main_counter_gen1_7_latch_q_867,
      ADR0 => N42,
      ADR1 => count_refresh,
      ADR5 => main_counter_gen1_8_latch_q_873,
      ADR3 => N10,
      ADR4 => count_trigger,
      O => main_counter_n(8)
    );
  reg_file_MIN_reg_register_data_3_reg_file_MIN_reg_register_data_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N44,
      O => N44_0
    );
  reg_file_MIN_reg_register_data_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y3",
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
  main_counter_n_7_11_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => main_counter_gen1_9_latch_q_875,
      ADR2 => main_counter_gen1_7_latch_q_867,
      ADR3 => main_counter_gen1_6_latch_q_859,
      ADR4 => main_counter_gen1_5_latch_q_846,
      ADR5 => main_counter_d0_q_842,
      ADR1 => main_counter_gen1_1_latch_q_841,
      O => N56
    );
  reg_file_MIN_reg_register_data_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y3",
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
      LOC => "SLICE_X2Y3",
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
      LOC => "SLICE_X2Y3",
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
  main_counter_n_7_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"77FFFFFF77FFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => main_counter_gen1_6_latch_q_859,
      ADR4 => main_counter_gen1_5_latch_q_846,
      ADR0 => main_counter_d0_q_842,
      ADR3 => main_counter_gen1_1_latch_q_841,
      ADR5 => '1',
      O => N42
    );
  main_counter_n_7_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"80000000"
    )
    port map (
      ADR2 => main_counter_gen1_8_latch_q_873,
      ADR1 => main_counter_gen1_6_latch_q_859,
      ADR4 => main_counter_gen1_5_latch_q_846,
      ADR0 => main_counter_d0_q_842,
      ADR3 => main_counter_gen1_1_latch_q_841,
      O => N44
    );
  main_counter_gen1_11_latch_q_main_counter_gen1_11_latch_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => main_counter_d0_q_pack_7,
      O => main_counter_d0_q_842
    );
  cmp_MIN_comparator_equal_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"8008A00A40045005"
    )
    port map (
      ADR5 => reg_file_MIN_reg_register_data(11),
      ADR2 => reg_file_MIN_reg_register_data(0),
      ADR4 => reg_file_MIN_reg_register_data(12),
      ADR0 => main_counter_gen1_11_latch_q_877,
      ADR1 => main_counter_gen1_12_latch_q_880,
      ADR3 => main_counter_d0_q_842,
      O => cmp_MIN_comparator_equal_0_1_903
    );
  out_rst_delta_1_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"9000090000900009"
    )
    port map (
      ADR0 => reg_file_MAX_reg_register_data(0),
      ADR3 => reg_file_MAX_reg_register_data(10),
      ADR4 => reg_file_MAX_reg_register_data(11),
      ADR5 => main_counter_gen1_10_latch_q_902,
      ADR2 => main_counter_gen1_11_latch_q_877,
      ADR1 => main_counter_d0_q_842,
      O => out_rst_delta_1_3_935
    );
  count_refresh1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"FFCFFFCFFFCFFFCF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => clr_IBUF_0,
      ADR3 => start_IBUF_0,
      ADR2 => started_843,
      ADR5 => '1',
      O => count_refresh
    );
  main_counter_n_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"00100020"
    )
    port map (
      ADR0 => main_counter_d0_q_842,
      ADR4 => PSreg_to_ps(3),
      ADR1 => clr_IBUF_0,
      ADR3 => start_IBUF_0,
      ADR2 => started_843,
      O => main_counter_n(0)
    );
  main_counter_d0_q : X_FF
    generic map(
      LOC => "SLICE_X2Y4",
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
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_11_latch_q_CLK,
      I => main_counter_n(11),
      O => main_counter_gen1_11_latch_q_877,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"0000C9CC0000CCCC"
    )
    port map (
      ADR4 => count_refresh,
      ADR3 => N10,
      ADR0 => N24_0,
      ADR1 => main_counter_gen1_11_latch_q_877,
      ADR2 => N56,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(11)
    );
  reg_file_MIN_reg_register_data_7_reg_file_MIN_reg_register_data_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  reg_file_MIN_reg_register_data_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y5",
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
  out_rst_delta_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"8241000000008241"
    )
    port map (
      ADR3 => reg_file_MAX_reg_register_data(9),
      ADR4 => reg_file_MAX_reg_register_data(6),
      ADR1 => reg_file_MAX_reg_register_data(7),
      ADR0 => main_counter_gen1_9_latch_q_875,
      ADR2 => main_counter_gen1_7_latch_q_867,
      ADR5 => main_counter_gen1_6_latch_q_859,
      O => out_rst_delta_1_2_996
    );
  reg_file_MIN_reg_register_data_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y5",
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
  out_rst_delta_1_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"00000000F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => out_rst_d1_q_870,
      ADR4 => out_rst_delta_1_3_935,
      ADR2 => out_rst_delta_1_1_924,
      ADR3 => out_rst_delta_1_2_996,
      O => out_rst_delta_1_4_934
    );
  reg_file_MIN_reg_register_data_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y5",
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
      LOC => "SLICE_X2Y5",
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
  main_counter_n_9_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"3FFF3FFF3FFF3FFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => main_counter_gen1_11_latch_q_877,
      ADR1 => main_counter_gen1_10_latch_q_902,
      ADR3 => main_counter_gen1_8_latch_q_873,
      ADR5 => '1',
      O => N22
    );
  main_counter_n_9_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"33FF33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => main_counter_gen1_10_latch_q_902,
      ADR3 => main_counter_gen1_8_latch_q_873,
      O => N24
    );
  out_rst_delta_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"8484A5A5008400A5"
    )
    port map (
      ADR2 => reg_file_MAX_reg_register_data(5),
      ADR5 => reg_file_MAX_reg_register_data(4),
      ADR4 => reg_file_MAX_reg_register_data(12),
      ADR3 => main_counter_gen1_4_latch_q_848,
      ADR1 => main_counter_gen1_12_latch_q_880,
      ADR0 => main_counter_gen1_5_latch_q_846,
      O => out_rst_delta_1_1_924
    );
  main_counter_gen1_12_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_12_latch_q_CLK,
      I => main_counter_n(12),
      O => main_counter_gen1_12_latch_q_880,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"5455010055550000"
    )
    port map (
      ADR0 => count_refresh,
      ADR3 => N10,
      ADR2 => N22,
      ADR4 => main_counter_gen1_12_latch_q_880,
      ADR1 => N56,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(12)
    );
  main_counter_gen1_4_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_4_latch_q_CLK,
      I => main_counter_n(4),
      O => main_counter_gen1_4_latch_q_848,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"1222222222222222"
    )
    port map (
      ADR3 => main_counter_gen1_3_latch_q_888,
      ADR5 => main_counter_d0_q_842,
      ADR2 => N26_0,
      ADR0 => main_counter_gen1_4_latch_q_848,
      ADR1 => count_refresh,
      ADR4 => count_trigger,
      O => main_counter_n(4)
    );
  main_counter_gen1_5_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_5_latch_q_CLK,
      I => main_counter_n(5),
      O => main_counter_gen1_5_latch_q_846,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"1555555540000000"
    )
    port map (
      ADR1 => main_counter_gen1_4_latch_q_848,
      ADR3 => main_counter_d0_q_842,
      ADR2 => N28_0,
      ADR5 => main_counter_gen1_5_latch_q_846,
      ADR0 => count_refresh,
      ADR4 => count_trigger,
      O => main_counter_n(5)
    );
  main_counter_gen1_7_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_7_latch_q_CLK,
      I => main_counter_n(7),
      O => main_counter_gen1_7_latch_q_867,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_7_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"007F00FF00800000"
    )
    port map (
      ADR2 => main_counter_gen1_6_latch_q_859,
      ADR0 => N40,
      ADR3 => count_refresh,
      ADR5 => main_counter_gen1_7_latch_q_867,
      ADR1 => N10,
      ADR4 => count_trigger,
      O => main_counter_n(7)
    );
  out_rst_d0_q : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_out_rst_d0_q_CLK,
      I => out_rst_delta(0),
      O => out_rst_d0_q_869,
      RST => rst_IBUF_0,
      SET => GND
    );
  out_rst_delta_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"000FF0FFFAFAFAFA"
    )
    port map (
      ADR1 => '1',
      ADR4 => start_IBUF_0,
      ADR3 => clr_IBUF_0,
      ADR5 => out_rst_d0_q_869,
      ADR2 => out_rst_d1_q_870,
      ADR0 => eq(0),
      O => out_rst_delta(0)
    );
  cmp_MIN_comparator_equal_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"8400210000840021"
    )
    port map (
      ADR1 => reg_file_MIN_reg_register_data(6),
      ADR0 => reg_file_MIN_reg_register_data(7),
      ADR3 => reg_file_MIN_reg_register_data(2),
      ADR5 => main_counter_gen1_2_latch_q_887,
      ADR2 => main_counter_gen1_7_latch_q_867,
      ADR4 => main_counter_gen1_6_latch_q_859,
      O => cmp_MIN_comparator_equal_0_2_997
    );
  cmp_MIN_comparator_equal_0_7 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => cmp_MIN_comparator_equal_0_3_909,
      ADR5 => cmp_MIN_comparator_equal(0),
      ADR2 => cmp_MIN_comparator_equal_0_1_903,
      ADR3 => cmp_MIN_comparator_equal_0_4_910,
      ADR0 => cmp_MIN_comparator_equal_0_5_911,
      ADR4 => cmp_MIN_comparator_equal_0_2_997,
      O => eq(0)
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
      LOC => "SLICE_X2Y8"
    )
    port map (
      IA => N62,
      IB => N63,
      O => N54_pack_7,
      SEL => main_counter_gen1_5_latch_q_846
    );
  main_counter_n_7_11_SW8_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"FFF3FFFFFFF3FFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => main_counter_gen1_14_latch_q_847,
      ADR2 => clr_IBUF_0,
      ADR3 => start_IBUF_0,
      ADR4 => started_843,
      O => N62
    );
  main_counter_n_7_11_SW8_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"FEFFFDFFFCFFFFFF"
    )
    port map (
      ADR4 => main_counter_gen1_14_latch_q_847,
      ADR0 => main_counter_gen1_1_latch_q_841,
      ADR5 => main_counter_d0_q_842,
      ADR3 => started_843,
      ADR1 => start_IBUF_0,
      ADR2 => clr_IBUF_0,
      O => N63
    );
  cmp_MIN_comparator_equal_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"8200410000820041"
    )
    port map (
      ADR0 => reg_file_MIN_reg_register_data(3),
      ADR2 => reg_file_MIN_reg_register_data(14),
      ADR5 => reg_file_MIN_reg_register_data(15),
      ADR3 => main_counter_gen1_15_latch_q_891,
      ADR1 => main_counter_gen1_14_latch_q_847,
      ADR4 => main_counter_gen1_3_latch_q_888,
      O => cmp_MIN_comparator_equal_0_3_909
    );
  main_counter_gen1_14_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_14_latch_q_CLK,
      I => main_counter_n(14),
      O => main_counter_gen1_14_latch_q_847,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_14_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"10BF00FF00FF00FF"
    )
    port map (
      ADR2 => main_counter_gen1_6_latch_q_859,
      ADR3 => N53_0,
      ADR4 => N10,
      ADR1 => N54,
      ADR0 => N20,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(14)
    );
  main_counter_gen1_2_latch_q_main_counter_gen1_2_latch_q_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  main_counter_gen1_2_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_2_latch_q_CLK,
      I => main_counter_n(2),
      O => main_counter_gen1_2_latch_q_887,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_2_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"00007F8000007F80"
    )
    port map (
      ADR1 => main_counter_gen1_1_latch_q_841,
      ADR0 => main_counter_d0_q_842,
      ADR4 => count_refresh,
      ADR3 => main_counter_gen1_2_latch_q_887,
      ADR2 => count_trigger,
      ADR5 => '1',
      O => main_counter_n(2)
    );
  main_counter_n_2_11_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"CC00CC00"
    )
    port map (
      ADR1 => main_counter_gen1_1_latch_q_841,
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => main_counter_gen1_2_latch_q_887,
      ADR4 => '1',
      O => N26
    );
  reg_file_NMI_reg_register_data_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
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
  reg_file_NMI_reg_register_data_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
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
  reg_file_NMI_reg_register_data_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
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
      LOC => "SLICE_X2Y10",
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
  reg_file_MAX_reg_register_data_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y4",
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
      LOC => "SLICE_X3Y4",
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
      LOC => "SLICE_X3Y4",
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
      LOC => "SLICE_X3Y4",
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
  reg_file_MAX_reg_register_data_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
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
      LOC => "SLICE_X3Y5",
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
      LOC => "SLICE_X3Y5",
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
      LOC => "SLICE_X3Y5",
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
  main_counter_n_7_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => X"F000F00000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => main_counter_gen1_5_latch_q_846,
      ADR2 => main_counter_d0_q_842,
      ADR5 => main_counter_gen1_1_latch_q_841,
      O => N40
    );
  out_rst_delta_1_8 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"80A0000000000000"
    )
    port map (
      ADR3 => reg_file_MAX_reg_register_data(4),
      ADR1 => main_counter_gen1_4_latch_q_848,
      ADR2 => out_rst_delta_1_7_960,
      ADR0 => out_rst_delta_1_5_950,
      ADR5 => out_rst_delta_1_6_955,
      ADR4 => out_rst_delta_1_4_934,
      O => out_rst_delta_1_8_1000
    );
  out_rst_d1_q : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_out_rst_d1_q_CLK,
      I => out_rst_delta(1),
      O => out_rst_d1_q_870,
      RST => rst_IBUF_0,
      SET => GND
    );
  out_rst_delta_1_9 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"FFFFFFFF4544CDCC"
    )
    port map (
      ADR0 => out_rst_d0_q_869,
      ADR2 => eq(0),
      ADR3 => clr_IBUF_0,
      ADR1 => out_rst_d1_q_870,
      ADR4 => start_IBUF_0,
      ADR5 => out_rst_delta_1_8_1000,
      O => out_rst_delta(1)
    );
  main_counter_n_13_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"7FFF7FFFFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR5 => main_counter_gen1_14_latch_q_847,
      ADR1 => main_counter_gen1_13_latch_q_840,
      ADR0 => main_counter_gen1_11_latch_q_877,
      ADR3 => main_counter_gen1_12_latch_q_880,
      ADR2 => main_counter_gen1_7_latch_q_867,
      O => N16
    );
  main_counter_n_7_11_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => X"0000800000000000"
    )
    port map (
      ADR5 => main_counter_gen1_9_latch_q_875,
      ADR2 => main_counter_gen1_6_latch_q_859,
      ADR1 => main_counter_gen1_5_latch_q_846,
      ADR3 => main_counter_gen1_1_latch_q_841,
      ADR0 => main_counter_d0_q_842,
      ADR4 => N16,
      O => N48
    );
  out_rst_delta_1_7 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"8400210000840021"
    )
    port map (
      ADR5 => reg_file_MAX_reg_register_data(15),
      ADR3 => main_counter_gen1_15_latch_q_891,
      ADR4 => reg_file_MAX_reg_register_data(14),
      ADR1 => main_counter_gen1_14_latch_q_847,
      ADR2 => reg_file_MAX_reg_register_data(1),
      ADR0 => main_counter_gen1_1_latch_q_841,
      O => out_rst_delta_1_7_960
    );
  cmp_MIN_comparator_equal_0_6 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"8282008241410041"
    )
    port map (
      ADR1 => reg_file_MIN_reg_register_data(5),
      ADR0 => reg_file_MIN_reg_register_data(1),
      ADR3 => reg_file_MIN_reg_register_data(4),
      ADR4 => main_counter_gen1_4_latch_q_848,
      ADR2 => main_counter_gen1_5_latch_q_846,
      ADR5 => main_counter_gen1_1_latch_q_841,
      O => cmp_MIN_comparator_equal_0_5_911
    );
  main_counter_gen1_15_latch_q : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_15_latch_q_CLK,
      I => main_counter_n(15),
      O => main_counter_gen1_15_latch_q_891,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_15_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"1555400055550000"
    )
    port map (
      ADR3 => N8,
      ADR0 => count_refresh,
      ADR1 => N10,
      ADR4 => main_counter_gen1_15_latch_q_891,
      ADR2 => N48,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(15)
    );
  main_counter_gen1_1_latch_q : X_FF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_1_latch_q_CLK,
      I => main_counter_n(1),
      O => main_counter_gen1_1_latch_q_841,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"0100100010001000"
    )
    port map (
      ADR0 => clr_IBUF_0,
      ADR1 => start_IBUF_0,
      ADR3 => started_843,
      ADR2 => main_counter_gen1_1_latch_q_841,
      ADR4 => main_counter_d0_q_842,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(1)
    );
  main_counter_n_9_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => main_counter_gen1_10_latch_q_902,
      ADR0 => main_counter_gen1_8_latch_q_873,
      O => N8
    );
  main_counter_n_13_11_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => main_counter_gen1_13_latch_q_840,
      ADR2 => main_counter_gen1_11_latch_q_877,
      ADR0 => main_counter_gen1_9_latch_q_875,
      ADR3 => main_counter_gen1_12_latch_q_880,
      ADR5 => main_counter_gen1_7_latch_q_867,
      ADR4 => N8,
      O => N20
    );
  main_counter_n_7_11_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => main_counter_gen1_7_latch_q_867,
      ADR4 => main_counter_gen1_6_latch_q_859,
      ADR2 => main_counter_gen1_5_latch_q_846,
      ADR3 => main_counter_d0_q_842,
      ADR5 => main_counter_gen1_8_latch_q_873,
      ADR1 => main_counter_gen1_1_latch_q_841,
      O => N46
    );
  reg_file_PS_reg_register_data_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_0_0,
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_3_IN,
      O => reg_file_PS_reg_register_data(3),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_PS_reg_register_data_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_0_0,
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_2_IN,
      O => reg_file_PS_reg_register_data(2),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_PS_reg_register_data_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_0_0,
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_1_IN,
      O => reg_file_PS_reg_register_data(1),
      RST => rst_IBUF_0,
      SET => GND
    );
  reg_file_PS_reg_register_data_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_0_0,
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_0_IN,
      O => reg_file_PS_reg_register_data(0),
      RST => rst_IBUF_0,
      SET => GND
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
      LOC => "SLICE_X4Y6",
      INIT => X"8000000000000000"
    )
    port map (
      ADR5 => main_counter_d0_q_842,
      ADR3 => main_counter_gen1_1_latch_q_841,
      ADR2 => main_counter_gen1_2_latch_q_887,
      ADR1 => main_counter_gen1_3_latch_q_888,
      ADR0 => main_counter_gen1_4_latch_q_848,
      ADR4 => main_counter_gen1_5_latch_q_846,
      O => N66
    );
  main_counter_n_2_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"CC000000CC000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => main_counter_gen1_4_latch_q_848,
      ADR4 => main_counter_gen1_3_latch_q_888,
      ADR1 => main_counter_gen1_2_latch_q_887,
      ADR5 => '1',
      O => N10
    );
  main_counter_n_2_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => main_counter_gen1_1_latch_q_841,
      ADR3 => '1',
      ADR4 => main_counter_gen1_3_latch_q_888,
      ADR1 => main_counter_gen1_2_latch_q_887,
      O => N28
    );
  out_rst_delta_1_5 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"C30000000000C300"
    )
    port map (
      ADR0 => '1',
      ADR4 => reg_file_MAX_reg_register_data(2),
      ADR2 => reg_file_MAX_reg_register_data(3),
      ADR3 => out_rst_d0_q_869,
      ADR1 => main_counter_gen1_3_latch_q_888,
      ADR5 => main_counter_gen1_2_latch_q_887,
      O => out_rst_delta_1_5_950
    );
  main_counter_gen1_3_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_3_latch_q_CLK,
      I => main_counter_n(3),
      O => main_counter_gen1_3_latch_q_888,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"007F008000FF0000"
    )
    port map (
      ADR1 => main_counter_gen1_2_latch_q_887,
      ADR5 => main_counter_gen1_1_latch_q_841,
      ADR0 => main_counter_d0_q_842,
      ADR4 => main_counter_gen1_3_latch_q_888,
      ADR3 => count_refresh,
      ADR2 => count_trigger,
      O => main_counter_n(3)
    );
  prsclr_counter_inst_gen1_6_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK,
      I => prsclr_counter_inst_n(6),
      O => prsclr_counter_inst_gen1_6_latch_q_923,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"0000FF7F00000080"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_5_latch_q_889,
      ADR0 => prsclr_counter_inst_gen1_4_latch_q_883,
      ADR2 => prsclr_counter_inst_gen1_3_latch_q_884,
      ADR5 => prsclr_counter_inst_gen1_6_latch_q_923,
      ADR3 => prsclr_counter_inst_n_3_1,
      ADR4 => count_trigger,
      O => prsclr_counter_inst_n(6)
    );
  PSreg_to_ps_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      ADR1 => reg_file_PS_reg_register_data(3),
      ADR0 => reg_file_PS_reg_register_data(2),
      ADR2 => prsclr_counter_inst_gen1_10_latch_q_862,
      ADR4 => N12,
      ADR5 => prsclr_Mmux_clk_enable_s_6_922,
      ADR3 => prsclr_Mmux_clk_enable_s_7_933,
      O => count_trigger
    );
  prsclr_counter_inst_n_7_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"33FFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => prsclr_counter_inst_gen1_3_latch_q_884,
      ADR1 => prsclr_counter_inst_gen1_4_latch_q_883,
      ADR5 => prsclr_counter_inst_gen1_5_latch_q_889,
      ADR4 => prsclr_counter_inst_gen1_6_latch_q_923,
      O => N64
    );
  prsclr_Mmux_clk_enable_s_6 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"FCFC0C0CFA0AFA0A"
    )
    port map (
      ADR2 => reg_file_PS_reg_register_data(1),
      ADR5 => reg_file_PS_reg_register_data(0),
      ADR3 => prsclr_counter_inst_gen1_6_latch_q_923,
      ADR4 => prsclr_counter_inst_gen1_7_latch_q_856,
      ADR1 => prsclr_counter_inst_gen1_5_latch_q_889,
      ADR0 => prsclr_counter_inst_gen1_4_latch_q_883,
      O => prsclr_Mmux_clk_enable_s_6_922
    );
  prsclr_counter_inst_gen1_5_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_5_latch_q_CLK,
      I => prsclr_counter_inst_n(5),
      O => prsclr_counter_inst_gen1_5_latch_q_889,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"00000000F0F07878"
    )
    port map (
      ADR3 => '1',
      ADR0 => prsclr_counter_inst_gen1_4_latch_q_883,
      ADR1 => prsclr_counter_inst_gen1_3_latch_q_884,
      ADR2 => prsclr_counter_inst_gen1_5_latch_q_889,
      ADR4 => prsclr_counter_inst_n_3_1,
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(5)
    );
  prsclr_counter_inst_gen1_4_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_4_latch_q_CLK,
      I => prsclr_counter_inst_n(4),
      O => prsclr_counter_inst_gen1_4_latch_q_883,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"000000007FFF8000"
    )
    port map (
      ADR0 => prsclr_counter_inst_gen1_2_latch_q_853,
      ADR2 => prsclr_counter_inst_gen1_1_latch_q_854,
      ADR3 => prsclr_counter_inst_d0_q_855,
      ADR4 => prsclr_counter_inst_gen1_4_latch_q_883,
      ADR1 => prsclr_counter_inst_gen1_3_latch_q_884,
      ADR5 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(4)
    );
  prsclr_counter_inst_gen1_2_latch_q_prsclr_counter_inst_gen1_2_latch_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => prsclr_counter_inst_gen1_3_latch_q_pack_9,
      O => prsclr_counter_inst_gen1_3_latch_q_884
    );
  prsclr_Mmux_clk_enable_s_7 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"CCAACCAAF0FFF000"
    )
    port map (
      ADR5 => reg_file_PS_reg_register_data(0),
      ADR3 => reg_file_PS_reg_register_data(1),
      ADR2 => prsclr_counter_inst_gen1_2_latch_q_853,
      ADR0 => prsclr_counter_inst_gen1_1_latch_q_854,
      ADR4 => prsclr_counter_inst_d0_q_855,
      ADR1 => prsclr_counter_inst_gen1_3_latch_q_884,
      O => prsclr_Mmux_clk_enable_s_7_933
    );
  prsclr_counter_inst_gen1_2_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_2_latch_q_CLK,
      I => prsclr_counter_inst_n(2),
      O => prsclr_counter_inst_gen1_2_latch_q_853,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"00000FF00000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => prsclr_counter_inst_gen1_1_latch_q_854,
      ADR3 => prsclr_counter_inst_gen1_2_latch_q_853,
      ADR5 => prsclr_counter_inst_d0_q_855,
      ADR4 => count_trigger,
      O => prsclr_counter_inst_n(2)
    );
  prsclr_counter_inst_n_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"0FFFFFFF0FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => prsclr_counter_inst_gen1_2_latch_q_853,
      ADR4 => prsclr_counter_inst_gen1_1_latch_q_854,
      ADR3 => prsclr_counter_inst_d0_q_855,
      ADR5 => '1',
      O => prsclr_counter_inst_n_3_1
    );
  prsclr_counter_inst_n_3_2 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"12222222"
    )
    port map (
      ADR0 => prsclr_counter_inst_gen1_3_latch_q_884,
      ADR1 => PSreg_to_ps(3),
      ADR2 => prsclr_counter_inst_gen1_2_latch_q_853,
      ADR4 => prsclr_counter_inst_gen1_1_latch_q_854,
      ADR3 => prsclr_counter_inst_d0_q_855,
      O => prsclr_counter_inst_n(3)
    );
  prsclr_counter_inst_gen1_3_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y19",
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
      LOC => "SLICE_X4Y19",
      INIT => X"F7FFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_7_latch_q_856,
      ADR0 => prsclr_counter_inst_gen1_6_latch_q_923,
      ADR4 => prsclr_counter_inst_gen1_5_latch_q_889,
      ADR5 => prsclr_counter_inst_gen1_4_latch_q_883,
      ADR3 => prsclr_counter_inst_gen1_3_latch_q_884,
      ADR2 => prsclr_counter_inst_n_3_1,
      O => prsclr_counter_inst_n_8_1_863
    );
  prsclr_counter_inst_gen1_1_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_1_latch_q_CLK,
      I => prsclr_counter_inst_n(1),
      O => prsclr_counter_inst_gen1_1_latch_q_854,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"000033330000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => prsclr_counter_inst_gen1_1_latch_q_854,
      ADR1 => prsclr_counter_inst_d0_q_855,
      ADR4 => count_trigger,
      O => prsclr_counter_inst_n(1)
    );
  prsclr_counter_inst_d0_q : X_FF
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_d0_q_CLK,
      I => prsclr_counter_inst_n(0),
      O => prsclr_counter_inst_d0_q_855,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"FFFF5555FFFF5555"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => prsclr_counter_inst_d0_q_855,
      ADR5 => '1',
      ADR4 => count_trigger,
      O => prsclr_counter_inst_n(0)
    );
  prsclr_counter_inst_gen1_8_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK,
      I => prsclr_counter_inst_n(8),
      O => prsclr_counter_inst_gen1_8_latch_q_861,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"0000F0F000000088"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_7_latch_q_856,
      ADR0 => N34_0,
      ADR3 => prsclr_counter_inst_n_3_1,
      ADR5 => prsclr_counter_inst_gen1_8_latch_q_861,
      ADR2 => prsclr_counter_inst_n_8_1_863,
      ADR4 => count_trigger,
      O => prsclr_counter_inst_n(8)
    );
  main_counter_gen1_6_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_6_latch_q_CLK,
      I => main_counter_n(6),
      O => main_counter_gen1_6_latch_q_859,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => X"0111000010000000"
    )
    port map (
      ADR1 => start_IBUF_0,
      ADR0 => clr_IBUF_0,
      ADR4 => started_843,
      ADR5 => main_counter_gen1_6_latch_q_859,
      ADR3 => N66,
      ADR2 => PSreg_to_ps(3),
      O => main_counter_n(6)
    );
  prsclr_counter_inst_gen1_7_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_7_latch_q_CLK,
      I => prsclr_counter_inst_n(7),
      O => prsclr_counter_inst_gen1_7_latch_q_856,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => X"5104550055005500"
    )
    port map (
      ADR5 => prsclr_counter_inst_gen1_2_latch_q_853,
      ADR1 => prsclr_counter_inst_gen1_1_latch_q_854,
      ADR4 => prsclr_counter_inst_d0_q_855,
      ADR3 => prsclr_counter_inst_gen1_7_latch_q_856,
      ADR2 => N64,
      ADR0 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(7)
    );
  main_counter_gen1_10_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_10_latch_q_CLK,
      I => main_counter_n(10),
      O => main_counter_gen1_10_latch_q_902,
      RST => rst_IBUF_0,
      SET => GND
    );
  main_counter_n_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => X"00000000BFFF4000"
    )
    port map (
      ADR2 => main_counter_gen1_9_latch_q_875,
      ADR0 => N46,
      ADR5 => count_refresh,
      ADR4 => main_counter_gen1_10_latch_q_902,
      ADR1 => N10,
      ADR3 => PSreg_to_ps(3),
      O => main_counter_n(10)
    );
  PSreg_to_ps_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => X"BF8FBC8CB383B080"
    )
    port map (
      ADR2 => reg_file_PS_reg_register_data(3),
      ADR1 => reg_file_PS_reg_register_data(2),
      ADR0 => prsclr_counter_inst_gen1_10_latch_q_862,
      ADR3 => N12,
      ADR5 => prsclr_Mmux_clk_enable_s_6_922,
      ADR4 => prsclr_Mmux_clk_enable_s_7_933,
      O => PSreg_to_ps(3)
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
      LOC => "SLICE_X5Y19",
      INIT => X"8000000080000000"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_7_latch_q_856,
      ADR0 => prsclr_counter_inst_gen1_6_latch_q_923,
      ADR3 => prsclr_counter_inst_gen1_5_latch_q_889,
      ADR2 => prsclr_counter_inst_gen1_4_latch_q_883,
      ADR4 => prsclr_counter_inst_gen1_3_latch_q_884,
      ADR5 => '1',
      O => N32
    );
  prsclr_counter_inst_n_7_21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"A0000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => prsclr_counter_inst_gen1_6_latch_q_923,
      ADR3 => prsclr_counter_inst_gen1_5_latch_q_889,
      ADR2 => prsclr_counter_inst_gen1_4_latch_q_883,
      ADR4 => prsclr_counter_inst_gen1_3_latch_q_884,
      O => N34
    );
  PSreg_to_ps_3_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"FFFF0000FA0AFA0A"
    )
    port map (
      ADR1 => '1',
      ADR5 => reg_file_PS_reg_register_data(1),
      ADR2 => reg_file_PS_reg_register_data(0),
      ADR3 => prsclr_counter_inst_gen1_9_latch_q_1002,
      ADR0 => prsclr_counter_inst_gen1_8_latch_q_861,
      ADR4 => prsclr_counter_inst_gen1_10_latch_q_862,
      O => N12
    );
  prsclr_counter_inst_gen1_10_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_10_latch_q_CLK,
      I => prsclr_counter_inst_n(10),
      O => prsclr_counter_inst_gen1_10_latch_q_862,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"5555000015154040"
    )
    port map (
      ADR3 => '1',
      ADR1 => prsclr_counter_inst_gen1_9_latch_q_1002,
      ADR2 => prsclr_counter_inst_gen1_8_latch_q_861,
      ADR4 => prsclr_counter_inst_gen1_10_latch_q_862,
      ADR5 => prsclr_counter_inst_n_8_1_863,
      ADR0 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(10)
    );
  prsclr_counter_inst_gen1_9_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_9_latch_q_CLK,
      I => prsclr_counter_inst_n(9),
      O => prsclr_counter_inst_gen1_9_latch_q_1002,
      RST => rst_IBUF_0,
      SET => GND
    );
  prsclr_counter_inst_n_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"00FF004000330040"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_8_latch_q_861,
      ADR2 => N32,
      ADR0 => prsclr_counter_inst_n_3_1,
      ADR4 => prsclr_counter_inst_gen1_9_latch_q_1002,
      ADR5 => prsclr_counter_inst_n_8_1_863,
      ADR3 => count_trigger,
      O => prsclr_counter_inst_n(9)
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
      I => nmi_OBUF_990,
      O => NlwBufferSignal_nmi_OBUF_I
    );
  NlwBufferBlock_reset_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reset_OBUF_991,
      O => NlwBufferSignal_reset_OBUF_I
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
  NlwBufferBlock_main_counter_gen1_13_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_13_latch_q_CLK
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
  NlwBufferBlock_started_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_started_CLK
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
  NlwBufferBlock_main_counter_gen1_14_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_14_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_2_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_2_latch_q_CLK
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
  NlwBufferBlock_out_rst_d1_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_out_rst_d1_q_CLK
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
  NlwBufferBlock_prsclr_counter_inst_gen1_6_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK
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
  NlwBufferBlock_prsclr_counter_inst_gen1_8_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK
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

