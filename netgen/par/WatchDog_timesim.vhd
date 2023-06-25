--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: WatchDog_timesim.vhd
-- /___/   /\     Timestamp: Sun Jun 25 21:40:23 2023
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
  signal clk_BUFGP : STD_LOGIC; 
  signal data_7_IBUF_0 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal main_counter_gen1_10_latch_q_853 : STD_LOGIC; 
  signal main_counter_gen1_12_latch_q_854 : STD_LOGIC; 
  signal main_counter_gen1_8_latch_q_855 : STD_LOGIC; 
  signal main_counter_gen1_7_latch_q_856 : STD_LOGIC; 
  signal main_counter_gen1_9_latch_q_857 : STD_LOGIC; 
  signal main_counter_gen1_11_latch_q_858 : STD_LOGIC; 
  signal data_8_IBUF_0 : STD_LOGIC; 
  signal data_9_IBUF_0 : STD_LOGIC; 
  signal command_1_IBUF_0 : STD_LOGIC; 
  signal started_864 : STD_LOGIC; 
  signal command_0_IBUF_0 : STD_LOGIC; 
  signal reg_file_write_to_2_0 : STD_LOGIC; 
  signal reg_file_write_to_0_0 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_7_latch_q_871 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_6_latch_q_872 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_5_latch_q_873 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_4_latch_q_874 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_3_latch_q_875 : STD_LOGIC; 
  signal N36_0 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal main_counter_d0_q_878 : STD_LOGIC; 
  signal main_counter_gen1_4_latch_q_879 : STD_LOGIC; 
  signal main_counter_gen1_3_latch_q_880 : STD_LOGIC; 
  signal main_counter_gen1_2_latch_q_881 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal main_counter_gen1_6_latch_q_883 : STD_LOGIC; 
  signal main_counter_gen1_5_latch_q_884 : STD_LOGIC; 
  signal N38_0 : STD_LOGIC; 
  signal count_refresh : STD_LOGIC; 
  signal clr_IBUF_0 : STD_LOGIC; 
  signal start_IBUF_0 : STD_LOGIC; 
  signal reset_OBUF_890 : STD_LOGIC; 
  signal nmi_output_0 : STD_LOGIC; 
  signal out_rst_d1_q_892 : STD_LOGIC; 
  signal nmi_OBUF_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N32_0 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal main_counter_gen1_14_latch_q_899 : STD_LOGIC; 
  signal main_counter_gen1_13_latch_q_900 : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42_0 : STD_LOGIC; 
  signal main_counter_gen1_1_latch_q_907 : STD_LOGIC; 
  signal main_counter_gen1_15_latch_q_923 : STD_LOGIC; 
  signal eq_0_0 : STD_LOGIC; 
  signal out_rst_d0_q_925 : STD_LOGIC; 
  signal eq_1_l1_0 : STD_LOGIC; 
  signal reg_file_NMI_reg_register_data_4_0 : STD_LOGIC; 
  signal reg_file_NMI_reg_register_data_5_0 : STD_LOGIC; 
  signal reg_file_NMI_reg_register_data_6_0 : STD_LOGIC; 
  signal reg_file_NMI_reg_register_data_7_0 : STD_LOGIC; 
  signal data_0_IBUF_0 : STD_LOGIC; 
  signal data_1_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal data_2_IBUF_0 : STD_LOGIC; 
  signal data_3_IBUF_0 : STD_LOGIC; 
  signal data_4_IBUF_0 : STD_LOGIC; 
  signal data_5_IBUF_0 : STD_LOGIC; 
  signal data_6_IBUF_0 : STD_LOGIC; 
  signal data_10_IBUF_0 : STD_LOGIC; 
  signal data_11_IBUF_0 : STD_LOGIC; 
  signal data_12_IBUF_0 : STD_LOGIC; 
  signal data_13_IBUF_0 : STD_LOGIC; 
  signal data_14_IBUF_0 : STD_LOGIC; 
  signal data_15_IBUF_0 : STD_LOGIC; 
  signal count_trigger : STD_LOGIC; 
  signal prsclr_counter_inst_n_3_1 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_10_latch_q_975 : STD_LOGIC; 
  signal prsclr_counter_inst_n_8_1_976 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_8_latch_q_977 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_9_latch_q_978 : STD_LOGIC; 
  signal prsclr_counter_inst_d0_q_979 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_1_latch_q_981 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_2_latch_q_983 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal prsclr_Mmux_clk_enable_s_6_990 : STD_LOGIC; 
  signal prsclr_Mmux_clk_enable_s_7_991 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal ProtoComp13_CYINITVCC_1 : STD_LOGIC; 
  signal out_rst_delta_0_1_lut : STD_LOGIC; 
  signal out_rst_delta_0_1_lut1_36 : STD_LOGIC; 
  signal ProtoComp15_CYINITVCC_1 : STD_LOGIC; 
  signal out_rst_delta_1_1_lut_100 : STD_LOGIC; 
  signal eq_1_l1 : STD_LOGIC; 
  signal ProtoComp17_CYINITVCC_1 : STD_LOGIC; 
  signal nmi_output : STD_LOGIC; 
  signal data_0_IBUF_168 : STD_LOGIC; 
  signal data_1_IBUF_171 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_174 : STD_LOGIC; 
  signal data_2_IBUF_177 : STD_LOGIC; 
  signal data_3_IBUF_180 : STD_LOGIC; 
  signal data_4_IBUF_183 : STD_LOGIC; 
  signal clr_IBUF_186 : STD_LOGIC; 
  signal data_5_IBUF_189 : STD_LOGIC; 
  signal data_6_IBUF_192 : STD_LOGIC; 
  signal data_7_IBUF_195 : STD_LOGIC; 
  signal data_8_IBUF_198 : STD_LOGIC; 
  signal data_9_IBUF_201 : STD_LOGIC; 
  signal command_0_IBUF_204 : STD_LOGIC; 
  signal command_1_IBUF_207 : STD_LOGIC; 
  signal data_10_IBUF_212 : STD_LOGIC; 
  signal data_11_IBUF_215 : STD_LOGIC; 
  signal data_12_IBUF_218 : STD_LOGIC; 
  signal data_13_IBUF_221 : STD_LOGIC; 
  signal start_IBUF_224 : STD_LOGIC; 
  signal data_14_IBUF_227 : STD_LOGIC; 
  signal data_15_IBUF_230 : STD_LOGIC; 
  signal rst_IBUF_235 : STD_LOGIC; 
  signal started_glue_set_305 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N52_pack_9 : STD_LOGIC; 
  signal nmi_OBUF_352 : STD_LOGIC; 
  signal data_7_IBUF_rt_376 : STD_LOGIC; 
  signal data_4_IBUF_rt_370 : STD_LOGIC; 
  signal data_5_IBUF_rt_365 : STD_LOGIC; 
  signal data_6_IBUF_rt_360 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N49_pack_12 : STD_LOGIC; 
  signal main_counter_d0_q_pack_10 : STD_LOGIC; 
  signal N26_pack_15 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal NlwBufferSignal_out_rst_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_nmi_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_reset_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_started_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_14_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_NMI_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_15_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_13_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_11_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MIN_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_out_rst_d1_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_5_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_4_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_9_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_12_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_main_counter_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_PS_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_9_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_reg_file_MAX_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_4_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_prsclr_counter_inst_gen1_5_latch_q_CLK : STD_LOGIC; 
  signal NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_N1_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_0_1_cy1_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_0_1_cy1_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_0_1_cy1_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_0_1_cy1_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_0_1_cy1_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_0_1_cy1_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_out_rst_delta_1_1_cy_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal reg_file_write_to : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal reg_file_MAX_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PSreg_to_ps : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal reg_file_MIN_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cmp_MIN_comparator_Mcompar_equal_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal cmp_MAX_comparator_Mcompar_equal_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal reg_file_NMI_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cmp_NMI_comparator_Mcompar_equal_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal reg_file_PS_reg_register_data : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cmp_MIN_comparator_Mcompar_equal_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal eq : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal out_rst_delta : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal cmp_MAX_comparator_Mcompar_equal_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal cmp_NMI_comparator_Mcompar_equal_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal main_counter_n : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal prsclr_counter_inst_n : STD_LOGIC_VECTOR ( 10 downto 0 ); 
