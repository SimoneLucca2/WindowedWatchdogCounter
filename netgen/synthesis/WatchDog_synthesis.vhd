--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: WatchDog_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jun 22 16:59:37 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm WatchDog -w -dir netgen/synthesis -ofmt vhdl -sim WatchDog.ngc WatchDog_synthesis.vhd 
-- Device	: xc6slx4-3-tqg144
-- Input file	: WatchDog.ngc
-- Output file	: /home/simone/OneDrive/Windowed_Watchdog_Counter/netgen/synthesis/WatchDog_synthesis.vhd
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

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
  signal command_1_IBUF_0 : STD_LOGIC; 
  signal command_0_IBUF_1 : STD_LOGIC; 
  signal data_15_IBUF_2 : STD_LOGIC; 
  signal data_14_IBUF_3 : STD_LOGIC; 
  signal data_13_IBUF_4 : STD_LOGIC; 
  signal data_12_IBUF_5 : STD_LOGIC; 
  signal data_11_IBUF_6 : STD_LOGIC; 
  signal data_10_IBUF_7 : STD_LOGIC; 
  signal data_9_IBUF_8 : STD_LOGIC; 
  signal data_8_IBUF_9 : STD_LOGIC; 
  signal data_7_IBUF_10 : STD_LOGIC; 
  signal data_6_IBUF_11 : STD_LOGIC; 
  signal data_5_IBUF_12 : STD_LOGIC; 
  signal data_4_IBUF_13 : STD_LOGIC; 
  signal data_3_IBUF_14 : STD_LOGIC; 
  signal data_2_IBUF_15 : STD_LOGIC; 
  signal data_1_IBUF_16 : STD_LOGIC; 
  signal data_0_IBUF_17 : STD_LOGIC; 
  signal clk_BUFGP_18 : STD_LOGIC; 
  signal clr_IBUF_19 : STD_LOGIC; 
  signal rst_IBUF_20 : STD_LOGIC; 
  signal start_IBUF_21 : STD_LOGIC; 
  signal count_trigger : STD_LOGIC; 
  signal main_counter_gen1_15_latch_q_75 : STD_LOGIC; 
  signal main_counter_gen1_14_latch_q_76 : STD_LOGIC; 
  signal main_counter_gen1_13_latch_q_77 : STD_LOGIC; 
  signal main_counter_gen1_12_latch_q_78 : STD_LOGIC; 
  signal main_counter_gen1_11_latch_q_79 : STD_LOGIC; 
  signal main_counter_gen1_10_latch_q_80 : STD_LOGIC; 
  signal main_counter_gen1_9_latch_q_81 : STD_LOGIC; 
  signal main_counter_gen1_8_latch_q_82 : STD_LOGIC; 
  signal main_counter_gen1_7_latch_q_83 : STD_LOGIC; 
  signal main_counter_gen1_6_latch_q_84 : STD_LOGIC; 
  signal main_counter_gen1_5_latch_q_85 : STD_LOGIC; 
  signal main_counter_gen1_4_latch_q_86 : STD_LOGIC; 
  signal main_counter_gen1_3_latch_q_87 : STD_LOGIC; 
  signal main_counter_gen1_2_latch_q_88 : STD_LOGIC; 
  signal main_counter_gen1_1_latch_q_89 : STD_LOGIC; 
  signal main_counter_d0_q_90 : STD_LOGIC; 
  signal out_rst_d1_q_91 : STD_LOGIC; 
  signal started_92 : STD_LOGIC; 
  signal count_refresh : STD_LOGIC; 
  signal reset_OBUF_95 : STD_LOGIC; 
  signal nmi_OBUF_96 : STD_LOGIC; 
  signal prsclr_counter_inst_d0_q_97 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_1_latch_q_98 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_2_latch_q_99 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_3_latch_q_100 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_4_latch_q_101 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_5_latch_q_102 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_6_latch_q_103 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_7_latch_q_104 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_8_latch_q_105 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_9_latch_q_106 : STD_LOGIC; 
  signal prsclr_counter_inst_gen1_10_latch_q_107 : STD_LOGIC; 
  signal prsclr_Mmux_clk_enable_s_7_108 : STD_LOGIC; 
  signal prsclr_Mmux_clk_enable_s_6_109 : STD_LOGIC; 
  signal out_rst_d0_q_112 : STD_LOGIC; 
  signal prsclr_counter_inst_n_3_1 : STD_LOGIC; 
  signal prsclr_counter_inst_n_8_1_118 : STD_LOGIC; 
  signal nmi1_146 : STD_LOGIC; 
  signal nmi2_147 : STD_LOGIC; 
  signal nmi3_148 : STD_LOGIC; 
  signal nmi4_149 : STD_LOGIC; 
  signal nmi5_150 : STD_LOGIC; 
  signal nmi6_151 : STD_LOGIC; 
  signal nmi7_152 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_1_154 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_2_155 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_3_156 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_4_157 : STD_LOGIC; 
  signal cmp_MIN_comparator_equal_0_5_158 : STD_LOGIC; 
  signal out_rst_delta_1_1_159 : STD_LOGIC; 
  signal out_rst_delta_1_2_160 : STD_LOGIC; 
  signal out_rst_delta_1_3_161 : STD_LOGIC; 
  signal out_rst_delta_1_4_162 : STD_LOGIC; 
  signal out_rst_delta_1_5_163 : STD_LOGIC; 
  signal out_rst_delta_1_6_164 : STD_LOGIC; 
  signal out_rst_delta_1_7_165 : STD_LOGIC; 
  signal out_rst_delta_1_8_166 : STD_LOGIC; 
  signal started_glue_set_191 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal reg_file_PS_reg_register_data : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal reg_file_MIN_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_file_NMI_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal reg_file_MAX_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal eq : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal out_rst_delta : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal reg_file_write_to : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal prsclr_counter_inst_n : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal main_counter_n : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cmp_MIN_comparator_equal : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal PSreg_to_ps : STD_LOGIC_VECTOR ( 3 downto 3 ); 
