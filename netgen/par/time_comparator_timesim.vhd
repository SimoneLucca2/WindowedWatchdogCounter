--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: time_comparator_timesim.vhd
-- /___/   /\     Timestamp: Wed Jun 21 21:22:50 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf time_comparator.pcf -rpw 100 -tpw 0 -ar Structure -tm time_comparator -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim time_comparator.ncd time_comparator_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: time_comparator.ncd
-- Output file	: /home/simone/OneDrive/Windowed_Watchdog_Counter/netgen/par/time_comparator_timesim.vhd
-- # of Entities	: 1
-- Design Name	: time_comparator
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

entity time_comparator is
  port (
    eq_min : out STD_LOGIC; 
    eq_nmi : out STD_LOGIC; 
    eq_max : out STD_LOGIC; 
    count : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    MIN_count : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    NMI_count : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    MAX_count : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end time_comparator;

architecture Structure of time_comparator is
  signal MIN_count_0_IBUF_0 : STD_LOGIC; 
  signal MIN_count_1_IBUF_0 : STD_LOGIC; 
  signal MIN_count_2_IBUF_0 : STD_LOGIC; 
  signal MIN_count_3_IBUF_0 : STD_LOGIC; 
  signal MIN_count_4_IBUF_0 : STD_LOGIC; 
  signal MIN_count_5_IBUF_0 : STD_LOGIC; 
  signal MIN_count_6_IBUF_0 : STD_LOGIC; 
  signal MIN_count_7_IBUF_0 : STD_LOGIC; 
  signal count_10_IBUF_0 : STD_LOGIC; 
  signal MIN_count_8_IBUF_0 : STD_LOGIC; 
  signal count_11_IBUF_0 : STD_LOGIC; 
  signal MIN_count_9_IBUF_0 : STD_LOGIC; 
  signal count_12_IBUF_0 : STD_LOGIC; 
  signal count_13_IBUF_0 : STD_LOGIC; 
  signal count_14_IBUF_0 : STD_LOGIC; 
  signal count_15_IBUF_0 : STD_LOGIC; 
  signal count_0_IBUF_0 : STD_LOGIC; 
  signal count_1_IBUF_0 : STD_LOGIC; 
  signal count_2_IBUF_0 : STD_LOGIC; 
  signal NMI_count_10_IBUF_0 : STD_LOGIC; 
  signal NMI_count_12_IBUF_0 : STD_LOGIC; 
  signal NMI_count_13_IBUF_0 : STD_LOGIC; 
  signal count_3_IBUF_0 : STD_LOGIC; 
  signal NMI_comparator_equal_0_1_436 : STD_LOGIC; 
  signal NMI_count_0_IBUF_0 : STD_LOGIC; 
  signal NMI_count_11_IBUF_0 : STD_LOGIC; 
  signal count_4_IBUF_0 : STD_LOGIC; 
  signal NMI_comparator_equal_0_2_440 : STD_LOGIC; 
  signal NMI_count_2_IBUF_0 : STD_LOGIC; 
  signal count_7_IBUF_0 : STD_LOGIC; 
  signal NMI_count_7_IBUF_0 : STD_LOGIC; 
  signal count_6_IBUF_0 : STD_LOGIC; 
  signal NMI_count_6_IBUF_0 : STD_LOGIC; 
  signal eq_nmi_OBUF_446 : STD_LOGIC; 
  signal NMI_comparator_equal_0_4_447 : STD_LOGIC; 
  signal NMI_comparator_equal_0_5_448 : STD_LOGIC; 
  signal NMI_count_15_IBUF_0 : STD_LOGIC; 
  signal NMI_count_14_IBUF_0 : STD_LOGIC; 
  signal NMI_count_3_IBUF_0 : STD_LOGIC; 
  signal count_5_IBUF_0 : STD_LOGIC; 
  signal NMI_count_9_IBUF_0 : STD_LOGIC; 
  signal count_9_IBUF_0 : STD_LOGIC; 
  signal NMI_count_4_IBUF_0 : STD_LOGIC; 
  signal count_8_IBUF_0 : STD_LOGIC; 
  signal NMI_count_8_IBUF_0 : STD_LOGIC; 
  signal NMI_count_1_IBUF_0 : STD_LOGIC; 
  signal NMI_count_5_IBUF_0 : STD_LOGIC; 
  signal MIN_count_10_IBUF_0 : STD_LOGIC; 
  signal MAX_count_10_IBUF_0 : STD_LOGIC; 
  signal MAX_count_12_IBUF_0 : STD_LOGIC; 
  signal MAX_count_13_IBUF_0 : STD_LOGIC; 
  signal MAX_comparator_equal_0_1_465 : STD_LOGIC; 
  signal MAX_count_0_IBUF_0 : STD_LOGIC; 
  signal MAX_count_11_IBUF_0 : STD_LOGIC; 
  signal MAX_count_2_IBUF_0 : STD_LOGIC; 
  signal MAX_count_7_IBUF_0 : STD_LOGIC; 
  signal MAX_count_6_IBUF_0 : STD_LOGIC; 
  signal eq_max_OBUF_471 : STD_LOGIC; 
  signal MAX_comparator_equal_0_4_472 : STD_LOGIC; 
  signal MAX_count_15_IBUF_0 : STD_LOGIC; 
  signal MAX_count_14_IBUF_0 : STD_LOGIC; 
  signal MAX_count_3_IBUF_0 : STD_LOGIC; 
  signal MIN_count_11_IBUF_0 : STD_LOGIC; 
  signal MAX_count_9_IBUF_0 : STD_LOGIC; 
  signal MAX_count_4_IBUF_0 : STD_LOGIC; 
  signal MAX_count_8_IBUF_0 : STD_LOGIC; 
  signal MAX_count_1_IBUF_0 : STD_LOGIC; 
  signal MAX_count_5_IBUF_0 : STD_LOGIC; 
  signal MIN_count_12_IBUF_0 : STD_LOGIC; 
  signal MIN_comparator_equal_0_2_484 : STD_LOGIC; 
  signal MIN_comparator_equal_0_3_485 : STD_LOGIC; 
  signal MIN_count_13_IBUF_0 : STD_LOGIC; 
  signal MIN_comparator_equal_0_4_487 : STD_LOGIC; 
  signal MIN_count_14_IBUF_0 : STD_LOGIC; 
  signal eq_min_OBUF_489 : STD_LOGIC; 
  signal MIN_count_15_IBUF_0 : STD_LOGIC; 
  signal MIN_comparator_equal_0_1_491 : STD_LOGIC; 
  signal MIN_comparator_equal_0_5_492 : STD_LOGIC; 
  signal MAX_comparator_equal_0_5_493 : STD_LOGIC; 
  signal MAX_comparator_equal_0_2_494 : STD_LOGIC; 
  signal MAX_comparator_equal_0_3_495 : STD_LOGIC; 
  signal NMI_comparator_equal_0_3_496 : STD_LOGIC; 
  signal MIN_count_0_IBUF_1 : STD_LOGIC; 
  signal MIN_count_1_IBUF_4 : STD_LOGIC; 
  signal MIN_count_2_IBUF_7 : STD_LOGIC; 
  signal MIN_count_3_IBUF_10 : STD_LOGIC; 
  signal MIN_count_4_IBUF_13 : STD_LOGIC; 
  signal MIN_count_5_IBUF_16 : STD_LOGIC; 
  signal MIN_count_6_IBUF_19 : STD_LOGIC; 
  signal MIN_count_7_IBUF_22 : STD_LOGIC; 
  signal count_10_IBUF_25 : STD_LOGIC; 
  signal MIN_count_8_IBUF_28 : STD_LOGIC; 
  signal count_11_IBUF_31 : STD_LOGIC; 
  signal MIN_count_9_IBUF_34 : STD_LOGIC; 
  signal count_12_IBUF_37 : STD_LOGIC; 
  signal count_13_IBUF_40 : STD_LOGIC; 
  signal count_14_IBUF_43 : STD_LOGIC; 
  signal count_15_IBUF_46 : STD_LOGIC; 
  signal count_0_IBUF_49 : STD_LOGIC; 
  signal count_1_IBUF_52 : STD_LOGIC; 
  signal count_2_IBUF_55 : STD_LOGIC; 
  signal count_3_IBUF_58 : STD_LOGIC; 
  signal count_4_IBUF_61 : STD_LOGIC; 
  signal NMI_count_10_IBUF_64 : STD_LOGIC; 
  signal count_5_IBUF_67 : STD_LOGIC; 
  signal NMI_count_11_IBUF_70 : STD_LOGIC; 
  signal count_6_IBUF_73 : STD_LOGIC; 
  signal MIN_count_10_IBUF_76 : STD_LOGIC; 
  signal NMI_count_12_IBUF_79 : STD_LOGIC; 
  signal count_7_IBUF_82 : STD_LOGIC; 
  signal NMI_count_0_IBUF_85 : STD_LOGIC; 
  signal MIN_count_11_IBUF_88 : STD_LOGIC; 
  signal NMI_count_13_IBUF_91 : STD_LOGIC; 
  signal count_8_IBUF_94 : STD_LOGIC; 
  signal NMI_count_1_IBUF_97 : STD_LOGIC; 
  signal MIN_count_12_IBUF_100 : STD_LOGIC; 
  signal NMI_count_14_IBUF_103 : STD_LOGIC; 
  signal count_9_IBUF_106 : STD_LOGIC; 
  signal NMI_count_2_IBUF_109 : STD_LOGIC; 
  signal MIN_count_13_IBUF_112 : STD_LOGIC; 
  signal NMI_count_15_IBUF_115 : STD_LOGIC; 
  signal NMI_count_3_IBUF_118 : STD_LOGIC; 
  signal MIN_count_14_IBUF_121 : STD_LOGIC; 
  signal NMI_count_4_IBUF_124 : STD_LOGIC; 
  signal MIN_count_15_IBUF_127 : STD_LOGIC; 
  signal MAX_count_0_IBUF_130 : STD_LOGIC; 
  signal NMI_count_5_IBUF_133 : STD_LOGIC; 
  signal MAX_count_1_IBUF_136 : STD_LOGIC; 
  signal NMI_count_6_IBUF_139 : STD_LOGIC; 
  signal MAX_count_2_IBUF_142 : STD_LOGIC; 
  signal NMI_count_7_IBUF_145 : STD_LOGIC; 
  signal MAX_count_10_IBUF_148 : STD_LOGIC; 
  signal MAX_count_3_IBUF_151 : STD_LOGIC; 
  signal NMI_count_8_IBUF_154 : STD_LOGIC; 
  signal MAX_count_11_IBUF_157 : STD_LOGIC; 
  signal MAX_count_4_IBUF_160 : STD_LOGIC; 
  signal NMI_count_9_IBUF_163 : STD_LOGIC; 
  signal MAX_count_12_IBUF_166 : STD_LOGIC; 
  signal MAX_count_5_IBUF_169 : STD_LOGIC; 
  signal MAX_count_13_IBUF_172 : STD_LOGIC; 
  signal MAX_count_6_IBUF_175 : STD_LOGIC; 
  signal MAX_count_14_IBUF_178 : STD_LOGIC; 
  signal MAX_count_7_IBUF_181 : STD_LOGIC; 
  signal MAX_count_15_IBUF_184 : STD_LOGIC; 
  signal MAX_count_8_IBUF_187 : STD_LOGIC; 
  signal MAX_count_9_IBUF_192 : STD_LOGIC; 
  signal NlwBufferSignal_eq_max_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_eq_min_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_eq_nmi_OBUF_I : STD_LOGIC; 
  signal NMI_comparator_equal : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal MAX_comparator_equal : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal MIN_comparator_equal : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  MIN_count_0_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_0_IBUF_1,
      I => MIN_count(0)
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_0_IBUF_1,
      O => MIN_count_0_IBUF_0
    );
  MIN_count_1_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_1_IBUF_4,
      I => MIN_count(1)
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_1_IBUF_4,
      O => MIN_count_1_IBUF_0
    );
  MIN_count_2_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_2_IBUF_7,
      I => MIN_count(2)
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_2_IBUF_7,
      O => MIN_count_2_IBUF_0
    );
  MIN_count_3_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_3_IBUF_10,
      I => MIN_count(3)
    );
  ProtoComp0_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_3_IBUF_10,
      O => MIN_count_3_IBUF_0
    );
  MIN_count_4_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_4_IBUF_13,
      I => MIN_count(4)
    );
  ProtoComp0_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_4_IBUF_13,
      O => MIN_count_4_IBUF_0
    );
  MIN_count_5_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_5_IBUF_16,
      I => MIN_count(5)
    );
  ProtoComp0_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_5_IBUF_16,
      O => MIN_count_5_IBUF_0
    );
  MIN_count_6_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_6_IBUF_19,
      I => MIN_count(6)
    );
  ProtoComp0_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_6_IBUF_19,
      O => MIN_count_6_IBUF_0
    );
  MIN_count_7_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_7_IBUF_22,
      I => MIN_count(7)
    );
  ProtoComp0_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_7_IBUF_22,
      O => MIN_count_7_IBUF_0
    );
  count_10_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_10_IBUF_25,
      I => count(10)
    );
  ProtoComp0_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_10_IBUF_25,
      O => count_10_IBUF_0
    );
  MIN_count_8_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_8_IBUF_28,
      I => MIN_count(8)
    );
  ProtoComp0_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_8_IBUF_28,
      O => MIN_count_8_IBUF_0
    );
  count_11_IBUF : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_11_IBUF_31,
      I => count(11)
    );
  ProtoComp0_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_11_IBUF_31,
      O => count_11_IBUF_0
    );
  MIN_count_9_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_9_IBUF_34,
      I => MIN_count(9)
    );
  ProtoComp0_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_9_IBUF_34,
      O => MIN_count_9_IBUF_0
    );
  count_12_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_12_IBUF_37,
      I => count(12)
    );
  ProtoComp0_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_12_IBUF_37,
      O => count_12_IBUF_0
    );
  count_13_IBUF : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_13_IBUF_40,
      I => count(13)
    );
  ProtoComp0_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_13_IBUF_40,
      O => count_13_IBUF_0
    );
  count_14_IBUF : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_14_IBUF_43,
      I => count(14)
    );
  ProtoComp0_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_14_IBUF_43,
      O => count_14_IBUF_0
    );
  count_15_IBUF : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_15_IBUF_46,
      I => count(15)
    );
  ProtoComp0_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_15_IBUF_46,
      O => count_15_IBUF_0
    );
  count_0_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_0_IBUF_49,
      I => count(0)
    );
  ProtoComp0_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_0_IBUF_49,
      O => count_0_IBUF_0
    );
  count_1_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_1_IBUF_52,
      I => count(1)
    );
  ProtoComp0_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_1_IBUF_52,
      O => count_1_IBUF_0
    );
  count_2_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_2_IBUF_55,
      I => count(2)
    );
  ProtoComp0_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_2_IBUF_55,
      O => count_2_IBUF_0
    );
  count_3_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_3_IBUF_58,
      I => count(3)
    );
  ProtoComp0_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_3_IBUF_58,
      O => count_3_IBUF_0
    );
  count_4_IBUF : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_4_IBUF_61,
      I => count(4)
    );
  ProtoComp0_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_4_IBUF_61,
      O => count_4_IBUF_0
    );
  NMI_count_10_IBUF : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_10_IBUF_64,
      I => NMI_count(10)
    );
  ProtoComp0_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_10_IBUF_64,
      O => NMI_count_10_IBUF_0
    );
  count_5_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_5_IBUF_67,
      I => count(5)
    );
  ProtoComp0_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_5_IBUF_67,
      O => count_5_IBUF_0
    );
  NMI_count_11_IBUF : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_11_IBUF_70,
      I => NMI_count(11)
    );
  ProtoComp0_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_11_IBUF_70,
      O => NMI_count_11_IBUF_0
    );
  count_6_IBUF : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_6_IBUF_73,
      I => count(6)
    );
  ProtoComp0_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_6_IBUF_73,
      O => count_6_IBUF_0
    );
  MIN_count_10_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_10_IBUF_76,
      I => MIN_count(10)
    );
  ProtoComp0_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_10_IBUF_76,
      O => MIN_count_10_IBUF_0
    );
  NMI_count_12_IBUF : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_12_IBUF_79,
      I => NMI_count(12)
    );
  ProtoComp0_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_12_IBUF_79,
      O => NMI_count_12_IBUF_0
    );
  count_7_IBUF : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_7_IBUF_82,
      I => count(7)
    );
  ProtoComp0_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_7_IBUF_82,
      O => count_7_IBUF_0
    );
  NMI_count_0_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_0_IBUF_85,
      I => NMI_count(0)
    );
  ProtoComp0_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_0_IBUF_85,
      O => NMI_count_0_IBUF_0
    );
  MIN_count_11_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_11_IBUF_88,
      I => MIN_count(11)
    );
  ProtoComp0_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_11_IBUF_88,
      O => MIN_count_11_IBUF_0
    );
  NMI_count_13_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_13_IBUF_91,
      I => NMI_count(13)
    );
  ProtoComp0_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_13_IBUF_91,
      O => NMI_count_13_IBUF_0
    );
  count_8_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_8_IBUF_94,
      I => count(8)
    );
  ProtoComp0_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_8_IBUF_94,
      O => count_8_IBUF_0
    );
  NMI_count_1_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_1_IBUF_97,
      I => NMI_count(1)
    );
  ProtoComp0_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_1_IBUF_97,
      O => NMI_count_1_IBUF_0
    );
  MIN_count_12_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_12_IBUF_100,
      I => MIN_count(12)
    );
  ProtoComp0_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_12_IBUF_100,
      O => MIN_count_12_IBUF_0
    );
  NMI_count_14_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_14_IBUF_103,
      I => NMI_count(14)
    );
  ProtoComp0_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_14_IBUF_103,
      O => NMI_count_14_IBUF_0
    );
  count_9_IBUF : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 202 ps
    )
    port map (
      O => count_9_IBUF_106,
      I => count(9)
    );
  ProtoComp0_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 202 ps
    )
    port map (
      I => count_9_IBUF_106,
      O => count_9_IBUF_0
    );
  NMI_count_2_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_2_IBUF_109,
      I => NMI_count(2)
    );
  ProtoComp0_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_2_IBUF_109,
      O => NMI_count_2_IBUF_0
    );
  MIN_count_13_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_13_IBUF_112,
      I => MIN_count(13)
    );
  ProtoComp0_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_13_IBUF_112,
      O => MIN_count_13_IBUF_0
    );
  NMI_count_15_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_15_IBUF_115,
      I => NMI_count(15)
    );
  ProtoComp0_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_15_IBUF_115,
      O => NMI_count_15_IBUF_0
    );
  NMI_count_3_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_3_IBUF_118,
      I => NMI_count(3)
    );
  ProtoComp0_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_3_IBUF_118,
      O => NMI_count_3_IBUF_0
    );
  MIN_count_14_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_14_IBUF_121,
      I => MIN_count(14)
    );
  ProtoComp0_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_14_IBUF_121,
      O => MIN_count_14_IBUF_0
    );
  NMI_count_4_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_4_IBUF_124,
      I => NMI_count(4)
    );
  ProtoComp0_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_4_IBUF_124,
      O => NMI_count_4_IBUF_0
    );
  MIN_count_15_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      O => MIN_count_15_IBUF_127,
      I => MIN_count(15)
    );
  ProtoComp0_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_count_15_IBUF_127,
      O => MIN_count_15_IBUF_0
    );
  MAX_count_0_IBUF : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_0_IBUF_130,
      I => MAX_count(0)
    );
  ProtoComp0_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_0_IBUF_130,
      O => MAX_count_0_IBUF_0
    );
  NMI_count_5_IBUF : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_5_IBUF_133,
      I => NMI_count(5)
    );
  ProtoComp0_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_5_IBUF_133,
      O => NMI_count_5_IBUF_0
    );
  MAX_count_1_IBUF : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_1_IBUF_136,
      I => MAX_count(1)
    );
  ProtoComp0_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_1_IBUF_136,
      O => MAX_count_1_IBUF_0
    );
  NMI_count_6_IBUF : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_6_IBUF_139,
      I => NMI_count(6)
    );
  ProtoComp0_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_6_IBUF_139,
      O => NMI_count_6_IBUF_0
    );
  MAX_count_2_IBUF : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_2_IBUF_142,
      I => MAX_count(2)
    );
  ProtoComp0_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_2_IBUF_142,
      O => MAX_count_2_IBUF_0
    );
  NMI_count_7_IBUF : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_7_IBUF_145,
      I => NMI_count(7)
    );
  ProtoComp0_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_7_IBUF_145,
      O => NMI_count_7_IBUF_0
    );
  MAX_count_10_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_10_IBUF_148,
      I => MAX_count(10)
    );
  ProtoComp0_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_10_IBUF_148,
      O => MAX_count_10_IBUF_0
    );
  MAX_count_3_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_3_IBUF_151,
      I => MAX_count(3)
    );
  ProtoComp0_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_3_IBUF_151,
      O => MAX_count_3_IBUF_0
    );
  NMI_count_8_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_8_IBUF_154,
      I => NMI_count(8)
    );
  ProtoComp0_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_8_IBUF_154,
      O => NMI_count_8_IBUF_0
    );
  MAX_count_11_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_11_IBUF_157,
      I => MAX_count(11)
    );
  ProtoComp0_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_11_IBUF_157,
      O => MAX_count_11_IBUF_0
    );
  MAX_count_4_IBUF : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_4_IBUF_160,
      I => MAX_count(4)
    );
  ProtoComp0_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_4_IBUF_160,
      O => MAX_count_4_IBUF_0
    );
  NMI_count_9_IBUF : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 202 ps
    )
    port map (
      O => NMI_count_9_IBUF_163,
      I => NMI_count(9)
    );
  ProtoComp0_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_count_9_IBUF_163,
      O => NMI_count_9_IBUF_0
    );
  MAX_count_12_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_12_IBUF_166,
      I => MAX_count(12)
    );
  ProtoComp0_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_12_IBUF_166,
      O => MAX_count_12_IBUF_0
    );
  MAX_count_5_IBUF : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_5_IBUF_169,
      I => MAX_count(5)
    );
  ProtoComp0_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_5_IBUF_169,
      O => MAX_count_5_IBUF_0
    );
  MAX_count_13_IBUF : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_13_IBUF_172,
      I => MAX_count(13)
    );
  ProtoComp0_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_13_IBUF_172,
      O => MAX_count_13_IBUF_0
    );
  MAX_count_6_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_6_IBUF_175,
      I => MAX_count(6)
    );
  ProtoComp0_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_6_IBUF_175,
      O => MAX_count_6_IBUF_0
    );
  MAX_count_14_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_14_IBUF_178,
      I => MAX_count(14)
    );
  ProtoComp0_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_14_IBUF_178,
      O => MAX_count_14_IBUF_0
    );
  MAX_count_7_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_7_IBUF_181,
      I => MAX_count(7)
    );
  ProtoComp0_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_7_IBUF_181,
      O => MAX_count_7_IBUF_0
    );
  MAX_count_15_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_15_IBUF_184,
      I => MAX_count(15)
    );
  ProtoComp0_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_15_IBUF_184,
      O => MAX_count_15_IBUF_0
    );
  MAX_count_8_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_8_IBUF_187,
      I => MAX_count(8)
    );
  ProtoComp0_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_8_IBUF_187,
      O => MAX_count_8_IBUF_0
    );
  eq_max_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => NlwBufferSignal_eq_max_OBUF_I,
      O => eq_max
    );
  MAX_count_9_IBUF : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 202 ps
    )
    port map (
      O => MAX_count_9_IBUF_192,
      I => MAX_count(9)
    );
  ProtoComp0_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_count_9_IBUF_192,
      O => MAX_count_9_IBUF_0
    );
  eq_min_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => NlwBufferSignal_eq_min_OBUF_I,
      O => eq_min
    );
  eq_nmi_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_eq_nmi_OBUF_I,
      O => eq_nmi
    );
  MIN_comparator_equal_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => X"8241000000008241"
    )
    port map (
      ADR5 => count_14_IBUF_0,
      ADR4 => MIN_count_14_IBUF_0,
      ADR2 => count_3_IBUF_0,
      ADR1 => MIN_count_3_IBUF_0,
      ADR0 => count_2_IBUF_0,
      ADR3 => MIN_count_2_IBUF_0,
      O => MIN_comparator_equal_0_4_487
    );
  NMI_comparator_equal_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => X"9000009009000009"
    )
    port map (
      ADR4 => count_2_IBUF_0,
      ADR3 => NMI_count_2_IBUF_0,
      ADR0 => count_7_IBUF_0,
      ADR1 => NMI_count_7_IBUF_0,
      ADR2 => count_6_IBUF_0,
      ADR5 => NMI_count_6_IBUF_0,
      O => NMI_comparator_equal_0_2_440
    );
  NMI_comparator_equal_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"B00B00000000B00B"
    )
    port map (
      ADR3 => count_10_IBUF_0,
      ADR2 => NMI_count_10_IBUF_0,
      ADR0 => NMI_count_12_IBUF_0,
      ADR1 => count_12_IBUF_0,
      ADR4 => count_13_IBUF_0,
      ADR5 => NMI_count_13_IBUF_0,
      O => NMI_comparator_equal(0)
    );
  NMI_comparator_equal_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"A20000A251000051"
    )
    port map (
      ADR3 => count_0_IBUF_0,
      ADR4 => NMI_count_0_IBUF_0,
      ADR2 => count_12_IBUF_0,
      ADR1 => NMI_count_12_IBUF_0,
      ADR0 => count_11_IBUF_0,
      ADR5 => NMI_count_11_IBUF_0,
      O => NMI_comparator_equal_0_1_436
    );
  NMI_comparator_equal_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"9909000000009909"
    )
    port map (
      ADR1 => NMI_count_9_IBUF_0,
      ADR0 => count_9_IBUF_0,
      ADR3 => NMI_count_4_IBUF_0,
      ADR2 => count_4_IBUF_0,
      ADR5 => count_8_IBUF_0,
      ADR4 => NMI_count_8_IBUF_0,
      O => NMI_comparator_equal_0_4_447
    );
  MIN_comparator_equal_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y27",
      INIT => X"F0300F0350100501"
    )
    port map (
      ADR5 => MIN_count_12_IBUF_0,
      ADR0 => count_12_IBUF_0,
      ADR3 => count_4_IBUF_0,
      ADR1 => MIN_count_4_IBUF_0,
      ADR4 => count_1_IBUF_0,
      ADR2 => MIN_count_1_IBUF_0,
      O => MIN_comparator_equal_0_2_484
    );
  MIN_comparator_equal_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => X"C0400C0430100301"
    )
    port map (
      ADR1 => count_0_IBUF_0,
      ADR5 => MIN_count_0_IBUF_0,
      ADR3 => count_12_IBUF_0,
      ADR0 => MIN_count_12_IBUF_0,
      ADR2 => count_11_IBUF_0,
      ADR4 => MIN_count_11_IBUF_0,
      O => MIN_comparator_equal_0_1_491
    );
  MIN_comparator_equal_0_6 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => X"8020401008020401"
    )
    port map (
      ADR4 => count_7_IBUF_0,
      ADR0 => MIN_count_7_IBUF_0,
      ADR2 => count_6_IBUF_0,
      ADR5 => MIN_count_6_IBUF_0,
      ADR3 => count_15_IBUF_0,
      ADR1 => MIN_count_15_IBUF_0,
      O => MIN_comparator_equal_0_5_492
    );
  MIN_comparator_equal_0_7 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => MIN_comparator_equal(0),
      ADR2 => MIN_comparator_equal_0_1_491,
      ADR5 => MIN_comparator_equal_0_2_484,
      ADR1 => MIN_comparator_equal_0_3_485,
      ADR0 => MIN_comparator_equal_0_4_487,
      ADR4 => MIN_comparator_equal_0_5_492,
      O => eq_min_OBUF_489
    );
  MIN_comparator_equal_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => X"82000082C30000C3"
    )
    port map (
      ADR3 => count_10_IBUF_0,
      ADR4 => MIN_count_10_IBUF_0,
      ADR0 => MIN_count_4_IBUF_0,
      ADR5 => count_4_IBUF_0,
      ADR1 => count_5_IBUF_0,
      ADR2 => MIN_count_5_IBUF_0,
      O => MIN_comparator_equal(0)
    );
  NMI_comparator_equal_0_6 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => X"B00000B00B00000B"
    )
    port map (
      ADR2 => count_1_IBUF_0,
      ADR5 => NMI_count_1_IBUF_0,
      ADR0 => count_4_IBUF_0,
      ADR1 => NMI_count_4_IBUF_0,
      ADR3 => count_5_IBUF_0,
      ADR4 => NMI_count_5_IBUF_0,
      O => NMI_comparator_equal_0_5_448
    );
  MIN_comparator_equal_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => X"8400210000840021"
    )
    port map (
      ADR3 => count_9_IBUF_0,
      ADR5 => MIN_count_9_IBUF_0,
      ADR0 => count_8_IBUF_0,
      ADR2 => MIN_count_8_IBUF_0,
      ADR1 => count_13_IBUF_0,
      ADR4 => MIN_count_13_IBUF_0,
      O => MIN_comparator_equal_0_3_485
    );
  MAX_comparator_equal_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"9000009099000099"
    )
    port map (
      ADR3 => MAX_count_9_IBUF_0,
      ADR4 => count_9_IBUF_0,
      ADR2 => MAX_count_4_IBUF_0,
      ADR5 => count_4_IBUF_0,
      ADR1 => count_8_IBUF_0,
      ADR0 => MAX_count_8_IBUF_0,
      O => MAX_comparator_equal_0_4_472
    );
  MAX_comparator_equal_0_6 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"8C23000000008C23"
    )
    port map (
      ADR1 => count_1_IBUF_0,
      ADR3 => MAX_count_1_IBUF_0,
      ADR0 => count_4_IBUF_0,
      ADR2 => MAX_count_4_IBUF_0,
      ADR5 => count_5_IBUF_0,
      ADR4 => MAX_count_5_IBUF_0,
      O => MAX_comparator_equal_0_5_493
    );
  MAX_comparator_equal_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"8008400420021001"
    )
    port map (
      ADR4 => count_2_IBUF_0,
      ADR0 => MAX_count_2_IBUF_0,
      ADR3 => count_7_IBUF_0,
      ADR2 => MAX_count_7_IBUF_0,
      ADR5 => count_6_IBUF_0,
      ADR1 => MAX_count_6_IBUF_0,
      O => MAX_comparator_equal_0_2_494
    );
  MAX_comparator_equal_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"8020401008020401"
    )
    port map (
      ADR3 => count_15_IBUF_0,
      ADR1 => MAX_count_15_IBUF_0,
      ADR0 => count_14_IBUF_0,
      ADR4 => MAX_count_14_IBUF_0,
      ADR2 => count_3_IBUF_0,
      ADR5 => MAX_count_3_IBUF_0,
      O => MAX_comparator_equal_0_3_495
    );
  MAX_comparator_equal_0_7 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => MAX_comparator_equal(0),
      ADR1 => MAX_comparator_equal_0_1_465,
      ADR5 => MAX_comparator_equal_0_4_472,
      ADR2 => MAX_comparator_equal_0_5_493,
      ADR0 => MAX_comparator_equal_0_2_494,
      ADR4 => MAX_comparator_equal_0_3_495,
      O => eq_max_OBUF_471
    );
  MAX_comparator_equal_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => X"8040A05008040A05"
    )
    port map (
      ADR2 => count_0_IBUF_0,
      ADR5 => MAX_count_0_IBUF_0,
      ADR1 => count_12_IBUF_0,
      ADR4 => MAX_count_12_IBUF_0,
      ADR3 => count_11_IBUF_0,
      ADR0 => MAX_count_11_IBUF_0,
      O => MAX_comparator_equal_0_1_465
    );
  MAX_comparator_equal_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => X"8088202240441011"
    )
    port map (
      ADR1 => count_10_IBUF_0,
      ADR4 => MAX_count_10_IBUF_0,
      ADR2 => MAX_count_12_IBUF_0,
      ADR3 => count_12_IBUF_0,
      ADR0 => count_13_IBUF_0,
      ADR5 => MAX_count_13_IBUF_0,
      O => MAX_comparator_equal(0)
    );
  NMI_comparator_equal_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => X"8008200240041001"
    )
    port map (
      ADR0 => count_15_IBUF_0,
      ADR5 => NMI_count_15_IBUF_0,
      ADR2 => count_14_IBUF_0,
      ADR3 => NMI_count_14_IBUF_0,
      ADR1 => count_3_IBUF_0,
      ADR4 => NMI_count_3_IBUF_0,
      O => NMI_comparator_equal_0_3_496
    );
  NMI_comparator_equal_0_7 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => NMI_comparator_equal(0),
      ADR3 => NMI_comparator_equal_0_1_436,
      ADR1 => NMI_comparator_equal_0_4_447,
      ADR0 => NMI_comparator_equal_0_5_448,
      ADR5 => NMI_comparator_equal_0_2_440,
      ADR4 => NMI_comparator_equal_0_3_496,
      O => eq_nmi_OBUF_446
    );
  NlwBufferBlock_eq_max_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => eq_max_OBUF_471,
      O => NlwBufferSignal_eq_max_OBUF_I
    );
  NlwBufferBlock_eq_min_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => eq_min_OBUF_489,
      O => NlwBufferSignal_eq_min_OBUF_I
    );
  NlwBufferBlock_eq_nmi_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => eq_nmi_OBUF_446,
      O => NlwBufferSignal_eq_nmi_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

