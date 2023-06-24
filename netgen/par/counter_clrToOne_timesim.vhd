--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: counter_clrToOne_timesim.vhd
-- /___/   /\     Timestamp: Wed Jun 21 21:06:18 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf counter_clrToOne.pcf -rpw 100 -tpw 0 -ar Structure -tm counter_clrToOne -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim counter_clrToOne.ncd counter_clrToOne_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: counter_clrToOne.ncd
-- Output file	: /home/simone/OneDrive/Windowed_Watchdog_Counter/netgen/par/counter_clrToOne_timesim.vhd
-- # of Entities	: 1
-- Design Name	: counter_clrToOne
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

entity counter_clrToOne is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    ce : in STD_LOGIC := 'X'; 
    clr : in STD_LOGIC := 'X'; 
    count : out STD_LOGIC_VECTOR ( 10 downto 0 ) 
  );
end counter_clrToOne;

architecture Structure of counter_clrToOne is
  signal clk_BUFGP : STD_LOGIC; 
  signal gen1_2_latch_q_149 : STD_LOGIC; 
  signal clr_IBUF_0 : STD_LOGIC; 
  signal ce_IBUF_0 : STD_LOGIC; 
  signal gen1_1_latch_q_152 : STD_LOGIC; 
  signal d0_q_153 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal gen1_4_latch_q_156 : STD_LOGIC; 
  signal gen1_3_latch_q_157 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal gen1_10_latch_q_159 : STD_LOGIC; 
  signal gen1_5_latch_q_160 : STD_LOGIC; 
  signal gen1_6_latch_q_161 : STD_LOGIC; 
  signal gen1_7_latch_q_162 : STD_LOGIC; 
  signal gen1_8_latch_q_163 : STD_LOGIC; 
  signal gen1_9_latch_q_164 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal clr_IBUF_4 : STD_LOGIC; 
  signal rst_IBUF_29 : STD_LOGIC; 
  signal ce_IBUF_32 : STD_LOGIC; 
  signal gen1_2_latch_q_pack_11 : STD_LOGIC; 
  signal N2_pack_9 : STD_LOGIC; 
  signal NlwBufferSignal_count_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_gen1_9_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_5_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_4_latch_q_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal a : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal n : STD_LOGIC_VECTOR ( 10 downto 0 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_1,
      I => clk
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_1,
      O => clk_BUFGP_IBUFG_0
    );
  clr_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => clr_IBUF_4,
      I => clr
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => clr_IBUF_4,
      O => clr_IBUF_0
    );
  count_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD143"
    )
    port map (
      I => NlwBufferSignal_count_10_OBUF_I,
      O => count(10)
    );
  count_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD121"
    )
    port map (
      I => NlwBufferSignal_count_0_OBUF_I,
      O => count(0)
    );
  count_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_count_1_OBUF_I,
      O => count(1)
    );
  count_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_count_2_OBUF_I,
      O => count(2)
    );
  count_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_count_3_OBUF_I,
      O => count(3)
    );
  count_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => NlwBufferSignal_count_4_OBUF_I,
      O => count(4)
    );
  count_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => NlwBufferSignal_count_5_OBUF_I,
      O => count(5)
    );
  count_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => NlwBufferSignal_count_6_OBUF_I,
      O => count(6)
    );
  count_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD138"
    )
    port map (
      I => NlwBufferSignal_count_7_OBUF_I,
      O => count(7)
    );
  count_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_count_8_OBUF_I,
      O => count(8)
    );
  count_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD144"
    )
    port map (
      I => NlwBufferSignal_count_9_OBUF_I,
      O => count(9)
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_29,
      I => rst
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_29,
      O => rst_IBUF_0
    );
  ce_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => ce_IBUF_32,
      I => ce
    );
  ProtoComp2_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => ce_IBUF_32,
      O => ce_IBUF_0
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
  a_9_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y0",
      INIT => X"0000FFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => gen1_6_latch_q_161,
      ADR5 => gen1_5_latch_q_160,
      O => N6
    );
  a_9_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y0",
      INIT => X"0F0FFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => gen1_9_latch_q_164,
      ADR2 => gen1_6_latch_q_161,
      ADR5 => gen1_5_latch_q_160,
      O => N4
    );
  gen1_9_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_9_latch_q_CLK,
      I => n(9),
      O => gen1_9_latch_q_164,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y0",
      INIT => X"2130303030303030"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR5 => gen1_8_latch_q_163,
      ADR3 => gen1_7_latch_q_162,
      ADR2 => gen1_9_latch_q_164,
      ADR0 => N6,
      ADR4 => a(5),
      O => n(9)
    );
  gen1_6_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_6_latch_q_CLK,
      I => n(6),
      O => gen1_6_latch_q_161,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y0",
      INIT => X"0033330033003300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => clr_IBUF_0,
      ADR3 => gen1_6_latch_q_161,
      ADR4 => gen1_5_latch_q_160,
      ADR5 => a(5),
      O => n(6)
    );
  gen1_10_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_10_latch_q_CLK,
      I => n(10),
      O => gen1_10_latch_q_159,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y0",
      INIT => X"3030123030303030"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR0 => gen1_8_latch_q_163,
      ADR3 => gen1_7_latch_q_162,
      ADR2 => gen1_10_latch_q_159,
      ADR4 => N4,
      ADR5 => a(5),
      O => n(10)
    );
  gen1_8_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_8_latch_q_CLK,
      I => n(8),
      O => gen1_8_latch_q_163,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y0",
      INIT => X"1333333320000000"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR2 => gen1_7_latch_q_162,
      ADR0 => gen1_6_latch_q_161,
      ADR5 => gen1_8_latch_q_163,
      ADR3 => gen1_5_latch_q_160,
      ADR4 => a(5),
      O => n(8)
    );
  gen1_7_latch_q_gen1_7_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_2_latch_q_pack_11,
      O => gen1_2_latch_q_149
    );
  gen1_7_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_7_latch_q_CLK,
      I => n(7),
      O => gen1_7_latch_q_162,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => X"0555555550000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => clr_IBUF_0,
      ADR4 => gen1_6_latch_q_161,
      ADR5 => gen1_7_latch_q_162,
      ADR3 => gen1_5_latch_q_160,
      ADR2 => a(5),
      O => n(7)
    );
  gen1_1_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_1_latch_q_CLK,
      I => n(1),
      O => gen1_1_latch_q_152,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => X"003F00C0003F00C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => clr_IBUF_0,
      ADR2 => ce_IBUF_0,
      ADR4 => gen1_1_latch_q_152,
      ADR1 => d0_q_153,
      ADR5 => '1',
      O => n(1)
    );
  n_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => X"006A00AA"
    )
    port map (
      ADR0 => gen1_2_latch_q_149,
      ADR3 => clr_IBUF_0,
      ADR2 => ce_IBUF_0,
      ADR4 => gen1_1_latch_q_152,
      ADR1 => d0_q_153,
      O => n(2)
    );
  gen1_2_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_2_latch_q_CLK,
      I => n(2),
      O => gen1_2_latch_q_pack_11,
      RST => rst_IBUF_0,
      SET => GND
    );
  gen1_5_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_5_latch_q_CLK,
      I => n(5),
      O => gen1_5_latch_q_160,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => X"000000FF00FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => gen1_5_latch_q_160,
      ADR3 => clr_IBUF_0,
      ADR5 => a(5),
      O => n(5)
    );
  a_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => ce_IBUF_0,
      ADR0 => gen1_4_latch_q_156,
      ADR2 => gen1_3_latch_q_157,
      ADR5 => gen1_2_latch_q_149,
      ADR3 => gen1_1_latch_q_152,
      ADR4 => d0_q_153,
      O => a(5)
    );
  gen1_3_latch_q_gen1_3_latch_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N2_pack_9,
      O => N2
    );
  gen1_3_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_3_latch_q_CLK,
      I => n(3),
      O => gen1_3_latch_q_157,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"1222222222222222"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR4 => ce_IBUF_0,
      ADR5 => d0_q_153,
      ADR0 => gen1_3_latch_q_157,
      ADR3 => gen1_1_latch_q_152,
      ADR2 => gen1_2_latch_q_149,
      O => n(3)
    );
  d0_q : X_FF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_d0_q_CLK,
      I => n(0),
      O => d0_q_153,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"AAFFFFAAAAFFFFAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => clr_IBUF_0,
      ADR4 => d0_q_153,
      ADR3 => ce_IBUF_0,
      ADR5 => '1',
      O => n(0)
    );
  n_4_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => d0_q_153,
      ADR3 => ce_IBUF_0,
      O => N2_pack_9
    );
  gen1_4_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_4_latch_q_CLK,
      I => n(4),
      O => gen1_4_latch_q_156,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"4144444444444444"
    )
    port map (
      ADR0 => clr_IBUF_0,
      ADR5 => gen1_2_latch_q_149,
      ADR4 => gen1_1_latch_q_152,
      ADR1 => gen1_4_latch_q_156,
      ADR3 => gen1_3_latch_q_157,
      ADR2 => N2,
      O => n(4)
    );
  NlwBufferBlock_count_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_10_latch_q_159,
      O => NlwBufferSignal_count_10_OBUF_I
    );
  NlwBufferBlock_count_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => d0_q_153,
      O => NlwBufferSignal_count_0_OBUF_I
    );
  NlwBufferBlock_count_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_1_latch_q_152,
      O => NlwBufferSignal_count_1_OBUF_I
    );
  NlwBufferBlock_count_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_2_latch_q_149,
      O => NlwBufferSignal_count_2_OBUF_I
    );
  NlwBufferBlock_count_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_3_latch_q_157,
      O => NlwBufferSignal_count_3_OBUF_I
    );
  NlwBufferBlock_count_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_4_latch_q_156,
      O => NlwBufferSignal_count_4_OBUF_I
    );
  NlwBufferBlock_count_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_5_latch_q_160,
      O => NlwBufferSignal_count_5_OBUF_I
    );
  NlwBufferBlock_count_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_6_latch_q_161,
      O => NlwBufferSignal_count_6_OBUF_I
    );
  NlwBufferBlock_count_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_7_latch_q_162,
      O => NlwBufferSignal_count_7_OBUF_I
    );
  NlwBufferBlock_count_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_8_latch_q_163,
      O => NlwBufferSignal_count_8_OBUF_I
    );
  NlwBufferBlock_count_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_9_latch_q_164,
      O => NlwBufferSignal_count_9_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_gen1_9_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_9_latch_q_CLK
    );
  NlwBufferBlock_gen1_6_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_6_latch_q_CLK
    );
  NlwBufferBlock_gen1_10_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_10_latch_q_CLK
    );
  NlwBufferBlock_gen1_8_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_8_latch_q_CLK
    );
  NlwBufferBlock_gen1_7_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_7_latch_q_CLK
    );
  NlwBufferBlock_gen1_1_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_1_latch_q_CLK
    );
  NlwBufferBlock_gen1_2_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_2_latch_q_CLK
    );
  NlwBufferBlock_gen1_5_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_5_latch_q_CLK
    );
  NlwBufferBlock_gen1_3_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_3_latch_q_CLK
    );
  NlwBufferBlock_d0_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_d0_q_CLK
    );
  NlwBufferBlock_gen1_4_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_4_latch_q_CLK
    );
  NlwBlock_counter_clrToOne_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_counter_clrToOne_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

