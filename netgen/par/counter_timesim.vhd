--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: counter_timesim.vhd
-- /___/   /\     Timestamp: Wed Jun 21 19:56:21 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf counter.pcf -rpw 100 -tpw 0 -ar Structure -tm counter -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim counter.ncd counter_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: counter.ncd
-- Output file	: /home/simone/OneDrive/Windowed_Watchdog_Counter/netgen/par/counter_timesim.vhd
-- # of Entities	: 1
-- Design Name	: counter
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

entity counter is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    ce : in STD_LOGIC := 'X'; 
    clr : in STD_LOGIC := 'X'; 
    count : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end counter;

architecture Structure of counter is
  signal clk_BUFGP : STD_LOGIC; 
  signal clr_IBUF_0 : STD_LOGIC; 
  signal gen1_6_latch_q_242 : STD_LOGIC; 
  signal gen1_5_latch_q_243 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal gen1_14_latch_q_246 : STD_LOGIC; 
  signal gen1_12_latch_q_247 : STD_LOGIC; 
  signal gen1_11_latch_q_248 : STD_LOGIC; 
  signal gen1_10_latch_q_249 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal gen1_9_latch_q_252 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal gen1_13_latch_q_256 : STD_LOGIC; 
  signal gen1_7_latch_q_257 : STD_LOGIC; 
  signal gen1_8_latch_q_258 : STD_LOGIC; 
  signal ce_IBUF_0 : STD_LOGIC; 
  signal gen1_4_latch_q_260 : STD_LOGIC; 
  signal gen1_3_latch_q_261 : STD_LOGIC; 
  signal gen1_2_latch_q_262 : STD_LOGIC; 
  signal gen1_1_latch_q_263 : STD_LOGIC; 
  signal d0_q_264 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal gen1_15_latch_q_266 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal clr_IBUF_4 : STD_LOGIC; 
  signal rst_IBUF_39 : STD_LOGIC; 
  signal ce_IBUF_42 : STD_LOGIC; 
  signal N4_pack_14 : STD_LOGIC; 
  signal gen1_2_latch_q_pack_16 : STD_LOGIC; 
  signal NlwBufferSignal_count_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_count_15_OBUF_I : STD_LOGIC; 
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
  signal NlwBufferSignal_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_11_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_5_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_12_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_14_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_15_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_4_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_gen1_13_latch_q_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal a : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal n : STD_LOGIC_VECTOR ( 15 downto 0 ); 
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
  ProtoComp9_IMUX : X_BUF
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
      LOC => "PAD146",
      PATHPULSE => 202 ps
    )
    port map (
      O => clr_IBUF_4,
      I => clr
    );
  ProtoComp9_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD146",
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
  count_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD144"
    )
    port map (
      I => NlwBufferSignal_count_11_OBUF_I,
      O => count(11)
    );
  count_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_count_12_OBUF_I,
      O => count(12)
    );
  count_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_count_13_OBUF_I,
      O => count(13)
    );
  count_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_count_14_OBUF_I,
      O => count(14)
    );
  count_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_count_15_OBUF_I,
      O => count(15)
    );
  count_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => NlwBufferSignal_count_0_OBUF_I,
      O => count(0)
    );
  count_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => NlwBufferSignal_count_1_OBUF_I,
      O => count(1)
    );
  count_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_count_2_OBUF_I,
      O => count(2)
    );
  count_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD138"
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
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_count_5_OBUF_I,
      O => count(5)
    );
  count_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD121"
    )
    port map (
      I => NlwBufferSignal_count_6_OBUF_I,
      O => count(6)
    );
  count_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_count_7_OBUF_I,
      O => count(7)
    );
  count_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_count_8_OBUF_I,
      O => count(8)
    );
  count_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_count_9_OBUF_I,
      O => count(9)
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_39,
      I => rst
    );
  ProtoComp9_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_39,
      O => rst_IBUF_0
    );
  ce_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      O => ce_IBUF_42,
      I => ce
    );
  ProtoComp9_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 202 ps
    )
    port map (
      I => ce_IBUF_42,
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
  a_9_1_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => X"3FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => gen1_13_latch_q_256,
      ADR1 => gen1_9_latch_q_252,
      ADR5 => gen1_7_latch_q_257,
      ADR3 => gen1_6_latch_q_242,
      ADR4 => gen1_5_latch_q_243,
      O => N20
    );
  a_9_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => X"0F0FFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => gen1_9_latch_q_252,
      ADR4 => gen1_6_latch_q_242,
      ADR5 => gen1_5_latch_q_243,
      O => N12
    );
  a_9_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => X"00FFFFFF00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => gen1_6_latch_q_242,
      ADR4 => gen1_5_latch_q_243,
      O => N10
    );
  gen1_9_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_9_latch_q_CLK,
      I => n(9),
      O => gen1_9_latch_q_252,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y9",
      INIT => X"4444144444444444"
    )
    port map (
      ADR0 => clr_IBUF_0,
      ADR3 => gen1_7_latch_q_257,
      ADR2 => gen1_8_latch_q_258,
      ADR1 => gen1_9_latch_q_252,
      ADR4 => N10,
      ADR5 => a(5),
      O => n(9)
    );
  a_9_1_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y10",
      INIT => X"3FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => gen1_11_latch_q_248,
      ADR1 => gen1_9_latch_q_252,
      ADR5 => gen1_10_latch_q_249,
      ADR4 => gen1_6_latch_q_242,
      ADR2 => gen1_5_latch_q_243,
      O => N16
    );
  a_9_1_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y10",
      INIT => X"0FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => gen1_9_latch_q_252,
      ADR2 => gen1_10_latch_q_249,
      ADR5 => gen1_6_latch_q_242,
      ADR3 => gen1_5_latch_q_243,
      O => N14
    );
  a_14_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y10",
      INIT => X"33FFFFFF33FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => gen1_12_latch_q_247,
      ADR4 => gen1_11_latch_q_248,
      ADR1 => gen1_10_latch_q_249,
      O => N8
    );
  gen1_10_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_10_latch_q_CLK,
      I => n(10),
      O => gen1_10_latch_q_249,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y10",
      INIT => X"5014505050505050"
    )
    port map (
      ADR0 => clr_IBUF_0,
      ADR1 => gen1_7_latch_q_257,
      ADR4 => gen1_8_latch_q_258,
      ADR2 => gen1_10_latch_q_249,
      ADR3 => N12,
      ADR5 => a(5),
      O => n(10)
    );
  gen1_11_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_11_latch_q_CLK,
      I => n(11),
      O => gen1_11_latch_q_248,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => X"5555155500004000"
    )
    port map (
      ADR0 => clr_IBUF_0,
      ADR1 => gen1_7_latch_q_257,
      ADR3 => gen1_8_latch_q_258,
      ADR5 => gen1_11_latch_q_248,
      ADR4 => N14,
      ADR2 => a(5),
      O => n(11)
    );
  gen1_6_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_6_latch_q_CLK,
      I => n(6),
      O => gen1_6_latch_q_242,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => X"005500AA00FF0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => clr_IBUF_0,
      ADR4 => gen1_6_latch_q_242,
      ADR5 => gen1_5_latch_q_243,
      ADR0 => a(5),
      O => n(6)
    );
  gen1_5_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_5_latch_q_CLK,
      I => n(5),
      O => gen1_5_latch_q_243,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => X"000000FF00FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => gen1_5_latch_q_243,
      ADR3 => clr_IBUF_0,
      ADR5 => a(5),
      O => n(5)
    );
  a_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => ce_IBUF_0,
      ADR5 => gen1_4_latch_q_260,
      ADR2 => gen1_3_latch_q_261,
      ADR3 => gen1_2_latch_q_262,
      ADR0 => gen1_1_latch_q_263,
      ADR4 => d0_q_264,
      O => a(5)
    );
  a_14_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"0FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => gen1_14_latch_q_246,
      ADR2 => gen1_12_latch_q_247,
      ADR4 => gen1_11_latch_q_248,
      ADR5 => gen1_10_latch_q_249,
      O => N6
    );
  gen1_12_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_12_latch_q_CLK,
      I => n(12),
      O => gen1_12_latch_q_247,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"3030303012303030"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR0 => gen1_7_latch_q_257,
      ADR3 => gen1_8_latch_q_258,
      ADR2 => gen1_12_latch_q_247,
      ADR5 => N16,
      ADR4 => a(5),
      O => n(12)
    );
  gen1_14_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_14_latch_q_CLK,
      I => n(14),
      O => gen1_14_latch_q_246,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_14_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"3333000033130020"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR0 => gen1_8_latch_q_258,
      ADR3 => N8,
      ADR4 => gen1_14_latch_q_246,
      ADR5 => N20,
      ADR2 => a(5),
      O => n(14)
    );
  gen1_15_latch_q : X_FF
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_15_latch_q_CLK,
      I => n(15),
      O => gen1_15_latch_q_266,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_15_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"4444444441444444"
    )
    port map (
      ADR0 => clr_IBUF_0,
      ADR4 => gen1_8_latch_q_258,
      ADR2 => N6,
      ADR1 => gen1_15_latch_q_266,
      ADR5 => N20,
      ADR3 => a(5),
      O => n(15)
    );
  gen1_3_latch_q_gen1_3_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_2_latch_q_pack_16,
      O => gen1_2_latch_q_262
    );
  gen1_3_latch_q_gen1_3_latch_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N4_pack_14,
      O => N4
    );
  gen1_3_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_3_latch_q_CLK,
      I => n(3),
      O => gen1_3_latch_q_261,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => X"00007FFF00008000"
    )
    port map (
      ADR4 => clr_IBUF_0,
      ADR1 => ce_IBUF_0,
      ADR3 => d0_q_264,
      ADR5 => gen1_3_latch_q_261,
      ADR0 => gen1_1_latch_q_263,
      ADR2 => gen1_2_latch_q_262,
      O => n(3)
    );
  gen1_1_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_1_latch_q_CLK,
      I => n(1),
      O => gen1_1_latch_q_263,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => X"005A00F0005A00F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => clr_IBUF_0,
      ADR0 => ce_IBUF_0,
      ADR2 => gen1_1_latch_q_263,
      ADR4 => d0_q_264,
      ADR5 => '1',
      O => n(1)
    );
  n_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => X"006C00CC"
    )
    port map (
      ADR1 => gen1_2_latch_q_262,
      ADR3 => clr_IBUF_0,
      ADR0 => ce_IBUF_0,
      ADR2 => gen1_1_latch_q_263,
      ADR4 => d0_q_264,
      O => n(2)
    );
  gen1_2_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_2_latch_q_CLK,
      I => n(2),
      O => gen1_2_latch_q_pack_16,
      RST => rst_IBUF_0,
      SET => GND
    );
  d0_q : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_d0_q_CLK,
      I => n(0),
      O => d0_q_264,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => X"1111444411114444"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => clr_IBUF_0,
      ADR4 => d0_q_264,
      ADR1 => ce_IBUF_0,
      ADR5 => '1',
      O => n(0)
    );
  n_4_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => X"3333FFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => d0_q_264,
      ADR1 => ce_IBUF_0,
      O => N4_pack_14
    );
  gen1_4_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_4_latch_q_CLK,
      I => n(4),
      O => gen1_4_latch_q_260,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => X"3133333302000000"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR0 => gen1_2_latch_q_262,
      ADR3 => gen1_1_latch_q_263,
      ADR5 => gen1_4_latch_q_260,
      ADR4 => gen1_3_latch_q_261,
      ADR2 => N4,
      O => n(4)
    );
  n_13_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR4 => gen1_12_latch_q_247,
      ADR0 => gen1_11_latch_q_248,
      ADR5 => gen1_10_latch_q_249,
      ADR3 => gen1_8_latch_q_258,
      ADR2 => gen1_6_latch_q_242,
      ADR1 => gen1_5_latch_q_243,
      O => N24
    );
  gen1_7_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_7_latch_q_CLK,
      I => n(7),
      O => gen1_7_latch_q_257,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"0555500055550000"
    )
    port map (
      ADR1 => '1',
      ADR0 => clr_IBUF_0,
      ADR3 => gen1_6_latch_q_242,
      ADR4 => gen1_7_latch_q_257,
      ADR2 => gen1_5_latch_q_243,
      ADR5 => a(5),
      O => n(7)
    );
  gen1_8_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_8_latch_q_CLK,
      I => n(8),
      O => gen1_8_latch_q_258,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"1333200033330000"
    )
    port map (
      ADR1 => clr_IBUF_0,
      ADR0 => gen1_7_latch_q_257,
      ADR3 => gen1_6_latch_q_242,
      ADR4 => gen1_8_latch_q_258,
      ADR2 => gen1_5_latch_q_243,
      ADR5 => a(5),
      O => n(8)
    );
  gen1_13_latch_q : X_FF
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_gen1_13_latch_q_CLK,
      I => n(13),
      O => gen1_13_latch_q_256,
      RST => rst_IBUF_0,
      SET => GND
    );
  n_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"5155040055550000"
    )
    port map (
      ADR0 => clr_IBUF_0,
      ADR1 => gen1_9_latch_q_252,
      ADR3 => gen1_7_latch_q_257,
      ADR4 => gen1_13_latch_q_256,
      ADR2 => N24,
      ADR5 => a(5),
      O => n(13)
    );
  NlwBufferBlock_count_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_10_latch_q_249,
      O => NlwBufferSignal_count_10_OBUF_I
    );
  NlwBufferBlock_count_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_11_latch_q_248,
      O => NlwBufferSignal_count_11_OBUF_I
    );
  NlwBufferBlock_count_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_12_latch_q_247,
      O => NlwBufferSignal_count_12_OBUF_I
    );
  NlwBufferBlock_count_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_13_latch_q_256,
      O => NlwBufferSignal_count_13_OBUF_I
    );
  NlwBufferBlock_count_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_14_latch_q_246,
      O => NlwBufferSignal_count_14_OBUF_I
    );
  NlwBufferBlock_count_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_15_latch_q_266,
      O => NlwBufferSignal_count_15_OBUF_I
    );
  NlwBufferBlock_count_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => d0_q_264,
      O => NlwBufferSignal_count_0_OBUF_I
    );
  NlwBufferBlock_count_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_1_latch_q_263,
      O => NlwBufferSignal_count_1_OBUF_I
    );
  NlwBufferBlock_count_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_2_latch_q_262,
      O => NlwBufferSignal_count_2_OBUF_I
    );
  NlwBufferBlock_count_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_3_latch_q_261,
      O => NlwBufferSignal_count_3_OBUF_I
    );
  NlwBufferBlock_count_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_4_latch_q_260,
      O => NlwBufferSignal_count_4_OBUF_I
    );
  NlwBufferBlock_count_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_5_latch_q_243,
      O => NlwBufferSignal_count_5_OBUF_I
    );
  NlwBufferBlock_count_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_6_latch_q_242,
      O => NlwBufferSignal_count_6_OBUF_I
    );
  NlwBufferBlock_count_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_7_latch_q_257,
      O => NlwBufferSignal_count_7_OBUF_I
    );
  NlwBufferBlock_count_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_8_latch_q_258,
      O => NlwBufferSignal_count_8_OBUF_I
    );
  NlwBufferBlock_count_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => gen1_9_latch_q_252,
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
  NlwBufferBlock_gen1_10_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_10_latch_q_CLK
    );
  NlwBufferBlock_gen1_11_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_11_latch_q_CLK
    );
  NlwBufferBlock_gen1_6_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_6_latch_q_CLK
    );
  NlwBufferBlock_gen1_5_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_5_latch_q_CLK
    );
  NlwBufferBlock_gen1_12_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_12_latch_q_CLK
    );
  NlwBufferBlock_gen1_14_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_14_latch_q_CLK
    );
  NlwBufferBlock_gen1_15_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_15_latch_q_CLK
    );
  NlwBufferBlock_gen1_3_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_3_latch_q_CLK
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
  NlwBufferBlock_gen1_7_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_7_latch_q_CLK
    );
  NlwBufferBlock_gen1_8_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_8_latch_q_CLK
    );
  NlwBufferBlock_gen1_13_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_gen1_13_latch_q_CLK
    );
  NlwBlock_counter_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_counter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