begin
  prsclr_Mmux_clk_enable_s_7 : LUT6
    generic map(
      INIT => X"FBD9EAC873516240"
    )
    port map (
      I0 => reg_file_PS_reg_register_data(0),
      I1 => reg_file_PS_reg_register_data(1),
      I2 => prsclr_counter_inst_gen1_2_latch_q_99,
      I3 => prsclr_counter_inst_gen1_1_latch_q_98,
      I4 => prsclr_counter_inst_d0_q_97,
      I5 => prsclr_counter_inst_gen1_3_latch_q_100,
      O => prsclr_Mmux_clk_enable_s_7_108
    );
  prsclr_Mmux_clk_enable_s_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => reg_file_PS_reg_register_data(1),
      I1 => reg_file_PS_reg_register_data(0),
      I2 => prsclr_counter_inst_gen1_6_latch_q_103,
      I3 => prsclr_counter_inst_gen1_7_latch_q_104,
      I4 => prsclr_counter_inst_gen1_5_latch_q_102,
      I5 => prsclr_counter_inst_gen1_4_latch_q_101,
      O => prsclr_Mmux_clk_enable_s_6_109
    );
  out_rst_d0_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => out_rst_delta(0),
      Q => out_rst_d0_q_112
    );
  out_rst_d1_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => out_rst_delta(1),
      Q => out_rst_d1_q_91
    );
  reg_file_PS_reg_register_data_0 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(0),
      CLR => rst_IBUF_20,
      D => data_0_IBUF_17,
      Q => reg_file_PS_reg_register_data(0)
    );
  reg_file_PS_reg_register_data_1 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(0),
      CLR => rst_IBUF_20,
      D => data_1_IBUF_16,
      Q => reg_file_PS_reg_register_data(1)
    );
  reg_file_PS_reg_register_data_2 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(0),
      CLR => rst_IBUF_20,
      D => data_2_IBUF_15,
      Q => reg_file_PS_reg_register_data(2)
    );
  reg_file_PS_reg_register_data_3 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(0),
      CLR => rst_IBUF_20,
      D => data_3_IBUF_14,
      Q => reg_file_PS_reg_register_data(3)
    );
  reg_file_MIN_reg_register_data_0 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_0_IBUF_17,
      Q => reg_file_MIN_reg_register_data(0)
    );
  reg_file_MIN_reg_register_data_1 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_1_IBUF_16,
      Q => reg_file_MIN_reg_register_data(1)
    );
  reg_file_MIN_reg_register_data_2 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_2_IBUF_15,
      Q => reg_file_MIN_reg_register_data(2)
    );
  reg_file_MIN_reg_register_data_3 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_3_IBUF_14,
      Q => reg_file_MIN_reg_register_data(3)
    );
  reg_file_MIN_reg_register_data_4 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_4_IBUF_13,
      Q => reg_file_MIN_reg_register_data(4)
    );
  reg_file_MIN_reg_register_data_5 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_5_IBUF_12,
      Q => reg_file_MIN_reg_register_data(5)
    );
  reg_file_MIN_reg_register_data_6 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_6_IBUF_11,
      Q => reg_file_MIN_reg_register_data(6)
    );
  reg_file_MIN_reg_register_data_7 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_7_IBUF_10,
      Q => reg_file_MIN_reg_register_data(7)
    );
  reg_file_MIN_reg_register_data_8 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_8_IBUF_9,
      Q => reg_file_MIN_reg_register_data(8)
    );
  reg_file_MIN_reg_register_data_9 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_9_IBUF_8,
      Q => reg_file_MIN_reg_register_data(9)
    );
  reg_file_MIN_reg_register_data_10 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_10_IBUF_7,
      Q => reg_file_MIN_reg_register_data(10)
    );
  reg_file_MIN_reg_register_data_11 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_11_IBUF_6,
      Q => reg_file_MIN_reg_register_data(11)
    );
  reg_file_MIN_reg_register_data_12 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_12_IBUF_5,
      Q => reg_file_MIN_reg_register_data(12)
    );
  reg_file_MIN_reg_register_data_13 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_13_IBUF_4,
      Q => reg_file_MIN_reg_register_data(13)
    );
  reg_file_MIN_reg_register_data_14 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_14_IBUF_3,
      Q => reg_file_MIN_reg_register_data(14)
    );
  reg_file_MIN_reg_register_data_15 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(1),
      CLR => rst_IBUF_20,
      D => data_15_IBUF_2,
      Q => reg_file_MIN_reg_register_data(15)
    );
  reg_file_NMI_reg_register_data_0 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_0_IBUF_17,
      Q => reg_file_NMI_reg_register_data(0)
    );
  reg_file_NMI_reg_register_data_1 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_1_IBUF_16,
      Q => reg_file_NMI_reg_register_data(1)
    );
  reg_file_NMI_reg_register_data_2 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_2_IBUF_15,
      Q => reg_file_NMI_reg_register_data(2)
    );
  reg_file_NMI_reg_register_data_3 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_3_IBUF_14,
      Q => reg_file_NMI_reg_register_data(3)
    );
  reg_file_NMI_reg_register_data_4 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_4_IBUF_13,
      Q => reg_file_NMI_reg_register_data(4)
    );
  reg_file_NMI_reg_register_data_5 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_5_IBUF_12,
      Q => reg_file_NMI_reg_register_data(5)
    );
  reg_file_NMI_reg_register_data_6 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_6_IBUF_11,
      Q => reg_file_NMI_reg_register_data(6)
    );
  reg_file_NMI_reg_register_data_7 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_7_IBUF_10,
      Q => reg_file_NMI_reg_register_data(7)
    );
  reg_file_NMI_reg_register_data_8 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_8_IBUF_9,
      Q => reg_file_NMI_reg_register_data(8)
    );
  reg_file_NMI_reg_register_data_9 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_9_IBUF_8,
      Q => reg_file_NMI_reg_register_data(9)
    );
  reg_file_NMI_reg_register_data_10 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_10_IBUF_7,
      Q => reg_file_NMI_reg_register_data(10)
    );
  reg_file_NMI_reg_register_data_11 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_11_IBUF_6,
      Q => reg_file_NMI_reg_register_data(11)
    );
  reg_file_NMI_reg_register_data_12 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_12_IBUF_5,
      Q => reg_file_NMI_reg_register_data(12)
    );
  reg_file_NMI_reg_register_data_13 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_13_IBUF_4,
      Q => reg_file_NMI_reg_register_data(13)
    );
  reg_file_NMI_reg_register_data_14 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_14_IBUF_3,
      Q => reg_file_NMI_reg_register_data(14)
    );
  reg_file_NMI_reg_register_data_15 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(2),
      CLR => rst_IBUF_20,
      D => data_15_IBUF_2,
      Q => reg_file_NMI_reg_register_data(15)
    );
  reg_file_MAX_reg_register_data_0 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_0_IBUF_17,
      Q => reg_file_MAX_reg_register_data(0)
    );
  reg_file_MAX_reg_register_data_1 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_1_IBUF_16,
      Q => reg_file_MAX_reg_register_data(1)
    );
  reg_file_MAX_reg_register_data_2 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_2_IBUF_15,
      Q => reg_file_MAX_reg_register_data(2)
    );
  reg_file_MAX_reg_register_data_3 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_3_IBUF_14,
      Q => reg_file_MAX_reg_register_data(3)
    );
  reg_file_MAX_reg_register_data_4 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_4_IBUF_13,
      Q => reg_file_MAX_reg_register_data(4)
    );
  reg_file_MAX_reg_register_data_5 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_5_IBUF_12,
      Q => reg_file_MAX_reg_register_data(5)
    );
  reg_file_MAX_reg_register_data_6 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_6_IBUF_11,
      Q => reg_file_MAX_reg_register_data(6)
    );
  reg_file_MAX_reg_register_data_7 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_7_IBUF_10,
      Q => reg_file_MAX_reg_register_data(7)
    );
  reg_file_MAX_reg_register_data_8 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_8_IBUF_9,
      Q => reg_file_MAX_reg_register_data(8)
    );
  reg_file_MAX_reg_register_data_9 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_9_IBUF_8,
      Q => reg_file_MAX_reg_register_data(9)
    );
  reg_file_MAX_reg_register_data_10 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_10_IBUF_7,
      Q => reg_file_MAX_reg_register_data(10)
    );
  reg_file_MAX_reg_register_data_11 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_11_IBUF_6,
      Q => reg_file_MAX_reg_register_data(11)
    );
  reg_file_MAX_reg_register_data_12 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_12_IBUF_5,
      Q => reg_file_MAX_reg_register_data(12)
    );
  reg_file_MAX_reg_register_data_13 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_13_IBUF_4,
      Q => reg_file_MAX_reg_register_data(13)
    );
  reg_file_MAX_reg_register_data_14 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_14_IBUF_3,
      Q => reg_file_MAX_reg_register_data(14)
    );
  reg_file_MAX_reg_register_data_15 : FDCE
    port map (
      C => clk_BUFGP_18,
      CE => reg_file_write_to(3),
      CLR => rst_IBUF_20,
      D => data_15_IBUF_2,
      Q => reg_file_MAX_reg_register_data(15)
    );
  prsclr_counter_inst_d0_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(0),
      Q => prsclr_counter_inst_d0_q_97
    );
  prsclr_counter_inst_gen1_10_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(10),
      Q => prsclr_counter_inst_gen1_10_latch_q_107
    );
  prsclr_counter_inst_gen1_9_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(9),
      Q => prsclr_counter_inst_gen1_9_latch_q_106
    );
  prsclr_counter_inst_gen1_8_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(8),
      Q => prsclr_counter_inst_gen1_8_latch_q_105
    );
  prsclr_counter_inst_gen1_7_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(7),
      Q => prsclr_counter_inst_gen1_7_latch_q_104
    );
  prsclr_counter_inst_gen1_6_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(6),
      Q => prsclr_counter_inst_gen1_6_latch_q_103
    );
  prsclr_counter_inst_gen1_5_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(5),
      Q => prsclr_counter_inst_gen1_5_latch_q_102
    );
  prsclr_counter_inst_gen1_4_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(4),
      Q => prsclr_counter_inst_gen1_4_latch_q_101
    );
  prsclr_counter_inst_gen1_3_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(3),
      Q => prsclr_counter_inst_gen1_3_latch_q_100
    );
  prsclr_counter_inst_gen1_2_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(2),
      Q => prsclr_counter_inst_gen1_2_latch_q_99
    );
  prsclr_counter_inst_gen1_1_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => prsclr_counter_inst_n(1),
      Q => prsclr_counter_inst_gen1_1_latch_q_98
    );
  main_counter_d0_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(0),
      Q => main_counter_d0_q_90
    );
  main_counter_gen1_15_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(15),
      Q => main_counter_gen1_15_latch_q_75
    );
  main_counter_gen1_14_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(14),
      Q => main_counter_gen1_14_latch_q_76
    );
  main_counter_gen1_13_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(13),
      Q => main_counter_gen1_13_latch_q_77
    );
  main_counter_gen1_12_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(12),
      Q => main_counter_gen1_12_latch_q_78
    );
  main_counter_gen1_11_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(11),
      Q => main_counter_gen1_11_latch_q_79
    );
  main_counter_gen1_10_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(10),
      Q => main_counter_gen1_10_latch_q_80
    );
  main_counter_gen1_9_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(9),
      Q => main_counter_gen1_9_latch_q_81
    );
  main_counter_gen1_8_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(8),
      Q => main_counter_gen1_8_latch_q_82
    );
  main_counter_gen1_7_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(7),
      Q => main_counter_gen1_7_latch_q_83
    );
  main_counter_gen1_6_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(6),
      Q => main_counter_gen1_6_latch_q_84
    );
  main_counter_gen1_5_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(5),
      Q => main_counter_gen1_5_latch_q_85
    );
  main_counter_gen1_4_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(4),
      Q => main_counter_gen1_4_latch_q_86
    );
  main_counter_gen1_3_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(3),
      Q => main_counter_gen1_3_latch_q_87
    );
  main_counter_gen1_2_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(2),
      Q => main_counter_gen1_2_latch_q_88
    );
  main_counter_gen1_1_latch_q : FDC
    port map (
      C => clk_BUFGP_18,
      CLR => rst_IBUF_20,
      D => main_counter_n(1),
      Q => main_counter_gen1_1_latch_q_89
    );
  count_refresh1 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => clr_IBUF_19,
      I1 => start_IBUF_21,
      I2 => started_92,
      O => count_refresh
    );
  reset1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => out_rst_d1_q_91,
      I1 => started_92,
      O => reset_OBUF_95
    );
  reg_file_write_to_3_1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => started_92,
      I1 => command_1_IBUF_0,
      I2 => command_0_IBUF_1,
      O => reg_file_write_to(3)
    );
  reg_file_write_to_2_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => started_92,
      I1 => command_1_IBUF_0,
      I2 => command_0_IBUF_1,
      O => reg_file_write_to(2)
    );
  reg_file_write_to_1_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => started_92,
      I1 => command_0_IBUF_1,
      I2 => command_1_IBUF_0,
      O => reg_file_write_to(1)
    );
  reg_file_write_to_0_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => started_92,
      I1 => command_1_IBUF_0,
      I2 => command_0_IBUF_1,
      O => reg_file_write_to(0)
    );
  prsclr_counter_inst_n_8_11 : LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_7_latch_q_104,
      I1 => prsclr_counter_inst_gen1_6_latch_q_103,
      I2 => prsclr_counter_inst_gen1_5_latch_q_102,
      I3 => prsclr_counter_inst_gen1_4_latch_q_101,
      I4 => prsclr_counter_inst_gen1_3_latch_q_100,
      I5 => prsclr_counter_inst_n_3_1,
      O => prsclr_counter_inst_n_8_1_118
    );
  prsclr_counter_inst_n_6_1 : LUT6
    generic map(
      INIT => X"00000000AAAA6AAA"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_6_latch_q_103,
      I1 => prsclr_counter_inst_gen1_5_latch_q_102,
      I2 => prsclr_counter_inst_gen1_4_latch_q_101,
      I3 => prsclr_counter_inst_gen1_3_latch_q_100,
      I4 => prsclr_counter_inst_n_3_1,
      I5 => count_trigger,
      O => prsclr_counter_inst_n(6)
    );
  prsclr_counter_inst_n_5_1 : LUT5
    generic map(
      INIT => X"0000AA6A"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_5_latch_q_102,
      I1 => prsclr_counter_inst_gen1_4_latch_q_101,
      I2 => prsclr_counter_inst_gen1_3_latch_q_100,
      I3 => prsclr_counter_inst_n_3_1,
      I4 => count_trigger,
      O => prsclr_counter_inst_n(5)
    );
  prsclr_counter_inst_n_1_1 : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_1_latch_q_98,
      I1 => prsclr_counter_inst_d0_q_97,
      I2 => count_trigger,
      O => prsclr_counter_inst_n(1)
    );
  prsclr_counter_inst_n_2_1 : LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_2_latch_q_99,
      I1 => prsclr_counter_inst_gen1_1_latch_q_98,
      I2 => prsclr_counter_inst_d0_q_97,
      I3 => count_trigger,
      O => prsclr_counter_inst_n(2)
    );
  prsclr_counter_inst_n_3_11 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_2_latch_q_99,
      I1 => prsclr_counter_inst_gen1_1_latch_q_98,
      I2 => prsclr_counter_inst_d0_q_97,
      O => prsclr_counter_inst_n_3_1
    );
  prsclr_counter_inst_n_0_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => prsclr_counter_inst_d0_q_97,
      I1 => count_trigger,
      O => prsclr_counter_inst_n(0)
    );
  nmi1 : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => reg_file_NMI_reg_register_data(10),
      I1 => main_counter_gen1_10_latch_q_80,
      I2 => reg_file_NMI_reg_register_data(12),
      I3 => main_counter_gen1_12_latch_q_78,
      I4 => reg_file_NMI_reg_register_data(13),
      I5 => main_counter_gen1_13_latch_q_77,
      O => nmi1_146
    );
  nmi2 : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => main_counter_gen1_9_latch_q_81,
      I1 => reg_file_NMI_reg_register_data(9),
      I2 => reg_file_NMI_reg_register_data(4),
      I3 => main_counter_gen1_4_latch_q_86,
      I4 => reg_file_NMI_reg_register_data(8),
      I5 => main_counter_gen1_8_latch_q_82,
      O => nmi2_147
    );
  nmi3 : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => reg_file_NMI_reg_register_data(1),
      I1 => main_counter_gen1_1_latch_q_89,
      I2 => main_counter_gen1_4_latch_q_86,
      I3 => reg_file_NMI_reg_register_data(4),
      I4 => reg_file_NMI_reg_register_data(5),
      I5 => main_counter_gen1_5_latch_q_85,
      O => nmi3_148
    );
  nmi4 : LUT5
    generic map(
      INIT => X"80000080"
    )
    port map (
      I0 => nmi2_147,
      I1 => nmi3_148,
      I2 => nmi1_146,
      I3 => reg_file_NMI_reg_register_data(11),
      I4 => main_counter_gen1_11_latch_q_79,
      O => nmi4_149
    );
  nmi5 : LUT6
    generic map(
      INIT => X"0000000090090000"
    )
    port map (
      I0 => reg_file_NMI_reg_register_data(7),
      I1 => main_counter_gen1_7_latch_q_83,
      I2 => reg_file_NMI_reg_register_data(6),
      I3 => main_counter_gen1_6_latch_q_84,
      I4 => started_92,
      I5 => rst_IBUF_20,
      O => nmi5_150
    );
  nmi6 : LUT6
    generic map(
      INIT => X"9099000000009099"
    )
    port map (
      I0 => reg_file_NMI_reg_register_data(0),
      I1 => main_counter_d0_q_90,
      I2 => main_counter_gen1_12_latch_q_78,
      I3 => reg_file_NMI_reg_register_data(12),
      I4 => reg_file_NMI_reg_register_data(15),
      I5 => main_counter_gen1_15_latch_q_75,
      O => nmi6_151
    );
  nmi7 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => reg_file_NMI_reg_register_data(14),
      I1 => main_counter_gen1_14_latch_q_76,
      I2 => reg_file_NMI_reg_register_data(3),
      I3 => main_counter_gen1_3_latch_q_87,
      I4 => reg_file_NMI_reg_register_data(2),
      I5 => main_counter_gen1_2_latch_q_88,
      O => nmi7_152
    );
  nmi8 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => nmi5_150,
      I1 => nmi6_151,
      I2 => nmi7_152,
      I3 => nmi4_149,
      O => nmi_OBUF_96
    );
  cmp_MIN_comparator_equal_0_1 : LUT6
    generic map(
      INIT => X"8040201088442211"
    )
    port map (
      I0 => reg_file_MIN_reg_register_data(13),
      I1 => reg_file_MIN_reg_register_data(10),
      I2 => reg_file_MIN_reg_register_data(12),
      I3 => main_counter_gen1_13_latch_q_77,
      I4 => main_counter_gen1_10_latch_q_80,
      I5 => main_counter_gen1_12_latch_q_78,
      O => cmp_MIN_comparator_equal(0)
    );
  cmp_MIN_comparator_equal_0_2 : LUT6
    generic map(
      INIT => X"8844080422110201"
    )
    port map (
      I0 => reg_file_MIN_reg_register_data(11),
      I1 => reg_file_MIN_reg_register_data(0),
      I2 => reg_file_MIN_reg_register_data(12),
      I3 => main_counter_gen1_11_latch_q_79,
      I4 => main_counter_gen1_12_latch_q_78,
      I5 => main_counter_d0_q_90,
      O => cmp_MIN_comparator_equal_0_1_154
    );
  cmp_MIN_comparator_equal_0_3 : LUT6
    generic map(
      INIT => X"8008200240041001"
    )
    port map (
      I0 => reg_file_MIN_reg_register_data(6),
      I1 => reg_file_MIN_reg_register_data(7),
      I2 => reg_file_MIN_reg_register_data(2),
      I3 => main_counter_gen1_2_latch_q_88,
      I4 => main_counter_gen1_7_latch_q_83,
      I5 => main_counter_gen1_6_latch_q_84,
      O => cmp_MIN_comparator_equal_0_2_155
    );
  cmp_MIN_comparator_equal_0_4 : LUT6
    generic map(
      INIT => X"8008200240041001"
    )
    port map (
      I0 => reg_file_MIN_reg_register_data(3),
      I1 => reg_file_MIN_reg_register_data(14),
      I2 => reg_file_MIN_reg_register_data(15),
      I3 => main_counter_gen1_15_latch_q_75,
      I4 => main_counter_gen1_14_latch_q_76,
      I5 => main_counter_gen1_3_latch_q_87,
      O => cmp_MIN_comparator_equal_0_3_156
    );
  cmp_MIN_comparator_equal_0_5 : LUT6
    generic map(
      INIT => X"8020401088224411"
    )
    port map (
      I0 => reg_file_MIN_reg_register_data(8),
      I1 => reg_file_MIN_reg_register_data(9),
      I2 => reg_file_MIN_reg_register_data(4),
      I3 => main_counter_gen1_9_latch_q_81,
      I4 => main_counter_gen1_8_latch_q_82,
      I5 => main_counter_gen1_4_latch_q_86,
      O => cmp_MIN_comparator_equal_0_4_157
    );
  cmp_MIN_comparator_equal_0_6 : LUT6
    generic map(
      INIT => X"8808440422021101"
    )
    port map (
      I0 => reg_file_MIN_reg_register_data(5),
      I1 => reg_file_MIN_reg_register_data(1),
      I2 => reg_file_MIN_reg_register_data(4),
      I3 => main_counter_gen1_4_latch_q_86,
      I4 => main_counter_gen1_5_latch_q_85,
      I5 => main_counter_gen1_1_latch_q_89,
      O => cmp_MIN_comparator_equal_0_5_158
    );
  cmp_MIN_comparator_equal_0_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => cmp_MIN_comparator_equal_0_3_156,
      I1 => cmp_MIN_comparator_equal(0),
      I2 => cmp_MIN_comparator_equal_0_1_154,
      I3 => cmp_MIN_comparator_equal_0_4_157,
      I4 => cmp_MIN_comparator_equal_0_5_158,
      I5 => cmp_MIN_comparator_equal_0_2_155,
      O => eq(0)
    );
  out_rst_delta_1_1 : LUT6
    generic map(
      INIT => X"88AA080A44550405"
    )
    port map (
      I0 => reg_file_MAX_reg_register_data(5),
      I1 => reg_file_MAX_reg_register_data(4),
      I2 => reg_file_MAX_reg_register_data(12),
      I3 => main_counter_gen1_4_latch_q_86,
      I4 => main_counter_gen1_12_latch_q_78,
      I5 => main_counter_gen1_5_latch_q_85,
      O => out_rst_delta_1_1_159
    );
  out_rst_delta_1_2 : LUT6
    generic map(
      INIT => X"8040080420100201"
    )
    port map (
      I0 => reg_file_MAX_reg_register_data(9),
      I1 => reg_file_MAX_reg_register_data(6),
      I2 => reg_file_MAX_reg_register_data(7),
      I3 => main_counter_gen1_9_latch_q_81,
      I4 => main_counter_gen1_7_latch_q_83,
      I5 => main_counter_gen1_6_latch_q_84,
      O => out_rst_delta_1_2_160
    );
  out_rst_delta_1_3 : LUT6
    generic map(
      INIT => X"8020080240100401"
    )
    port map (
      I0 => reg_file_MAX_reg_register_data(0),
      I1 => reg_file_MAX_reg_register_data(10),
      I2 => reg_file_MAX_reg_register_data(11),
      I3 => main_counter_gen1_10_latch_q_80,
      I4 => main_counter_gen1_11_latch_q_79,
      I5 => main_counter_d0_q_90,
      O => out_rst_delta_1_3_161
    );
  out_rst_delta_1_4 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => out_rst_d1_q_91,
      I1 => out_rst_delta_1_3_161,
      I2 => out_rst_delta_1_1_159,
      I3 => out_rst_delta_1_2_160,
      O => out_rst_delta_1_4_162
    );
  out_rst_delta_1_5 : LUT5
    generic map(
      INIT => X"80204010"
    )
    port map (
      I0 => reg_file_MAX_reg_register_data(2),
      I1 => reg_file_MAX_reg_register_data(3),
      I2 => out_rst_d0_q_112,
      I3 => main_counter_gen1_3_latch_q_87,
      I4 => main_counter_gen1_2_latch_q_88,
      O => out_rst_delta_1_5_163
    );
  out_rst_delta_1_6 : LUT6
    generic map(
      INIT => X"8040884420102211"
    )
    port map (
      I0 => reg_file_MAX_reg_register_data(13),
      I1 => reg_file_MAX_reg_register_data(8),
      I2 => reg_file_MAX_reg_register_data(12),
      I3 => main_counter_gen1_13_latch_q_77,
      I4 => main_counter_gen1_12_latch_q_78,
      I5 => main_counter_gen1_8_latch_q_82,
      O => out_rst_delta_1_6_164
    );
  out_rst_delta_1_7 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => reg_file_MAX_reg_register_data(15),
      I1 => main_counter_gen1_15_latch_q_75,
      I2 => reg_file_MAX_reg_register_data(14),
      I3 => main_counter_gen1_14_latch_q_76,
      I4 => reg_file_MAX_reg_register_data(1),
      I5 => main_counter_gen1_1_latch_q_89,
      O => out_rst_delta_1_7_165
    );
  out_rst_delta_1_8 : LUT6
    generic map(
      INIT => X"D000000000000000"
    )
    port map (
      I0 => reg_file_MAX_reg_register_data(4),
      I1 => main_counter_gen1_4_latch_q_86,
      I2 => out_rst_delta_1_7_165,
      I3 => out_rst_delta_1_5_163,
      I4 => out_rst_delta_1_6_164,
      I5 => out_rst_delta_1_4_162,
      O => out_rst_delta_1_8_166
    );
  command_1_IBUF : IBUF
    port map (
      I => command(1),
      O => command_1_IBUF_0
    );
  command_0_IBUF : IBUF
    port map (
      I => command(0),
      O => command_0_IBUF_1
    );
  data_15_IBUF : IBUF
    port map (
      I => data(15),
      O => data_15_IBUF_2
    );
  data_14_IBUF : IBUF
    port map (
      I => data(14),
      O => data_14_IBUF_3
    );
  data_13_IBUF : IBUF
    port map (
      I => data(13),
      O => data_13_IBUF_4
    );
  data_12_IBUF : IBUF
    port map (
      I => data(12),
      O => data_12_IBUF_5
    );
  data_11_IBUF : IBUF
    port map (
      I => data(11),
      O => data_11_IBUF_6
    );
  data_10_IBUF : IBUF
    port map (
      I => data(10),
      O => data_10_IBUF_7
    );
  data_9_IBUF : IBUF
    port map (
      I => data(9),
      O => data_9_IBUF_8
    );
  data_8_IBUF : IBUF
    port map (
      I => data(8),
      O => data_8_IBUF_9
    );
  data_7_IBUF : IBUF
    port map (
      I => data(7),
      O => data_7_IBUF_10
    );
  data_6_IBUF : IBUF
    port map (
      I => data(6),
      O => data_6_IBUF_11
    );
  data_5_IBUF : IBUF
    port map (
      I => data(5),
      O => data_5_IBUF_12
    );
  data_4_IBUF : IBUF
    port map (
      I => data(4),
      O => data_4_IBUF_13
    );
  data_3_IBUF : IBUF
    port map (
      I => data(3),
      O => data_3_IBUF_14
    );
  data_2_IBUF : IBUF
    port map (
      I => data(2),
      O => data_2_IBUF_15
    );
  data_1_IBUF : IBUF
    port map (
      I => data(1),
      O => data_1_IBUF_16
    );
  data_0_IBUF : IBUF
    port map (
      I => data(0),
      O => data_0_IBUF_17
    );
  clr_IBUF : IBUF
    port map (
      I => clr,
      O => clr_IBUF_19
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_20
    );
  start_IBUF : IBUF
    port map (
      I => start,
      O => start_IBUF_21
    );
  reset_OBUF : OBUF
    port map (
      I => reset_OBUF_95,
      O => reset
    );
  nmi_OBUF : OBUF
    port map (
      I => nmi_OBUF_96,
      O => nmi
    );
  started : FDR
    port map (
      C => clk_BUFGP_18,
      D => started_glue_set_191,
      R => rst_IBUF_20,
      Q => started_92
    );
  started_glue_set : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => started_92,
      I1 => start_IBUF_21,
      O => started_glue_set_191
    );
  main_counter_n_9_11_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => main_counter_gen1_10_latch_q_80,
      I1 => main_counter_gen1_8_latch_q_82,
      O => N8
    );
  main_counter_n_2_11_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => main_counter_gen1_4_latch_q_86,
      I1 => main_counter_gen1_3_latch_q_87,
      I2 => main_counter_gen1_2_latch_q_88,
      O => N10
    );
  PSreg_to_ps_3_SW1 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => reg_file_PS_reg_register_data(1),
      I1 => reg_file_PS_reg_register_data(0),
      I2 => prsclr_counter_inst_gen1_9_latch_q_106,
      I3 => prsclr_counter_inst_gen1_8_latch_q_105,
      I4 => prsclr_counter_inst_gen1_10_latch_q_107,
      O => N12
    );
  PSreg_to_ps_3_Q : LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      I0 => reg_file_PS_reg_register_data(3),
      I1 => reg_file_PS_reg_register_data(2),
      I2 => prsclr_counter_inst_gen1_10_latch_q_107,
      I3 => N12,
      I4 => prsclr_Mmux_clk_enable_s_6_109,
      I5 => prsclr_Mmux_clk_enable_s_7_108,
      O => count_trigger
    );
  main_counter_n_13_11_SW0 : LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => main_counter_gen1_14_latch_q_76,
      I1 => main_counter_gen1_13_latch_q_77,
      I2 => main_counter_gen1_11_latch_q_79,
      I3 => main_counter_gen1_12_latch_q_78,
      I4 => main_counter_gen1_7_latch_q_83,
      O => N16
    );
  main_counter_n_13_11_SW2 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => main_counter_gen1_13_latch_q_77,
      I1 => main_counter_gen1_11_latch_q_79,
      I2 => main_counter_gen1_9_latch_q_81,
      I3 => main_counter_gen1_12_latch_q_78,
      I4 => main_counter_gen1_7_latch_q_83,
      I5 => N8,
      O => N20
    );
  main_counter_n_9_11_SW1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => main_counter_gen1_11_latch_q_79,
      I1 => main_counter_gen1_10_latch_q_80,
      I2 => main_counter_gen1_8_latch_q_82,
      O => N22
    );
  main_counter_n_9_11_SW2 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => main_counter_gen1_10_latch_q_80,
      I1 => main_counter_gen1_8_latch_q_82,
      O => N24
    );
  main_counter_n_3_1 : LUT6
    generic map(
      INIT => X"00006AAA0000AAAA"
    )
    port map (
      I0 => main_counter_gen1_3_latch_q_87,
      I1 => main_counter_gen1_2_latch_q_88,
      I2 => main_counter_gen1_1_latch_q_89,
      I3 => main_counter_d0_q_90,
      I4 => count_refresh,
      I5 => count_trigger,
      O => main_counter_n(3)
    );
  main_counter_n_2_2 : LUT5
    generic map(
      INIT => X"006A00AA"
    )
    port map (
      I0 => main_counter_gen1_2_latch_q_88,
      I1 => main_counter_gen1_1_latch_q_89,
      I2 => main_counter_d0_q_90,
      I3 => count_refresh,
      I4 => count_trigger,
      O => main_counter_n(2)
    );
  main_counter_n_2_11_SW1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => main_counter_gen1_2_latch_q_88,
      I1 => main_counter_gen1_1_latch_q_89,
      O => N26
    );
  main_counter_n_4_1 : LUT6
    generic map(
      INIT => X"00006CCC0000CCCC"
    )
    port map (
      I0 => main_counter_gen1_3_latch_q_87,
      I1 => main_counter_gen1_4_latch_q_86,
      I2 => main_counter_d0_q_90,
      I3 => N26,
      I4 => count_refresh,
      I5 => count_trigger,
      O => main_counter_n(4)
    );
  main_counter_n_2_11_SW2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => main_counter_gen1_3_latch_q_87,
      I1 => main_counter_gen1_2_latch_q_88,
      I2 => main_counter_gen1_1_latch_q_89,
      O => N28
    );
  main_counter_n_5_1 : LUT6
    generic map(
      INIT => X"00006CCC0000CCCC"
    )
    port map (
      I0 => main_counter_gen1_4_latch_q_86,
      I1 => main_counter_gen1_5_latch_q_85,
      I2 => main_counter_d0_q_90,
      I3 => N28,
      I4 => count_refresh,
      I5 => count_trigger,
      O => main_counter_n(5)
    );
  prsclr_counter_inst_n_7_21_SW0 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_7_latch_q_104,
      I1 => prsclr_counter_inst_gen1_6_latch_q_103,
      I2 => prsclr_counter_inst_gen1_5_latch_q_102,
      I3 => prsclr_counter_inst_gen1_4_latch_q_101,
      I4 => prsclr_counter_inst_gen1_3_latch_q_100,
      O => N32
    );
  prsclr_counter_inst_n_9_1 : LUT6
    generic map(
      INIT => X"00000000AAEA2262"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_9_latch_q_106,
      I1 => prsclr_counter_inst_gen1_8_latch_q_105,
      I2 => N32,
      I3 => prsclr_counter_inst_n_3_1,
      I4 => prsclr_counter_inst_n_8_1_118,
      I5 => count_trigger,
      O => prsclr_counter_inst_n(9)
    );
  prsclr_counter_inst_n_7_21_SW1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_6_latch_q_103,
      I1 => prsclr_counter_inst_gen1_5_latch_q_102,
      I2 => prsclr_counter_inst_gen1_4_latch_q_101,
      I3 => prsclr_counter_inst_gen1_3_latch_q_100,
      O => N34
    );
  prsclr_counter_inst_n_8_1 : LUT6
    generic map(
      INIT => X"00000000AAEA0040"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_8_latch_q_105,
      I1 => prsclr_counter_inst_gen1_7_latch_q_104,
      I2 => N34,
      I3 => prsclr_counter_inst_n_3_1,
      I4 => prsclr_counter_inst_n_8_1_118,
      I5 => count_trigger,
      O => prsclr_counter_inst_n(8)
    );
  main_counter_n_7_11_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => main_counter_gen1_5_latch_q_85,
      I1 => main_counter_d0_q_90,
      I2 => main_counter_gen1_1_latch_q_89,
      O => N40
    );
  main_counter_n_7_2 : LUT6
    generic map(
      INIT => X"006A00AA00AA00AA"
    )
    port map (
      I0 => main_counter_gen1_7_latch_q_83,
      I1 => main_counter_gen1_6_latch_q_84,
      I2 => N40,
      I3 => count_refresh,
      I4 => N10,
      I5 => count_trigger,
      O => main_counter_n(7)
    );
  main_counter_n_7_11_SW1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => main_counter_gen1_6_latch_q_84,
      I1 => main_counter_gen1_5_latch_q_85,
      I2 => main_counter_d0_q_90,
      I3 => main_counter_gen1_1_latch_q_89,
      O => N42
    );
  main_counter_n_8_1 : LUT6
    generic map(
      INIT => X"00A600AA00AA00AA"
    )
    port map (
      I0 => main_counter_gen1_8_latch_q_82,
      I1 => main_counter_gen1_7_latch_q_83,
      I2 => N42,
      I3 => count_refresh,
      I4 => N10,
      I5 => count_trigger,
      O => main_counter_n(8)
    );
  main_counter_n_7_11_SW2 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => main_counter_gen1_6_latch_q_84,
      I1 => main_counter_gen1_5_latch_q_85,
      I2 => main_counter_d0_q_90,
      I3 => main_counter_gen1_8_latch_q_82,
      I4 => main_counter_gen1_1_latch_q_89,
      O => N44
    );
  main_counter_n_9_2 : LUT6
    generic map(
      INIT => X"006A00AA00AA00AA"
    )
    port map (
      I0 => main_counter_gen1_9_latch_q_81,
      I1 => main_counter_gen1_7_latch_q_83,
      I2 => N44,
      I3 => count_refresh,
      I4 => N10,
      I5 => count_trigger,
      O => main_counter_n(9)
    );
  main_counter_n_7_11_SW3 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => main_counter_gen1_7_latch_q_83,
      I1 => main_counter_gen1_6_latch_q_84,
      I2 => main_counter_gen1_5_latch_q_85,
      I3 => main_counter_d0_q_90,
      I4 => main_counter_gen1_8_latch_q_82,
      I5 => main_counter_gen1_1_latch_q_89,
      O => N46
    );
  main_counter_n_10_1 : LUT6
    generic map(
      INIT => X"00A600AA00AA00AA"
    )
    port map (
      I0 => main_counter_gen1_10_latch_q_80,
      I1 => main_counter_gen1_9_latch_q_81,
      I2 => N46,
      I3 => count_refresh,
      I4 => N10,
      I5 => PSreg_to_ps(3),
      O => main_counter_n(10)
    );
  main_counter_n_7_11_SW4 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => main_counter_gen1_9_latch_q_81,
      I1 => main_counter_gen1_6_latch_q_84,
      I2 => main_counter_gen1_5_latch_q_85,
      I3 => main_counter_gen1_1_latch_q_89,
      I4 => main_counter_d0_q_90,
      I5 => N16,
      O => N48
    );
  main_counter_n_15_1 : LUT6
    generic map(
      INIT => X"060A0A0A0A0A0A0A"
    )
    port map (
      I0 => main_counter_gen1_15_latch_q_75,
      I1 => N8,
      I2 => count_refresh,
      I3 => N10,
      I4 => N48,
      I5 => PSreg_to_ps(3),
      O => main_counter_n(15)
    );
  main_counter_n_7_11_SW5 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => main_counter_gen1_13_latch_q_77,
      I1 => clr_IBUF_19,
      I2 => start_IBUF_21,
      I3 => started_92,
      O => N50
    );
  main_counter_n_13_1 : LUT6
    generic map(
      INIT => X"31333B3333333333"
    )
    port map (
      I0 => main_counter_gen1_6_latch_q_84,
      I1 => N50,
      I2 => N18,
      I3 => N10,
      I4 => N51,
      I5 => PSreg_to_ps(3),
      O => main_counter_n(13)
    );
  main_counter_n_7_11_SW7 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => main_counter_gen1_14_latch_q_76,
      I1 => clr_IBUF_19,
      I2 => start_IBUF_21,
      I3 => started_92,
      O => N53
    );
  main_counter_n_14_1 : LUT6
    generic map(
      INIT => X"333313B333333333"
    )
    port map (
      I0 => main_counter_gen1_6_latch_q_84,
      I1 => N53,
      I2 => N10,
      I3 => N54,
      I4 => N20,
      I5 => PSreg_to_ps(3),
      O => main_counter_n(14)
    );
  main_counter_n_7_11_SW9 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => main_counter_gen1_9_latch_q_81,
      I1 => main_counter_gen1_7_latch_q_83,
      I2 => main_counter_gen1_6_latch_q_84,
      I3 => main_counter_gen1_5_latch_q_85,
      I4 => main_counter_d0_q_90,
      I5 => main_counter_gen1_1_latch_q_89,
      O => N56
    );
  main_counter_n_12_1 : LUT6
    generic map(
      INIT => X"4444441444444444"
    )
    port map (
      I0 => count_refresh,
      I1 => main_counter_gen1_12_latch_q_78,
      I2 => N10,
      I3 => N22,
      I4 => N56,
      I5 => PSreg_to_ps(3),
      O => main_counter_n(12)
    );
  main_counter_n_11_1 : LUT6
    generic map(
      INIT => X"4444441444444444"
    )
    port map (
      I0 => count_refresh,
      I1 => main_counter_gen1_11_latch_q_79,
      I2 => N10,
      I3 => N24,
      I4 => N56,
      I5 => PSreg_to_ps(3),
      O => main_counter_n(11)
    );
  out_rst_delta_1_9 : LUT6
    generic map(
      INIT => X"FFFFFFFF4544CDCC"
    )
    port map (
      I0 => out_rst_d0_q_112,
      I1 => out_rst_d1_q_91,
      I2 => eq(0),
      I3 => clr_IBUF_19,
      I4 => start_IBUF_21,
      I5 => out_rst_delta_1_8_166,
      O => out_rst_delta(1)
    );
  main_counter_n_7_11_SW6 : MUXF7
    port map (
      I0 => N60,
      I1 => N61,
      S => main_counter_gen1_5_latch_q_85,
      O => N51
    );
  main_counter_n_7_11_SW6_F : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => main_counter_gen1_13_latch_q_77,
      I1 => clr_IBUF_19,
      I2 => start_IBUF_21,
      I3 => started_92,
      O => N60
    );
  main_counter_n_7_11_SW6_G : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF95FF"
    )
    port map (
      I0 => main_counter_gen1_13_latch_q_77,
      I1 => main_counter_gen1_1_latch_q_89,
      I2 => main_counter_d0_q_90,
      I3 => started_92,
      I4 => start_IBUF_21,
      I5 => clr_IBUF_19,
      O => N61
    );
  main_counter_n_7_11_SW8 : MUXF7
    port map (
      I0 => N62,
      I1 => N63,
      S => main_counter_gen1_5_latch_q_85,
      O => N54
    );
  main_counter_n_7_11_SW8_F : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => main_counter_gen1_14_latch_q_76,
      I1 => clr_IBUF_19,
      I2 => start_IBUF_21,
      I3 => started_92,
      O => N62
    );
  main_counter_n_7_11_SW8_G : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF95FF"
    )
    port map (
      I0 => main_counter_gen1_14_latch_q_76,
      I1 => main_counter_gen1_1_latch_q_89,
      I2 => main_counter_d0_q_90,
      I3 => started_92,
      I4 => start_IBUF_21,
      I5 => clr_IBUF_19,
      O => N63
    );
  prsclr_counter_inst_n_7_SW1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_3_latch_q_100,
      I1 => prsclr_counter_inst_gen1_4_latch_q_101,
      I2 => prsclr_counter_inst_gen1_5_latch_q_102,
      I3 => prsclr_counter_inst_gen1_6_latch_q_103,
      O => N64
    );
  prsclr_counter_inst_n_7_Q : LUT6
    generic map(
      INIT => X"00000000AAAA6AAA"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_7_latch_q_104,
      I1 => prsclr_counter_inst_gen1_2_latch_q_99,
      I2 => prsclr_counter_inst_gen1_1_latch_q_98,
      I3 => prsclr_counter_inst_d0_q_97,
      I4 => N64,
      I5 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(7)
    );
  main_counter_n_6_1_SW1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => main_counter_d0_q_90,
      I1 => main_counter_gen1_1_latch_q_89,
      I2 => main_counter_gen1_2_latch_q_88,
      I3 => main_counter_gen1_3_latch_q_87,
      I4 => main_counter_gen1_4_latch_q_86,
      I5 => main_counter_gen1_5_latch_q_85,
      O => N66
    );
  main_counter_n_6_1 : LUT6
    generic map(
      INIT => X"0100100010001000"
    )
    port map (
      I0 => start_IBUF_21,
      I1 => clr_IBUF_19,
      I2 => main_counter_gen1_6_latch_q_84,
      I3 => started_92,
      I4 => N66,
      I5 => PSreg_to_ps(3),
      O => main_counter_n(6)
    );
  out_rst_delta_0_1 : LUT5
    generic map(
      INIT => X"5F3F5F30"
    )
    port map (
      I0 => start_IBUF_21,
      I1 => clr_IBUF_19,
      I2 => out_rst_d0_q_112,
      I3 => out_rst_d1_q_91,
      I4 => eq(0),
      O => out_rst_delta(0)
    );
  main_counter_n_13_11_SW1 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => main_counter_gen1_10_latch_q_80,
      I1 => main_counter_gen1_8_latch_q_82,
      I2 => main_counter_gen1_9_latch_q_81,
      I3 => main_counter_gen1_7_latch_q_83,
      I4 => main_counter_gen1_12_latch_q_78,
      I5 => main_counter_gen1_11_latch_q_79,
      O => N18
    );
  prsclr_counter_inst_n_3_2 : LUT5
    generic map(
      INIT => X"00007F80"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_2_latch_q_99,
      I1 => prsclr_counter_inst_gen1_1_latch_q_98,
      I2 => prsclr_counter_inst_d0_q_97,
      I3 => prsclr_counter_inst_gen1_3_latch_q_100,
      I4 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(3)
    );
  prsclr_counter_inst_n_4_1 : LUT6
    generic map(
      INIT => X"000000007F80FF00"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_2_latch_q_99,
      I1 => prsclr_counter_inst_gen1_1_latch_q_98,
      I2 => prsclr_counter_inst_d0_q_97,
      I3 => prsclr_counter_inst_gen1_4_latch_q_101,
      I4 => prsclr_counter_inst_gen1_3_latch_q_100,
      I5 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(4)
    );
  main_counter_n_0_1 : LUT5
    generic map(
      INIT => X"00101000"
    )
    port map (
      I0 => clr_IBUF_19,
      I1 => start_IBUF_21,
      I2 => started_92,
      I3 => main_counter_d0_q_90,
      I4 => PSreg_to_ps(3),
      O => main_counter_n(0)
    );
  main_counter_n_1_1 : LUT6
    generic map(
      INIT => X"0010100010001000"
    )
    port map (
      I0 => clr_IBUF_19,
      I1 => start_IBUF_21,
      I2 => started_92,
      I3 => main_counter_gen1_1_latch_q_89,
      I4 => main_counter_d0_q_90,
      I5 => PSreg_to_ps(3),
      O => main_counter_n(1)
    );
  prsclr_counter_inst_n_10_1 : LUT5
    generic map(
      INIT => X"0000CC6C"
    )
    port map (
      I0 => prsclr_counter_inst_gen1_9_latch_q_106,
      I1 => prsclr_counter_inst_gen1_10_latch_q_107,
      I2 => prsclr_counter_inst_gen1_8_latch_q_105,
      I3 => prsclr_counter_inst_n_8_1_118,
      I4 => PSreg_to_ps(3),
      O => prsclr_counter_inst_n(10)
    );
  PSreg_to_ps_3_1 : LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      I0 => reg_file_PS_reg_register_data(3),
      I1 => reg_file_PS_reg_register_data(2),
      I2 => prsclr_counter_inst_gen1_10_latch_q_107,
      I3 => N12,
      I4 => prsclr_Mmux_clk_enable_s_6_109,
      I5 => prsclr_Mmux_clk_enable_s_7_108,
      O => PSreg_to_ps(3)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_18
    );

end Structure;