begin
  cmp_MIN_comparator_Mcompar_equal_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"8400008421000021"
    )
    port map (
      ADR1 => reg_file_MIN_reg_register_data(9),
      ADR5 => main_counter_gen1_9_latch_q_857,
      ADR3 => reg_file_MIN_reg_register_data(10),
      ADR4 => main_counter_gen1_10_latch_q_853,
      ADR0 => reg_file_MIN_reg_register_data(11),
      ADR2 => main_counter_gen1_11_latch_q_858,
      O => cmp_MIN_comparator_Mcompar_equal_lut(3)
    );
  ProtoComp13_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X2Y1"
    )
    port map (
      O => ProtoComp13_CYINITVCC_1
    );
  cmp_MIN_comparator_Mcompar_equal_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y1"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp13_CYINITVCC_1,
      CO(3) => cmp_MIN_comparator_Mcompar_equal_cy(3),
      CO(2) => NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_cmp_MIN_comparator_Mcompar_equal_cy_3_O_0_UNCONNECTED,
      S(3) => cmp_MIN_comparator_Mcompar_equal_lut(3),
      S(2) => cmp_MIN_comparator_Mcompar_equal_lut(2),
      S(1) => cmp_MIN_comparator_Mcompar_equal_lut(1),
      S(0) => cmp_MIN_comparator_Mcompar_equal_lut(0)
    );
  cmp_MIN_comparator_Mcompar_equal_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"9000090000900009"
    )
    port map (
      ADR0 => reg_file_MIN_reg_register_data(6),
      ADR1 => main_counter_gen1_6_latch_q_883,
      ADR4 => reg_file_MIN_reg_register_data(7),
      ADR2 => main_counter_gen1_7_latch_q_856,
      ADR5 => reg_file_MIN_reg_register_data(8),
      ADR3 => main_counter_gen1_8_latch_q_855,
      O => cmp_MIN_comparator_Mcompar_equal_lut(2)
    );
  cmp_MIN_comparator_Mcompar_equal_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"8020080240100401"
    )
    port map (
      ADR4 => reg_file_MIN_reg_register_data(3),
      ADR2 => main_counter_gen1_3_latch_q_880,
      ADR5 => reg_file_MIN_reg_register_data(4),
      ADR0 => main_counter_gen1_4_latch_q_879,
      ADR3 => reg_file_MIN_reg_register_data(5),
      ADR1 => main_counter_gen1_5_latch_q_884,
      O => cmp_MIN_comparator_Mcompar_equal_lut(1)
    );
  cmp_MIN_comparator_Mcompar_equal_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"9000090000900009"
    )
    port map (
      ADR1 => reg_file_MIN_reg_register_data(2),
      ADR4 => reg_file_MIN_reg_register_data(1),
      ADR5 => reg_file_MIN_reg_register_data(0),
      ADR0 => main_counter_gen1_2_latch_q_881,
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR3 => main_counter_d0_q_878,
      O => cmp_MIN_comparator_Mcompar_equal_lut(0)
    );
  out_rst_d0_q_out_rst_d0_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => eq(0),
      O => eq_0_0
    );
  out_rst_d0_q : X_SFF
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_out_rst_d0_q_CLK,
      I => out_rst_delta(0),
      O => out_rst_d0_q_925,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  out_rst_delta_0_1_lut1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"AFA00F0FAFA00F0F"
    )
    port map (
      ADR1 => '1',
      ADR2 => out_rst_d1_q_892,
      ADR3 => clr_IBUF_0,
      ADR4 => out_rst_d0_q_925,
      ADR0 => start_IBUF_0,
      ADR5 => '1',
      O => out_rst_delta_0_1_lut1_36
    );
  N1_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_D5LUT_O_UNCONNECTED
    );
  out_rst_delta_0_1_cy1 : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y2"
    )
    port map (
      CI => cmp_MIN_comparator_Mcompar_equal_cy(3),
      CYINIT => '0',
      CO(3) => out_rst_delta(0),
      CO(2) => NLW_out_rst_delta_0_1_cy1_CO_2_UNCONNECTED,
      CO(1) => eq(0),
      CO(0) => NLW_out_rst_delta_0_1_cy1_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_out_rst_delta_0_1_cy1_O_3_UNCONNECTED,
      O(2) => NLW_out_rst_delta_0_1_cy1_O_2_UNCONNECTED,
      O(1) => NLW_out_rst_delta_0_1_cy1_O_1_UNCONNECTED,
      O(0) => NLW_out_rst_delta_0_1_cy1_O_0_UNCONNECTED,
      S(3) => out_rst_delta_0_1_lut1_36,
      S(2) => out_rst_delta_0_1_lut,
      S(1) => cmp_MIN_comparator_Mcompar_equal_lut(5),
      S(0) => cmp_MIN_comparator_Mcompar_equal_lut(4)
    );
  out_rst_delta_0_1_lut_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => out_rst_d0_q_925,
      ADR5 => '1',
      O => out_rst_delta_0_1_lut
    );
  N0_19_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_C5LUT_O_UNCONNECTED
    );
  cmp_MIN_comparator_Mcompar_equal_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"F00FF00FF00FF00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => reg_file_MIN_reg_register_data(15),
      ADR2 => main_counter_gen1_15_latch_q_923,
      ADR5 => '1',
      O => cmp_MIN_comparator_Mcompar_equal_lut(5)
    );
  N0_18_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_B5LUT_O_UNCONNECTED
    );
  cmp_MIN_comparator_Mcompar_equal_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => X"8421000000008421"
    )
    port map (
      ADR0 => reg_file_MIN_reg_register_data(12),
      ADR2 => main_counter_gen1_12_latch_q_854,
      ADR3 => reg_file_MIN_reg_register_data(13),
      ADR1 => main_counter_gen1_13_latch_q_900,
      ADR5 => reg_file_MIN_reg_register_data(14),
      ADR4 => main_counter_gen1_14_latch_q_899,
      O => cmp_MIN_comparator_Mcompar_equal_lut(4)
    );
  cmp_MAX_comparator_Mcompar_equal_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"8020401008020401"
    )
    port map (
      ADR2 => reg_file_MAX_reg_register_data(9),
      ADR5 => main_counter_gen1_9_latch_q_857,
      ADR0 => reg_file_MAX_reg_register_data(10),
      ADR4 => main_counter_gen1_10_latch_q_853,
      ADR3 => reg_file_MAX_reg_register_data(11),
      ADR1 => main_counter_gen1_11_latch_q_858,
      O => cmp_MAX_comparator_Mcompar_equal_lut(3)
    );
  ProtoComp15_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X2Y3"
    )
    port map (
      O => ProtoComp15_CYINITVCC_1
    );
  cmp_MAX_comparator_Mcompar_equal_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y3"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp15_CYINITVCC_1,
      CO(3) => cmp_MAX_comparator_Mcompar_equal_cy(3),
      CO(2) => NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_cmp_MAX_comparator_Mcompar_equal_cy_3_O_0_UNCONNECTED,
      S(3) => cmp_MAX_comparator_Mcompar_equal_lut(3),
      S(2) => cmp_MAX_comparator_Mcompar_equal_lut(2),
      S(1) => cmp_MAX_comparator_Mcompar_equal_lut(1),
      S(0) => cmp_MAX_comparator_Mcompar_equal_lut(0)
    );
  cmp_MAX_comparator_Mcompar_equal_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"8421000000008421"
    )
    port map (
      ADR1 => reg_file_MAX_reg_register_data(8),
      ADR5 => reg_file_MAX_reg_register_data(7),
      ADR0 => reg_file_MAX_reg_register_data(6),
      ADR3 => main_counter_gen1_8_latch_q_855,
      ADR4 => main_counter_gen1_7_latch_q_856,
      ADR2 => main_counter_gen1_6_latch_q_883,
      O => cmp_MAX_comparator_Mcompar_equal_lut(2)
    );
  cmp_MAX_comparator_Mcompar_equal_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"9000009009000009"
    )
    port map (
      ADR4 => reg_file_MAX_reg_register_data(3),
      ADR3 => main_counter_gen1_3_latch_q_880,
      ADR5 => reg_file_MAX_reg_register_data(4),
      ADR2 => main_counter_gen1_4_latch_q_879,
      ADR0 => reg_file_MAX_reg_register_data(5),
      ADR1 => main_counter_gen1_5_latch_q_884,
      O => cmp_MAX_comparator_Mcompar_equal_lut(1)
    );
  cmp_MAX_comparator_Mcompar_equal_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => X"8020401008020401"
    )
    port map (
      ADR0 => reg_file_MAX_reg_register_data(2),
      ADR5 => reg_file_MAX_reg_register_data(1),
      ADR1 => reg_file_MAX_reg_register_data(0),
      ADR4 => main_counter_gen1_2_latch_q_881,
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR3 => main_counter_d0_q_878,
      O => cmp_MAX_comparator_Mcompar_equal_lut(0)
    );
  eq_1_l1_eq_1_l1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => eq_1_l1,
      O => eq_1_l1_0
    );
  out_rst_delta_1_1_cy : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y4"
    )
    port map (
      CI => cmp_MAX_comparator_Mcompar_equal_cy(3),
      CYINIT => '0',
      CO(3) => NLW_out_rst_delta_1_1_cy_CO_3_UNCONNECTED,
      CO(2) => eq_1_l1,
      CO(1) => NLW_out_rst_delta_1_1_cy_CO_1_UNCONNECTED,
      CO(0) => NLW_out_rst_delta_1_1_cy_CO_0_UNCONNECTED,
      DI(3) => NLW_out_rst_delta_1_1_cy_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_out_rst_delta_1_1_cy_O_3_UNCONNECTED,
      O(2) => NLW_out_rst_delta_1_1_cy_O_2_UNCONNECTED,
      O(1) => NLW_out_rst_delta_1_1_cy_O_1_UNCONNECTED,
      O(0) => NLW_out_rst_delta_1_1_cy_O_0_UNCONNECTED,
      S(3) => NLW_out_rst_delta_1_1_cy_S_3_UNCONNECTED,
      S(2) => out_rst_delta_1_1_lut_100,
      S(1) => cmp_MAX_comparator_Mcompar_equal_lut(5),
      S(0) => cmp_MAX_comparator_Mcompar_equal_lut(4)
    );
  out_rst_delta_1_1_lut : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"5555000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => out_rst_d0_q_925,
      ADR0 => out_rst_d1_q_892,
      ADR5 => '1',
      O => out_rst_delta_1_1_lut_100
    );
  N0_20_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_C5LUT_O_UNCONNECTED
    );
  cmp_MAX_comparator_Mcompar_equal_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"F00FF00FF00FF00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => reg_file_MAX_reg_register_data(15),
      ADR2 => main_counter_gen1_15_latch_q_923,
      ADR5 => '1',
      O => cmp_MAX_comparator_Mcompar_equal_lut(5)
    );
  N0_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_B5LUT_O_UNCONNECTED
    );
  cmp_MAX_comparator_Mcompar_equal_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"8040201008040201"
    )
    port map (
      ADR5 => reg_file_MAX_reg_register_data(12),
      ADR2 => main_counter_gen1_12_latch_q_854,
      ADR3 => reg_file_MAX_reg_register_data(13),
      ADR0 => main_counter_gen1_13_latch_q_900,
      ADR1 => reg_file_MAX_reg_register_data(14),
      ADR4 => main_counter_gen1_14_latch_q_899,
      O => cmp_MAX_comparator_Mcompar_equal_lut(4)
    );
  cmp_NMI_comparator_Mcompar_equal_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"8040080420100201"
    )
    port map (
      ADR0 => reg_file_NMI_reg_register_data(9),
      ADR3 => main_counter_gen1_9_latch_q_857,
      ADR4 => reg_file_NMI_reg_register_data(10),
      ADR2 => main_counter_gen1_10_latch_q_853,
      ADR5 => reg_file_NMI_reg_register_data(11),
      ADR1 => main_counter_gen1_11_latch_q_858,
      O => cmp_NMI_comparator_Mcompar_equal_lut(3)
    );
  ProtoComp17_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X2Y7"
    )
    port map (
      O => ProtoComp17_CYINITVCC_1
    );
  cmp_NMI_comparator_Mcompar_equal_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y7"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp17_CYINITVCC_1,
      CO(3) => cmp_NMI_comparator_Mcompar_equal_cy(3),
      CO(2) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_3_O_0_UNCONNECTED,
      S(3) => cmp_NMI_comparator_Mcompar_equal_lut(3),
      S(2) => cmp_NMI_comparator_Mcompar_equal_lut(2),
      S(1) => cmp_NMI_comparator_Mcompar_equal_lut(1),
      S(0) => cmp_NMI_comparator_Mcompar_equal_lut(0)
    );
  cmp_NMI_comparator_Mcompar_equal_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"9009000000009009"
    )
    port map (
      ADR4 => reg_file_NMI_reg_register_data_6_0,
      ADR5 => main_counter_gen1_6_latch_q_883,
      ADR0 => reg_file_NMI_reg_register_data_7_0,
      ADR1 => main_counter_gen1_7_latch_q_856,
      ADR2 => reg_file_NMI_reg_register_data(8),
      ADR3 => main_counter_gen1_8_latch_q_855,
      O => cmp_NMI_comparator_Mcompar_equal_lut(2)
    );
  cmp_NMI_comparator_Mcompar_equal_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"8200410000820041"
    )
    port map (
      ADR0 => reg_file_NMI_reg_register_data(3),
      ADR4 => main_counter_gen1_3_latch_q_880,
      ADR1 => reg_file_NMI_reg_register_data_4_0,
      ADR2 => main_counter_gen1_4_latch_q_879,
      ADR3 => reg_file_NMI_reg_register_data_5_0,
      ADR5 => main_counter_gen1_5_latch_q_884,
      O => cmp_NMI_comparator_Mcompar_equal_lut(1)
    );
  cmp_NMI_comparator_Mcompar_equal_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => X"9000090000900009"
    )
    port map (
      ADR1 => reg_file_NMI_reg_register_data(0),
      ADR0 => main_counter_d0_q_878,
      ADR4 => reg_file_NMI_reg_register_data(1),
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR3 => reg_file_NMI_reg_register_data(2),
      ADR5 => main_counter_gen1_2_latch_q_881,
      O => cmp_NMI_comparator_Mcompar_equal_lut(0)
    );
  nmi_output_nmi_output_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => nmi_output,
      O => nmi_output_0
    );
  cmp_NMI_comparator_Mcompar_equal_cy_5_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y8"
    )
    port map (
      CI => cmp_NMI_comparator_Mcompar_equal_cy(3),
      CYINIT => '0',
      CO(3) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_CO_3_UNCONNECTED,
      CO(2) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_CO_2_UNCONNECTED,
      CO(1) => nmi_output,
      CO(0) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_CO_0_UNCONNECTED,
      DI(3) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_DI_3_UNCONNECTED,
      DI(2) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_O_3_UNCONNECTED,
      O(2) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_O_2_UNCONNECTED,
      O(1) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_O_1_UNCONNECTED,
      O(0) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_O_0_UNCONNECTED,
      S(3) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_S_3_UNCONNECTED,
      S(2) => NLW_cmp_NMI_comparator_Mcompar_equal_cy_5_S_2_UNCONNECTED,
      S(1) => cmp_NMI_comparator_Mcompar_equal_lut(5),
      S(0) => cmp_NMI_comparator_Mcompar_equal_lut(4)
    );
  cmp_NMI_comparator_Mcompar_equal_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"AA55AA55AA55AA55"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => reg_file_NMI_reg_register_data(15),
      ADR0 => main_counter_gen1_15_latch_q_923,
      ADR5 => '1',
      O => cmp_NMI_comparator_Mcompar_equal_lut(5)
    );
  N0_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_B5LUT_O_UNCONNECTED
    );
  cmp_NMI_comparator_Mcompar_equal_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y8",
      INIT => X"8400008421000021"
    )
    port map (
      ADR0 => reg_file_NMI_reg_register_data(12),
      ADR2 => main_counter_gen1_12_latch_q_854,
      ADR3 => reg_file_NMI_reg_register_data(13),
      ADR4 => main_counter_gen1_13_latch_q_900,
      ADR1 => reg_file_NMI_reg_register_data(14),
      ADR5 => main_counter_gen1_14_latch_q_899,
      O => cmp_NMI_comparator_Mcompar_equal_lut(4)
    );
  data_0_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_0_IBUF_168,
      I => data(0)
    );
  ProtoComp19_IMUX : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_168,
      O => data_0_IBUF_0
    );
  data_1_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_1_IBUF_171,
      I => data(1)
    );
  ProtoComp19_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_171,
      O => data_1_IBUF_0
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_174,
      I => clk
    );
  ProtoComp19_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_174,
      O => clk_BUFGP_IBUFG_0
    );
  data_2_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_2_IBUF_177,
      I => data(2)
    );
  ProtoComp19_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_177,
      O => data_2_IBUF_0
    );
  data_3_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_3_IBUF_180,
      I => data(3)
    );
  ProtoComp19_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_180,
      O => data_3_IBUF_0
    );
  data_4_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_4_IBUF_183,
      I => data(4)
    );
  ProtoComp19_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_4_IBUF_183,
      O => data_4_IBUF_0
    );
  clr_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => clr_IBUF_186,
      I => clr
    );
  ProtoComp19_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => clr_IBUF_186,
      O => clr_IBUF_0
    );
  data_5_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_5_IBUF_189,
      I => data(5)
    );
  ProtoComp19_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_189,
      O => data_5_IBUF_0
    );
  data_6_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_6_IBUF_192,
      I => data(6)
    );
  ProtoComp19_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_6_IBUF_192,
      O => data_6_IBUF_0
    );
  data_7_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_7_IBUF_195,
      I => data(7)
    );
  ProtoComp19_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_7_IBUF_195,
      O => data_7_IBUF_0
    );
  data_8_IBUF : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_8_IBUF_198,
      I => data(8)
    );
  ProtoComp19_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD141",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_8_IBUF_198,
      O => data_8_IBUF_0
    );
  data_9_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_9_IBUF_201,
      I => data(9)
    );
  ProtoComp19_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_201,
      O => data_9_IBUF_0
    );
  command_0_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => command_0_IBUF_204,
      I => command(0)
    );
  ProtoComp19_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => command_0_IBUF_204,
      O => command_0_IBUF_0
    );
  command_1_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      O => command_1_IBUF_207,
      I => command(1)
    );
  ProtoComp19_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      I => command_1_IBUF_207,
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
      O => data_10_IBUF_212,
      I => data(10)
    );
  ProtoComp19_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_10_IBUF_212,
      O => data_10_IBUF_0
    );
  data_11_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_11_IBUF_215,
      I => data(11)
    );
  ProtoComp19_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_11_IBUF_215,
      O => data_11_IBUF_0
    );
  data_12_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_12_IBUF_218,
      I => data(12)
    );
  ProtoComp19_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_12_IBUF_218,
      O => data_12_IBUF_0
    );
  data_13_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_13_IBUF_221,
      I => data(13)
    );
  ProtoComp19_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_13_IBUF_221,
      O => data_13_IBUF_0
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => start_IBUF_224,
      I => start
    );
  ProtoComp19_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      I => start_IBUF_224,
      O => start_IBUF_0
    );
  data_14_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_14_IBUF_227,
      I => data(14)
    );
  ProtoComp19_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_14_IBUF_227,
      O => data_14_IBUF_0
    );
  data_15_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_15_IBUF_230,
      I => data(15)
    );
  ProtoComp19_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_15_IBUF_230,
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
      O => rst_IBUF_235,
      I => rst
    );
  ProtoComp19_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_235,
      O => rst_IBUF_0
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  reg_file_MIN_reg_register_data_11 : X_SFF
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_11_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_11_IN,
      O => reg_file_MIN_reg_register_data(11),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_10 : X_SFF
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_10_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_10_IN,
      O => reg_file_MIN_reg_register_data(10),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_9 : X_SFF
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_9_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_9_IN,
      O => reg_file_MIN_reg_register_data(9),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_8 : X_SFF
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_8_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_8_IN,
      O => reg_file_MIN_reg_register_data(8),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_15 : X_SFF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_15_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_15_IN,
      O => reg_file_MAX_reg_register_data(15),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_14 : X_SFF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_14_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_14_IN,
      O => reg_file_MAX_reg_register_data(14),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_13 : X_SFF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_13_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_13_IN,
      O => reg_file_MAX_reg_register_data(13),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_12 : X_SFF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_12_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_12_IN,
      O => reg_file_MAX_reg_register_data(12),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_11 : X_SFF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_11_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_11_IN,
      O => reg_file_NMI_reg_register_data(11),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_10 : X_SFF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_10_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_10_IN,
      O => reg_file_NMI_reg_register_data(10),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_9 : X_SFF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_9_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_9_IN,
      O => reg_file_NMI_reg_register_data(9),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_8 : X_SFF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_8_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_8_IN,
      O => reg_file_NMI_reg_register_data(8),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_15 : X_SFF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_15_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_15_IN,
      O => reg_file_NMI_reg_register_data(15),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_14 : X_SFF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_14_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_14_IN,
      O => reg_file_NMI_reg_register_data(14),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_13 : X_SFF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_13_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_13_IN,
      O => reg_file_NMI_reg_register_data(13),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_12 : X_SFF
    generic map(
      LOC => "SLICE_X0Y8",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_12_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_12_IN,
      O => reg_file_NMI_reg_register_data(12),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  started_started_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N52_pack_9,
      O => N52
    );
  main_counter_n_7_11_SW8 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y12"
    )
    port map (
      IA => N60,
      IB => N61,
      O => N52_pack_9,
      SEL => main_counter_d0_q_878
    );
  main_counter_n_7_11_SW8_F : X_LUT6
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"FFBBFFBBFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => main_counter_gen1_14_latch_q_899,
      ADR0 => clr_IBUF_0,
      ADR3 => start_IBUF_0,
      ADR5 => started_864,
      O => N60
    );
  main_counter_n_7_11_SW8_G : X_LUT6
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"FEFCFDFFFFFFFFFF"
    )
    port map (
      ADR4 => main_counter_gen1_14_latch_q_899,
      ADR3 => main_counter_gen1_6_latch_q_883,
      ADR0 => main_counter_gen1_5_latch_q_884,
      ADR5 => started_864,
      ADR2 => start_IBUF_0,
      ADR1 => clr_IBUF_0,
      O => N61
    );
  started : X_SFF
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_started_CLK,
      I => started_glue_set_305,
      O => started_864,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  started_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => started_864,
      ADR3 => '1',
      ADR5 => start_IBUF_0,
      O => started_glue_set_305
    );
  main_counter_gen1_14_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_14_latch_q_CLK,
      I => main_counter_n(14),
      O => main_counter_gen1_14_latch_q_899,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_14_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"1000DFFF0000FFFF"
    )
    port map (
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR4 => N51_0,
      ADR3 => N8,
      ADR0 => N52,
      ADR1 => N18,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(14)
    );
  reg_file_write_to_1_reg_file_write_to_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_write_to(0),
      O => reg_file_write_to_0_0
    );
  reg_file_Mmux_write_to_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => X"0000222200002222"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => command_1_IBUF_0,
      ADR0 => command_0_IBUF_0,
      ADR4 => started_864,
      ADR5 => '1',
      O => reg_file_write_to(1)
    );
  reg_file_Mmux_write_to_0_11 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => X"00001111"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => command_1_IBUF_0,
      ADR0 => command_0_IBUF_0,
      ADR4 => started_864,
      O => reg_file_write_to(0)
    );
  reg_file_MIN_reg_register_data_15 : X_SFF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_15_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_15_IN,
      O => reg_file_MIN_reg_register_data(15),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_14 : X_SFF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_14_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_14_IN,
      O => reg_file_MIN_reg_register_data(14),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_13 : X_SFF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_13_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_13_IN,
      O => reg_file_MIN_reg_register_data(13),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_12 : X_SFF
    generic map(
      LOC => "SLICE_X1Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_12_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_12_IN,
      O => reg_file_MIN_reg_register_data(12),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_11 : X_SFF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_11_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_11_IN,
      O => reg_file_MAX_reg_register_data(11),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_10 : X_SFF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_10_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_10_IN,
      O => reg_file_MAX_reg_register_data(10),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_9 : X_SFF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_9_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_9_IN,
      O => reg_file_MAX_reg_register_data(9),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_8 : X_SFF
    generic map(
      LOC => "SLICE_X1Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_8_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_8_IN,
      O => reg_file_MAX_reg_register_data(8),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_7_11_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y10",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR4 => main_counter_d0_q_878,
      ADR5 => main_counter_gen1_5_latch_q_884,
      ADR0 => main_counter_gen1_8_latch_q_855,
      ADR1 => main_counter_gen1_7_latch_q_856,
      ADR3 => main_counter_gen1_6_latch_q_883,
      O => N54
    );
  reg_file_write_to_3_reg_file_write_to_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_write_to(2),
      O => reg_file_write_to_2_0
    );
  reg_file_write_to_3_reg_file_write_to_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => nmi_OBUF_352,
      O => nmi_OBUF_0
    );
  reg_file_Mmux_write_to_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => X"00C000C000C000C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => command_1_IBUF_0,
      ADR3 => started_864,
      ADR1 => command_0_IBUF_0,
      ADR5 => '1',
      O => reg_file_write_to(3)
    );
  reg_file_Mmux_write_to_2_11 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => X"00300030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => command_1_IBUF_0,
      ADR3 => started_864,
      ADR1 => command_0_IBUF_0,
      O => reg_file_write_to(2)
    );
  reset1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => out_rst_d1_q_892,
      ADR4 => started_864,
      ADR5 => '1',
      O => reset_OBUF_890
    );
  nmi1 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => X"50500000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => nmi_output_0,
      ADR0 => out_rst_d1_q_892,
      ADR4 => started_864,
      O => nmi_OBUF_352
    );
  reg_file_NMI_reg_register_data_3_reg_file_NMI_reg_register_data_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_NMI_reg_register_data(7),
      O => reg_file_NMI_reg_register_data_7_0
    );
  reg_file_NMI_reg_register_data_3_reg_file_NMI_reg_register_data_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_NMI_reg_register_data(6),
      O => reg_file_NMI_reg_register_data_6_0
    );
  reg_file_NMI_reg_register_data_3_reg_file_NMI_reg_register_data_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_NMI_reg_register_data(5),
      O => reg_file_NMI_reg_register_data_5_0
    );
  reg_file_NMI_reg_register_data_3_reg_file_NMI_reg_register_data_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_file_NMI_reg_register_data(4),
      O => reg_file_NMI_reg_register_data_4_0
    );
  reg_file_NMI_reg_register_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_3_IN,
      O => reg_file_NMI_reg_register_data(3),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  data_7_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => data_7_IBUF_0,
      O => data_7_IBUF_rt_376
    );
  reg_file_NMI_reg_register_data_7 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_7_CLK,
      I => data_7_IBUF_rt_376,
      O => reg_file_NMI_reg_register_data(7),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_2_IN,
      O => reg_file_NMI_reg_register_data(2),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  data_6_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => data_6_IBUF_0,
      O => data_6_IBUF_rt_360
    );
  reg_file_NMI_reg_register_data_6 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_6_CLK,
      I => data_6_IBUF_rt_360,
      O => reg_file_NMI_reg_register_data(6),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_1_IN,
      O => reg_file_NMI_reg_register_data(1),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  data_5_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => data_5_IBUF_0,
      O => data_5_IBUF_rt_365
    );
  reg_file_NMI_reg_register_data_5 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_5_CLK,
      I => data_5_IBUF_rt_365,
      O => reg_file_NMI_reg_register_data(5),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_NMI_reg_register_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_NMI_reg_register_data_0_IN,
      O => reg_file_NMI_reg_register_data(0),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  data_4_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => data_4_IBUF_0,
      O => data_4_IBUF_rt_370
    );
  reg_file_NMI_reg_register_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_2_0,
      CLK => NlwBufferSignal_reg_file_NMI_reg_register_data_4_CLK,
      I => data_4_IBUF_rt_370,
      O => reg_file_NMI_reg_register_data(4),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_gen1_15_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_15_latch_q_CLK,
      I => main_counter_n(15),
      O => main_counter_gen1_15_latch_q_923,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_15_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y9",
      INIT => X"1555400055550000"
    )
    port map (
      ADR3 => N6,
      ADR1 => N8,
      ADR0 => count_refresh,
      ADR4 => main_counter_gen1_15_latch_q_923,
      ADR2 => N46,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(15)
    );
  N20_N20_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  main_counter_n_9_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"3F3FFFFF3F3FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => main_counter_gen1_9_latch_q_857,
      ADR1 => main_counter_gen1_11_latch_q_858,
      ADR2 => main_counter_gen1_10_latch_q_853,
      ADR5 => '1',
      O => N20
    );
  main_counter_n_9_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"0F0FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => main_counter_gen1_9_latch_q_857,
      ADR3 => '1',
      ADR2 => main_counter_gen1_10_latch_q_853,
      O => N22
    );
  main_counter_n_7_11_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR3 => main_counter_d0_q_878,
      ADR5 => main_counter_gen1_5_latch_q_884,
      ADR1 => main_counter_gen1_8_latch_q_855,
      ADR0 => main_counter_gen1_7_latch_q_856,
      ADR4 => main_counter_gen1_6_latch_q_883,
      ADR2 => main_counter_gen1_9_latch_q_857,
      O => N44
    );
  N40_N40_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N42,
      O => N42_0
    );
  main_counter_n_7_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y11",
      INIT => X"7FFF7FFF7FFF7FFF"
    )
    port map (
      ADR4 => '1',
      ADR2 => main_counter_d0_q_878,
      ADR3 => main_counter_gen1_5_latch_q_884,
      ADR0 => main_counter_gen1_7_latch_q_856,
      ADR1 => main_counter_gen1_6_latch_q_883,
      ADR5 => '1',
      O => N40
    );
  main_counter_n_7_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y11",
      INIT => X"7FFFFFFF"
    )
    port map (
      ADR4 => main_counter_gen1_8_latch_q_855,
      ADR2 => main_counter_d0_q_878,
      ADR3 => main_counter_gen1_5_latch_q_884,
      ADR0 => main_counter_gen1_7_latch_q_856,
      ADR1 => main_counter_gen1_6_latch_q_883,
      O => N42
    );
  main_counter_gen1_13_latch_q_main_counter_gen1_13_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N49_pack_12,
      O => N49
    );
  main_counter_gen1_13_latch_q_main_counter_gen1_13_latch_q_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => main_counter_d0_q_pack_10,
      O => main_counter_d0_q_878
    );
  main_counter_n_7_11_SW6 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y12"
    )
    port map (
      IA => N58,
      IB => N59,
      O => N49_pack_12,
      SEL => main_counter_d0_q_878
    );
  main_counter_n_7_11_SW6_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"FCFFFCFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => main_counter_gen1_13_latch_q_900,
      ADR2 => clr_IBUF_0,
      ADR1 => start_IBUF_0,
      ADR5 => started_864,
      O => N58
    );
  main_counter_n_7_11_SW6_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"FEFAFFFFFBFFFFFF"
    )
    port map (
      ADR5 => main_counter_gen1_13_latch_q_900,
      ADR1 => main_counter_gen1_6_latch_q_883,
      ADR3 => main_counter_gen1_5_latch_q_884,
      ADR4 => started_864,
      ADR0 => start_IBUF_0,
      ADR2 => clr_IBUF_0,
      O => N59
    );
  main_counter_gen1_13_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_13_latch_q_CLK,
      I => main_counter_n(13),
      O => main_counter_gen1_13_latch_q_900,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_13_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"313333333B333333"
    )
    port map (
      ADR4 => main_counter_gen1_1_latch_q_907,
      ADR1 => N48,
      ADR2 => N16,
      ADR0 => N8,
      ADR5 => N49,
      ADR3 => PSreg_to_ps(3),
      O => main_counter_n(13)
    );
  count_refresh1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"FCFFFCFFFCFFFCFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => clr_IBUF_0,
      ADR2 => start_IBUF_0,
      ADR3 => started_864,
      ADR5 => '1',
      O => count_refresh
    );
  main_counter_n_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"01000200"
    )
    port map (
      ADR0 => main_counter_d0_q_878,
      ADR4 => PSreg_to_ps(3),
      ADR1 => clr_IBUF_0,
      ADR2 => start_IBUF_0,
      ADR3 => started_864,
      O => main_counter_n(0)
    );
  main_counter_d0_q : X_SFF
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_d0_q_CLK,
      I => main_counter_n(0),
      O => main_counter_d0_q_pack_10,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_gen1_1_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_1_latch_q_CLK,
      I => main_counter_n(1),
      O => main_counter_gen1_1_latch_q_907,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => X"0100110010000000"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR0 => start_IBUF_0,
      ADR3 => started_864,
      ADR5 => main_counter_gen1_1_latch_q_907,
      ADR4 => main_counter_d0_q_878,
      ADR2 => PSreg_to_ps(3),
      O => main_counter_n(1)
    );
  main_counter_gen1_11_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_11_latch_q_CLK,
      I => main_counter_n(11),
      O => main_counter_gen1_11_latch_q_858,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => X"00FD000200FF0000"
    )
    port map (
      ADR3 => count_refresh,
      ADR5 => N8,
      ADR1 => N22_0,
      ADR4 => main_counter_gen1_11_latch_q_858,
      ADR2 => N54,
      ADR0 => PSreg_to_ps(3),
      O => main_counter_n(11)
    );
  main_counter_gen1_8_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_8_latch_q_CLK,
      I => main_counter_n(8),
      O => main_counter_gen1_8_latch_q_855,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => X"00DF002000FF0000"
    )
    port map (
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR0 => N8,
      ADR1 => N40,
      ADR4 => main_counter_gen1_8_latch_q_855,
      ADR3 => count_refresh,
      ADR5 => PSreg_to_ps(3),
      O => main_counter_n(8)
    );
  PSreg_to_ps_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => X"D8D8FFAAD8D85500"
    )
    port map (
      ADR4 => reg_file_PS_reg_register_data(3),
      ADR0 => reg_file_PS_reg_register_data(2),
      ADR1 => prsclr_counter_inst_gen1_10_latch_q_975,
      ADR2 => N10,
      ADR5 => prsclr_Mmux_clk_enable_s_6_990,
      ADR3 => prsclr_Mmux_clk_enable_s_7_991,
      O => PSreg_to_ps(3)
    );
  reg_file_MIN_reg_register_data_7 : X_SFF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_7_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_7_IN,
      O => reg_file_MIN_reg_register_data(7),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_6 : X_SFF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_6_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_6_IN,
      O => reg_file_MIN_reg_register_data(6),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_5 : X_SFF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_5_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_5_IN,
      O => reg_file_MIN_reg_register_data(5),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_4_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_4_IN,
      O => reg_file_MIN_reg_register_data(4),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_3_IN,
      O => reg_file_MIN_reg_register_data(3),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_2_IN,
      O => reg_file_MIN_reg_register_data(2),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_1_IN,
      O => reg_file_MIN_reg_register_data(1),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MIN_reg_register_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(1),
      CLK => NlwBufferSignal_reg_file_MIN_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_MIN_reg_register_data_0_IN,
      O => reg_file_MIN_reg_register_data(0),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_7 : X_SFF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_7_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_7_IN,
      O => reg_file_MAX_reg_register_data(7),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_6 : X_SFF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_6_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_6_IN,
      O => reg_file_MAX_reg_register_data(6),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_5 : X_SFF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_5_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_5_IN,
      O => reg_file_MAX_reg_register_data(5),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_4_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_4_IN,
      O => reg_file_MAX_reg_register_data(4),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  out_rst_d1_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_out_rst_d1_q_CLK,
      I => out_rst_delta(1),
      O => out_rst_d1_q_892,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  out_rst_delta_1_1_cy1_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy_cy : 
X_LUT6
    generic map(
      LOC => "SLICE_X3Y4",
      INIT => X"FFFFFFFF2322ABAA"
    )
    port map (
      ADR4 => start_IBUF_0,
      ADR1 => out_rst_d0_q_925,
      ADR3 => clr_IBUF_0,
      ADR0 => out_rst_d1_q_892,
      ADR2 => eq_0_0,
      ADR5 => eq_1_l1_0,
      O => out_rst_delta(1)
    );
  main_counter_gen1_3_latch_q_main_counter_gen1_3_latch_q_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N26_pack_15,
      O => N26
    );
  main_counter_n_2_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"8080808080808080"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => main_counter_gen1_4_latch_q_879,
      ADR0 => main_counter_gen1_3_latch_q_880,
      ADR2 => main_counter_gen1_2_latch_q_881,
      ADR5 => '1',
      O => N8
    );
  main_counter_n_2_11_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"7777FFFF"
    )
    port map (
      ADR3 => '1',
      ADR4 => main_counter_d0_q_878,
      ADR1 => main_counter_gen1_4_latch_q_879,
      ADR0 => main_counter_gen1_3_latch_q_880,
      ADR2 => '1',
      O => N26_pack_15
    );
  main_counter_gen1_3_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_3_latch_q_CLK,
      I => main_counter_n(3),
      O => main_counter_gen1_3_latch_q_880,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"1320330033003300"
    )
    port map (
      ADR2 => main_counter_gen1_2_latch_q_881,
      ADR0 => main_counter_gen1_1_latch_q_907,
      ADR5 => main_counter_d0_q_878,
      ADR3 => main_counter_gen1_3_latch_q_880,
      ADR1 => count_refresh,
      ADR4 => count_trigger,
      O => main_counter_n(3)
    );
  main_counter_gen1_6_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_6_latch_q_CLK,
      I => main_counter_n(6),
      O => main_counter_gen1_6_latch_q_883,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"00000000FFBF0040"
    )
    port map (
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR3 => N12,
      ADR0 => N26,
      ADR4 => main_counter_gen1_6_latch_q_883,
      ADR5 => count_refresh,
      ADR1 => count_trigger,
      O => main_counter_n(6)
    );
  main_counter_gen1_5_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_5_latch_q_CLK,
      I => main_counter_n(5),
      O => main_counter_gen1_5_latch_q_884,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y7",
      INIT => X"3333133300002000"
    )
    port map (
      ADR3 => main_counter_gen1_2_latch_q_881,
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR4 => N26,
      ADR5 => main_counter_gen1_5_latch_q_884,
      ADR1 => count_refresh,
      ADR0 => count_trigger,
      O => main_counter_n(5)
    );
  main_counter_gen1_4_latch_q_main_counter_gen1_4_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N38,
      O => N38_0
    );
  main_counter_n_2_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"5555FFFF5555FFFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => main_counter_d0_q_878,
      ADR0 => main_counter_gen1_3_latch_q_880,
      O => N24
    );
  main_counter_n_6_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"0FFF0FFF0FFF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => main_counter_gen1_2_latch_q_881,
      ADR2 => main_counter_gen1_5_latch_q_884,
      ADR5 => '1',
      O => N12
    );
  main_counter_n_7_11_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"5F5FFFFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => main_counter_d0_q_878,
      ADR0 => main_counter_gen1_6_latch_q_883,
      ADR3 => '1',
      ADR2 => main_counter_gen1_5_latch_q_884,
      O => N38
    );
  main_counter_gen1_4_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_4_latch_q_CLK,
      I => main_counter_n(4),
      O => main_counter_gen1_4_latch_q_879,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"0000DF200000FF00"
    )
    port map (
      ADR0 => main_counter_gen1_2_latch_q_881,
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR1 => N24,
      ADR3 => main_counter_gen1_4_latch_q_879,
      ADR4 => count_refresh,
      ADR5 => count_trigger,
      O => main_counter_n(4)
    );
  main_counter_gen1_2_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_2_latch_q_CLK,
      I => main_counter_n(2),
      O => main_counter_gen1_2_latch_q_881,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_2_2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => X"1144550055005500"
    )
    port map (
      ADR2 => '1',
      ADR4 => main_counter_gen1_1_latch_q_907,
      ADR1 => main_counter_d0_q_878,
      ADR3 => main_counter_gen1_2_latch_q_881,
      ADR0 => count_refresh,
      ADR5 => count_trigger,
      O => main_counter_n(2)
    );
  main_counter_gen1_9_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_9_latch_q_CLK,
      I => main_counter_n(9),
      O => main_counter_gen1_9_latch_q_857,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_9_2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"4555100055550000"
    )
    port map (
      ADR5 => main_counter_gen1_1_latch_q_907,
      ADR3 => N8,
      ADR0 => count_refresh,
      ADR4 => main_counter_gen1_9_latch_q_857,
      ADR1 => N42_0,
      ADR2 => PSreg_to_ps(3),
      O => main_counter_n(9)
    );
  main_counter_gen1_7_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_7_latch_q_CLK,
      I => main_counter_n(7),
      O => main_counter_gen1_7_latch_q_856,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_7_2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"0D020F000F000F00"
    )
    port map (
      ADR0 => main_counter_gen1_1_latch_q_907,
      ADR5 => N8,
      ADR1 => N38_0,
      ADR3 => main_counter_gen1_7_latch_q_856,
      ADR2 => count_refresh,
      ADR4 => count_trigger,
      O => main_counter_n(7)
    );
  main_counter_n_13_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"5FFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR5 => main_counter_gen1_14_latch_q_899,
      ADR4 => main_counter_gen1_13_latch_q_900,
      ADR3 => main_counter_gen1_11_latch_q_858,
      ADR2 => main_counter_gen1_9_latch_q_857,
      ADR0 => main_counter_gen1_7_latch_q_856,
      O => N14
    );
  main_counter_n_7_11_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y9",
      INIT => X"0000800000000000"
    )
    port map (
      ADR0 => main_counter_gen1_8_latch_q_855,
      ADR1 => main_counter_gen1_6_latch_q_883,
      ADR5 => main_counter_gen1_5_latch_q_884,
      ADR3 => main_counter_d0_q_878,
      ADR2 => main_counter_gen1_1_latch_q_907,
      ADR4 => N14,
      O => N46
    );
  main_counter_gen1_12_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_12_latch_q_CLK,
      I => main_counter_n(12),
      O => main_counter_gen1_12_latch_q_854,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"0F0F0D0F00000200"
    )
    port map (
      ADR2 => count_refresh,
      ADR0 => N8,
      ADR4 => N20,
      ADR5 => main_counter_gen1_12_latch_q_854,
      ADR1 => N54,
      ADR3 => PSreg_to_ps(3),
      O => main_counter_n(12)
    );
  main_counter_gen1_10_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_main_counter_gen1_10_latch_q_CLK,
      I => main_counter_n(10),
      O => main_counter_gen1_10_latch_q_853,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  main_counter_n_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"3102330033003300"
    )
    port map (
      ADR0 => main_counter_gen1_1_latch_q_907,
      ADR5 => N8,
      ADR1 => count_refresh,
      ADR3 => main_counter_gen1_10_latch_q_853,
      ADR2 => N44,
      ADR4 => PSreg_to_ps(3),
      O => main_counter_n(10)
    );
  main_counter_n_9_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"A0A0A0A0A0A0A0A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => main_counter_gen1_12_latch_q_854,
      ADR0 => main_counter_gen1_10_latch_q_853,
      O => N6
    );
  main_counter_n_13_11_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR5 => main_counter_gen1_13_latch_q_900,
      ADR3 => main_counter_gen1_11_latch_q_858,
      ADR2 => main_counter_gen1_9_latch_q_857,
      ADR0 => main_counter_gen1_8_latch_q_855,
      ADR1 => main_counter_gen1_7_latch_q_856,
      ADR4 => N6,
      O => N18
    );
  main_counter_n_13_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR4 => main_counter_gen1_10_latch_q_853,
      ADR5 => main_counter_gen1_12_latch_q_854,
      ADR0 => main_counter_gen1_8_latch_q_855,
      ADR3 => main_counter_gen1_7_latch_q_856,
      ADR2 => main_counter_gen1_9_latch_q_857,
      ADR1 => main_counter_gen1_11_latch_q_858,
      O => N16
    );
  N48_N48_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  main_counter_n_7_11_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => X"FBFFFBFFFBFFFBFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => main_counter_gen1_13_latch_q_900,
      ADR2 => clr_IBUF_0,
      ADR0 => start_IBUF_0,
      ADR3 => started_864,
      ADR5 => '1',
      O => N48
    );
  main_counter_n_7_11_SW7 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => X"FAFFFFFF"
    )
    port map (
      ADR4 => main_counter_gen1_14_latch_q_899,
      ADR1 => '1',
      ADR2 => clr_IBUF_0,
      ADR0 => start_IBUF_0,
      ADR3 => started_864,
      O => N51
    );
  reg_file_PS_reg_register_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y13",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_0_0,
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_3_IN,
      O => reg_file_PS_reg_register_data(3),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_PS_reg_register_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y13",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_0_0,
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_2_IN,
      O => reg_file_PS_reg_register_data(2),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_PS_reg_register_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y13",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_0_0,
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_1_IN,
      O => reg_file_PS_reg_register_data(1),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_PS_reg_register_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y13",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to_0_0,
      CLK => NlwBufferSignal_reg_file_PS_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_PS_reg_register_data_0_IN,
      O => reg_file_PS_reg_register_data(0),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_Mmux_clk_enable_s_6 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"CCFFCC00AAF0AAF0"
    )
    port map (
      ADR3 => reg_file_PS_reg_register_data(1),
      ADR5 => reg_file_PS_reg_register_data(0),
      ADR0 => prsclr_counter_inst_gen1_6_latch_q_872,
      ADR1 => prsclr_counter_inst_gen1_7_latch_q_871,
      ADR4 => prsclr_counter_inst_gen1_5_latch_q_873,
      ADR2 => prsclr_counter_inst_gen1_4_latch_q_874,
      O => prsclr_Mmux_clk_enable_s_6_990
    );
  prsclr_counter_inst_gen1_6_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK,
      I => prsclr_counter_inst_n(6),
      O => prsclr_counter_inst_gen1_6_latch_q_872,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"00000000AAAA6AAA"
    )
    port map (
      ADR3 => prsclr_counter_inst_gen1_5_latch_q_873,
      ADR2 => prsclr_counter_inst_gen1_4_latch_q_874,
      ADR1 => prsclr_counter_inst_gen1_3_latch_q_875,
      ADR0 => prsclr_counter_inst_gen1_6_latch_q_872,
      ADR4 => prsclr_counter_inst_n_3_1,
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(6)
    );
  PSreg_to_ps_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y17",
      INIT => X"BBBBFC308888FC30"
    )
    port map (
      ADR4 => reg_file_PS_reg_register_data(3),
      ADR1 => reg_file_PS_reg_register_data(2),
      ADR0 => prsclr_counter_inst_gen1_10_latch_q_975,
      ADR5 => N10,
      ADR3 => prsclr_Mmux_clk_enable_s_6_990,
      ADR2 => prsclr_Mmux_clk_enable_s_7_991,
      O => count_trigger
    );
  prsclr_counter_inst_gen1_2_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_2_latch_q_CLK,
      I => prsclr_counter_inst_n(2),
      O => prsclr_counter_inst_gen1_2_latch_q_983,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y18",
      INIT => X"03030F0F0C0C0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => prsclr_counter_inst_gen1_1_latch_q_981,
      ADR5 => prsclr_counter_inst_gen1_2_latch_q_983,
      ADR1 => prsclr_counter_inst_d0_q_979,
      ADR2 => count_trigger,
      O => prsclr_counter_inst_n(2)
    );
  prsclr_Mmux_clk_enable_s_7 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"FCFC0C0CAFA0AFA0"
    )
    port map (
      ADR5 => reg_file_PS_reg_register_data(0),
      ADR2 => reg_file_PS_reg_register_data(1),
      ADR0 => prsclr_counter_inst_gen1_2_latch_q_983,
      ADR1 => prsclr_counter_inst_gen1_1_latch_q_981,
      ADR3 => prsclr_counter_inst_d0_q_979,
      ADR4 => prsclr_counter_inst_gen1_3_latch_q_875,
      O => prsclr_Mmux_clk_enable_s_7_991
    );
  prsclr_counter_inst_gen1_1_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_1_latch_q_CLK,
      I => prsclr_counter_inst_n(1),
      O => prsclr_counter_inst_gen1_1_latch_q_981,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"00000F0F0F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => prsclr_counter_inst_gen1_1_latch_q_981,
      ADR5 => prsclr_counter_inst_d0_q_979,
      ADR2 => count_trigger,
      O => prsclr_counter_inst_n(1)
    );
  prsclr_counter_inst_d0_q : X_SFF
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_d0_q_CLK,
      I => prsclr_counter_inst_n(0),
      O => prsclr_counter_inst_d0_q_979,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"FFFFFFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => prsclr_counter_inst_d0_q_979,
      ADR3 => '1',
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(0)
    );
  prsclr_counter_inst_gen1_3_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_3_latch_q_CLK,
      I => prsclr_counter_inst_n(3),
      O => prsclr_counter_inst_gen1_3_latch_q_875,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_3_2 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"000000003CF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => prsclr_counter_inst_gen1_2_latch_q_983,
      ADR3 => prsclr_counter_inst_gen1_1_latch_q_981,
      ADR2 => prsclr_counter_inst_gen1_3_latch_q_875,
      ADR1 => prsclr_counter_inst_d0_q_979,
      ADR5 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(3)
    );
  PSreg_to_ps_3_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"F0CCF0CCF0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR3 => reg_file_PS_reg_register_data(1),
      ADR5 => reg_file_PS_reg_register_data(0),
      ADR1 => prsclr_counter_inst_gen1_9_latch_q_978,
      ADR4 => prsclr_counter_inst_gen1_8_latch_q_977,
      ADR2 => prsclr_counter_inst_gen1_10_latch_q_975,
      O => N10
    );
  prsclr_counter_inst_gen1_10_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_10_latch_q_CLK,
      I => prsclr_counter_inst_n(10),
      O => prsclr_counter_inst_gen1_10_latch_q_975,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"0F0001010F0F0000"
    )
    port map (
      ADR5 => N4,
      ADR1 => N36_0,
      ADR0 => prsclr_counter_inst_n_3_1,
      ADR4 => prsclr_counter_inst_gen1_10_latch_q_975,
      ADR3 => prsclr_counter_inst_n_8_1_976,
      ADR2 => count_trigger,
      O => prsclr_counter_inst_n(10)
    );
  prsclr_counter_inst_n_8_11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"FFFFFFFF7FFFFFFF"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_7_latch_q_871,
      ADR4 => prsclr_counter_inst_gen1_6_latch_q_872,
      ADR3 => prsclr_counter_inst_gen1_5_latch_q_873,
      ADR0 => prsclr_counter_inst_gen1_4_latch_q_874,
      ADR2 => prsclr_counter_inst_gen1_3_latch_q_875,
      ADR5 => prsclr_counter_inst_n_3_1,
      O => prsclr_counter_inst_n_8_1_976
    );
  prsclr_counter_inst_n_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"55FFFFFF55FFFFFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => prsclr_counter_inst_gen1_2_latch_q_983,
      ADR0 => prsclr_counter_inst_gen1_1_latch_q_981,
      ADR4 => prsclr_counter_inst_d0_q_979,
      O => prsclr_counter_inst_n_3_1
    );
  prsclr_counter_inst_n_10_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"F0F0F0F000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => prsclr_counter_inst_gen1_9_latch_q_978,
      ADR2 => prsclr_counter_inst_gen1_8_latch_q_977,
      O => N4
    );
  prsclr_counter_inst_gen1_9_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_9_latch_q_CLK,
      I => prsclr_counter_inst_n(9),
      O => prsclr_counter_inst_gen1_9_latch_q_978,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"00000000AEAA2622"
    )
    port map (
      ADR1 => prsclr_counter_inst_gen1_8_latch_q_977,
      ADR3 => N30,
      ADR2 => prsclr_counter_inst_n_3_1,
      ADR0 => prsclr_counter_inst_gen1_9_latch_q_978,
      ADR4 => prsclr_counter_inst_n_8_1_976,
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(9)
    );
  prsclr_counter_inst_gen1_8_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK,
      I => prsclr_counter_inst_n(8),
      O => prsclr_counter_inst_gen1_8_latch_q_977,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"00000000CCCC0A00"
    )
    port map (
      ADR0 => prsclr_counter_inst_gen1_7_latch_q_871,
      ADR3 => N32_0,
      ADR2 => prsclr_counter_inst_n_3_1,
      ADR4 => prsclr_counter_inst_gen1_8_latch_q_977,
      ADR1 => prsclr_counter_inst_n_8_1_976,
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(8)
    );
  reg_file_MAX_reg_register_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_3_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_3_IN,
      O => reg_file_MAX_reg_register_data(3),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_2_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_2_IN,
      O => reg_file_MAX_reg_register_data(2),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_1_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_1_IN,
      O => reg_file_MAX_reg_register_data(1),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  reg_file_MAX_reg_register_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      CE => reg_file_write_to(3),
      CLK => NlwBufferSignal_reg_file_MAX_reg_register_data_0_CLK,
      I => NlwBufferSignal_reg_file_MAX_reg_register_data_0_IN,
      O => reg_file_MAX_reg_register_data(0),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_gen1_7_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_7_latch_q_CLK,
      I => prsclr_counter_inst_n(7),
      O => prsclr_counter_inst_gen1_7_latch_q_871,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"00000000AA5AAAAA"
    )
    port map (
      ADR1 => '1',
      ADR4 => prsclr_counter_inst_gen1_6_latch_q_872,
      ADR2 => N2,
      ADR0 => prsclr_counter_inst_gen1_7_latch_q_871,
      ADR3 => prsclr_counter_inst_n_3_1,
      ADR5 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(7)
    );
  prsclr_counter_inst_gen1_4_latch_q_prsclr_counter_inst_gen1_4_latch_q_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N32,
      O => N32_0
    );
  prsclr_counter_inst_gen1_4_latch_q_prsclr_counter_inst_gen1_4_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N36,
      O => N36_0
    );
  prsclr_counter_inst_n_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => X"C0C00000C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => prsclr_counter_inst_gen1_5_latch_q_873,
      ADR4 => prsclr_counter_inst_gen1_4_latch_q_874,
      ADR2 => prsclr_counter_inst_gen1_3_latch_q_875,
      ADR5 => '1',
      O => N2
    );
  prsclr_counter_inst_n_7_21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => X"C0000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => prsclr_counter_inst_gen1_6_latch_q_872,
      ADR1 => prsclr_counter_inst_gen1_5_latch_q_873,
      ADR4 => prsclr_counter_inst_gen1_4_latch_q_874,
      ADR2 => prsclr_counter_inst_gen1_3_latch_q_875,
      O => N32
    );
  prsclr_counter_inst_n_7_21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => X"8000000080000000"
    )
    port map (
      ADR2 => prsclr_counter_inst_gen1_7_latch_q_871,
      ADR3 => prsclr_counter_inst_gen1_6_latch_q_872,
      ADR4 => prsclr_counter_inst_gen1_5_latch_q_873,
      ADR0 => prsclr_counter_inst_gen1_4_latch_q_874,
      ADR1 => prsclr_counter_inst_gen1_3_latch_q_875,
      ADR5 => '1',
      O => N30
    );
  prsclr_counter_inst_n_7_21_SW3 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => X"7FFFFFFF"
    )
    port map (
      ADR2 => prsclr_counter_inst_gen1_7_latch_q_871,
      ADR3 => prsclr_counter_inst_gen1_6_latch_q_872,
      ADR4 => prsclr_counter_inst_gen1_5_latch_q_873,
      ADR0 => prsclr_counter_inst_gen1_4_latch_q_874,
      ADR1 => prsclr_counter_inst_gen1_3_latch_q_875,
      O => N36
    );
  prsclr_counter_inst_gen1_4_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_4_latch_q_CLK,
      I => prsclr_counter_inst_n(4),
      O => prsclr_counter_inst_gen1_4_latch_q_874,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => X"000000007FFF8000"
    )
    port map (
      ADR2 => prsclr_counter_inst_gen1_2_latch_q_983,
      ADR1 => prsclr_counter_inst_gen1_1_latch_q_981,
      ADR0 => prsclr_counter_inst_d0_q_979,
      ADR4 => prsclr_counter_inst_gen1_4_latch_q_874,
      ADR3 => prsclr_counter_inst_gen1_3_latch_q_875,
      ADR5 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(4)
    );
  prsclr_counter_inst_gen1_5_latch_q : X_SFF
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_prsclr_counter_inst_gen1_5_latch_q_CLK,
      I => prsclr_counter_inst_n(5),
      O => prsclr_counter_inst_gen1_5_latch_q_873,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  prsclr_counter_inst_n_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => X"00000000FF5F00A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => prsclr_counter_inst_gen1_4_latch_q_874,
      ADR2 => prsclr_counter_inst_gen1_3_latch_q_875,
      ADR4 => prsclr_counter_inst_gen1_5_latch_q_873,
      ADR3 => prsclr_counter_inst_n_3_1,
      ADR5 => count_trigger,
      O => prsclr_counter_inst_n(5)
    );
  NlwBufferBlock_out_rst_d0_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_out_rst_d0_q_CLK
    );
  NlwBufferBlock_nmi_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => nmi_OBUF_0,
      O => NlwBufferSignal_nmi_OBUF_I
    );
  NlwBufferBlock_reset_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reset_OBUF_890,
      O => NlwBufferSignal_reset_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
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
  NlwBufferBlock_main_counter_gen1_14_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_14_latch_q_CLK
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
  NlwBufferBlock_reg_file_NMI_reg_register_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_7_CLK
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
  NlwBufferBlock_reg_file_NMI_reg_register_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_6_CLK
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
  NlwBufferBlock_reg_file_NMI_reg_register_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_5_CLK
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
  NlwBufferBlock_reg_file_NMI_reg_register_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_reg_file_NMI_reg_register_data_4_CLK
    );
  NlwBufferBlock_main_counter_gen1_15_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_15_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_13_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_13_latch_q_CLK
    );
  NlwBufferBlock_main_counter_d0_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_d0_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_1_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_1_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_11_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_11_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_8_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_8_latch_q_CLK
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
  NlwBufferBlock_main_counter_gen1_3_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_3_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_6_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_6_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_5_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_5_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_4_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_4_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_2_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_2_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_9_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_9_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_7_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_7_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_12_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_12_latch_q_CLK
    );
  NlwBufferBlock_main_counter_gen1_10_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_main_counter_gen1_10_latch_q_CLK
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
  NlwBufferBlock_prsclr_counter_inst_gen1_6_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_6_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_2_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_2_latch_q_CLK
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
  NlwBufferBlock_prsclr_counter_inst_gen1_3_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_3_latch_q_CLK
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
  NlwBufferBlock_prsclr_counter_inst_gen1_8_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_8_latch_q_CLK
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
  NlwBufferBlock_prsclr_counter_inst_gen1_7_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_7_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_4_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_4_latch_q_CLK
    );
  NlwBufferBlock_prsclr_counter_inst_gen1_5_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_prsclr_counter_inst_gen1_5_latch_q_CLK
    );
  NlwBlock_WatchDog_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_WatchDog_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

